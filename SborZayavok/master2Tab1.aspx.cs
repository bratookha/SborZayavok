using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SborZayavok
{
    public partial class master2Tab1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //кнопка новые заявки для Мастера №2
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Master2TabNEW.aspx");
        }
        //кнопка ВСЕ заявки для Мастера №2
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Master2TabVSE.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("/zayavki.aspx");
        }
    }
}