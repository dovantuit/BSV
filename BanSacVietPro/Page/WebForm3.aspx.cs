using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanSacVietPro.Page
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void DataList1_ItemCommand2(object source, DataListCommandEventArgs e)
        {
        if (e.CommandName == "See")
            {
                Response.Redirect("PageSon.aspx?id=" + e.CommandArgument.ToString());
            }
        }
    }
}