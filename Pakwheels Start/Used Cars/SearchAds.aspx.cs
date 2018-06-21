using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace Pakwheelers.Used_Cars
{
    public partial class SearchAds : System.Web.UI.Page
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

        
        protected void search_click(object sender, EventArgs e)
        {

        }

        protected void PriceLowToHigh_Load(object sender, EventArgs e)
        {

        }

        protected void MilageHighToLow_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void PriceHighToLow_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void MilageLowToHigh_CheckedChanged(object sender, EventArgs e)
        {

        }

    }
}