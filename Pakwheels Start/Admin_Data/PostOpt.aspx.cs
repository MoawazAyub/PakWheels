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
    public partial class PostOpt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string myCS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection mycon = new SqlConnection(myCS))
            {
                using (SqlCommand command = mycon.CreateCommand())
                {
                    command.CommandText = "select count(*) from Post_Used_Cars";

                    mycon.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        int myval = 0;
                        // process result
                        reader.Read();
                        myval = reader.GetInt32(0); // get first column from view/table
                        T_Post.Text = myval.ToString();
                    }

                }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("~/Home.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin_Data/Admin_Options_Page.aspx");
        }
    }
}