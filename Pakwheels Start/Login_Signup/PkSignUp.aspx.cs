using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace Pakwheelers.Login_Signup
{
    public partial class PkSignUp : System.Web.UI.Page
    {
        void validateModuleDetails()
        {
            bool validData = true;
            foreach (Control control in this.Controls)
            {
                if (control is TextBox)
                {
                    TextBox textbox = control as TextBox;
                    validData &= !string.IsNullOrWhiteSpace(textbox.Text);
                }
            }

            btnSubmit.Enabled = validData;
        }

        protected void Submit(object sender, EventArgs e)
        {
            string myCS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection mycon = new SqlConnection(myCS))
            {
                using (SqlCommand mycmd = new SqlCommand("UserSignup", mycon))
                {

                    mycmd.CommandType = System.Data.CommandType.StoredProcedure;
                    mycmd.Parameters.AddWithValue("@User_name", Name_up.Text);
                    mycmd.Parameters.AddWithValue("@User_email", Email_up.Text);
                    mycmd.Parameters.AddWithValue("@User_pass", Password_up.Text);
                    mycmd.Parameters.AddWithValue("@User_contact", ContactNumber_up.Text);
                    mycmd.Parameters.AddWithValue("@User_city", CurrCity_up.Text);

                    mycon.Open();
                    mycmd.ExecuteNonQuery();
                    mycon.Close();

                }

            }
        }
    }
}