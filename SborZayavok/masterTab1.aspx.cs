using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SborZayavok
{
    public partial class masterTab1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //кнопка новые заявки для Мастера №1
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Master1TabNEW.aspx");
        }

        //кнопка ВСЕ заявки для Мастера №1
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Master1TabVSE.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("/zayavki.aspx");
        }
    }
}