using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationFinal_LJY
{
    public partial class background : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["username"] != null)
            {
                Label2.Text = "亲爱的秦迷" + Session["username"].ToString() + "~现在你想做些什么~？";
            }
            
        }

    }
}