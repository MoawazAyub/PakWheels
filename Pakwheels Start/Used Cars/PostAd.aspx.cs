using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pakwheelers.Used_Cars
{
    public partial class PostAd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PopulateInitialDropDownList();
        }

        private void PopulateInitialDropDownList()
        {

            DropDownList4.Items.Clear();
            ListItem liContinent = new ListItem("Select Car", "-1");
            DropDownList4.Items.Insert(0, liContinent);

        }

        protected void Submit_Post_Click(object sender, EventArgs e)
        {
          string a=  DropDownList1.SelectedValue;
        }
    }
}