using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SborZayavok
{
    public partial class RabotnikZayavki : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //zayavkirabotnikDataContext dbrabotnik = new zayavkirabotnikDataContext();

            //rabotniki1 tab4 = new rabotniki1();
        }

        //создать новую заявку
        protected void Button1_Click(object sender, EventArgs e)
        {
            string tabel = HttpContext.Current.Request["tabel"]?.ToString();
            Response.Redirect($"/rabotnikNEW.aspx?tabel={tabel}");
        }

        //показать все мои заявки
        protected void Button2_Click(object sender, EventArgs e)
        {
            string tabel = HttpContext.Current.Request["tabel"]?.ToString();
            Response.Redirect($"/rabotnikmoi.aspx?tabel={tabel}");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("/zayavki.aspx");
        }
    }
}