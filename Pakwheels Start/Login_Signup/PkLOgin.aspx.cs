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
    public partial class PkLOgin : System.Web.UI.Page
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
            btnSubmit1.Enabled = validData;
        }

        protected void Submit(object sender, EventArgs e)
        {
            string myCS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection mycon = new SqlConnection(myCS))
            {
                using (SqlCommand mycmd = new SqlCommand("UserLogin", mycon))
                {
                    if (UserName.Text != "" && Password.Text != "")
                    {
                        mycmd.CommandType = System.Data.CommandType.StoredProcedure;
                        mycmd.Parameters.AddWithValue("@username", UserName.Text);
                        mycmd.Parameters.AddWithValue("@pass", Password.Text);

                        mycmd.Parameters.Add("@result", SqlDbType.VarChar, 50);
                        mycmd.Parameters["@result"].Direction = ParameterDirection.Output;


                        mycon.Open();
                        mycmd.ExecuteNonQuery();
                        mycon.Close();

                        Label_Message_login.Text = mycmd.Parameters["@result"].Value.ToString();

                        if (Label_Message_login.Text == "0")
                        {
                            Label_Message_login.Text = "Login Unsuccessfull , Try Again";
                        }
                        else
                        {
                            Response.Redirect("~/Home.aspx");
                        }

                    }

                }

            }

        }
    }
}