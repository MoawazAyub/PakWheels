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
    public partial class AccountsOpt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string myCS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection mycon = new SqlConnection(myCS))
            {
                using (SqlCommand command = mycon.CreateCommand())
                {
                    command.CommandText = "select count(*) from UserAccuont";

                    mycon.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        int myval = 0; 
                            // process result
                            reader.Read();
                            myval = reader.GetInt32(0); // get first column from view/table
                            T_Accounts.Text = myval.ToString();
                    }
                   
                }

                }

            }
            protected void home_back_Click(object sender, EventArgs e)
            {
                Response.Redirect("~/Home.aspx");
            }

            protected void back_account_Click(object sender, EventArgs e)
            {
                Response.Redirect("~/Admin_Data/Admin_Options_Page.aspx");
            }
        }
    }