using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace Pakwheelers.Admin_Data
{
    public partial class Admin_Login_Page : System.Web.UI.Page
    {
        protected void Submit(object sender, EventArgs e)
        {
            string myCS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection mycon = new SqlConnection(myCS))
            {
                using (SqlCommand mycmd = new SqlCommand("AdminLogin", mycon))
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

                        
                        L_admin_login.Text = mycmd.Parameters["@result"].Value.ToString();

                        if (L_admin_login.Text == "0")
                        {
                            L_admin_login.Text = "Login Unsuccessfull , Try Again";
                        }
                        else 
                        {
                            Response.Redirect("Admin_Options_Page.aspx");
                        }

                    }

                }

            }
        }
    }
}