using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationFinal_LJY
{
    public partial class Roles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected string[] CourtesyTitle
        {
            get { return new string[] { "墨家", "流沙", "道家", "纵横家", "儒家", "主角" }; }
        }

    }  
}