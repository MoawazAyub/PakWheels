using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Threading;


namespace Pakwheelers.Site_Info
{
    public partial class SiteFeedBack : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            string myCS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection mycon = new SqlConnection(myCS))
            {
                using (SqlCommand mycmd = new SqlCommand("Site_FeedBack", mycon))
                {

                    if (SiteFeedBack_UserName.Text != "" && Feedback_comment.Text != "")
                    {
                        mycmd.CommandType = System.Data.CommandType.StoredProcedure;
                        mycmd.Parameters.AddWithValue("@username", SiteFeedBack_UserName.Text);
                        mycmd.Parameters.AddWithValue("@feedback", Feedback_comment.Text);

                        mycmd.Parameters.Add("@result", SqlDbType.VarChar, 50);
                        mycmd.Parameters["@result"].Direction = ParameterDirection.Output;


                        mycon.Open();
                        mycmd.ExecuteNonQuery();
                        mycon.Close();

                        feedback_status.Text = mycmd.Parameters["@result"].Value.ToString();

                        if (feedback_status.Text == "0")
                        {
                            feedback_status.Text = "Feedback Not Submitted , Check Username";
                        }
                        else
                        {
                            //feedback_status.Visible = true;
                            feedback_status.Text = "Feedback Submitted";
                            ScriptManager.RegisterStartupScript(this, typeof(Page), "myscript", "setTimeout(function(){location.href='/Home.aspx';},5000);", true);
                        }
                    }
                    else
                    {
                        feedback_status.Text = "User Name , Feedback not provided ";
                    }

                }

            }

        }
        }
    }