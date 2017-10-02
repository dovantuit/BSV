using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanSacVietPro.Page
{
    public partial class PageSon : System.Web.UI.Page
    {
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "DatTour")
            {
                Response.Redirect("DatTour.aspx?id=" + e.CommandArgument.ToString());
            }
        }
    }
}