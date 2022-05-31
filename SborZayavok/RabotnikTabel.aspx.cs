using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SborZayavok
{
    public partial class RabotnikTabel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            RabotnikTabelNEWDataContext tabelnew = new RabotnikTabelNEWDataContext();
            spisokzayavok2 tab5 = new spisokzayavok2();
            rabotniki2 tab6 = new rabotniki2();

            //var tabelnum = HttpContext.Current.Request["tabel"]?.ToString();
            var tabelnum = TextBox1.Text;
           
             var FIOTelefon = (from u in tabelnew.rabotniki2 where u.ТабельныйНомер == tabelnum select u).ToArray();
             if (FIOTelefon.Length==0)
                 { Response.Redirect("/RabotnikTabelNEW.aspx"); }
           
             else
             {
              Response.Redirect($"/RabotnikZayavki.aspx?tabel={TextBox1.Text}");
              }


           // var tabelnew3 = FIOTelefon[0].ТабельныйНомер;
           // var Telefon=FIOTelefon[0].НомерТелефона;
           // var FIO = FIOTelefon[0].ФИО;

            //if (FIOTelefon="")

          // if (FIOTelefon[0].ТабельныйНомер =)
          //if (tabelnew3=="0")

         //   {
          ////      Response.Redirect($"/RabotnikZayavki.aspx?tabel={TextBox1.Text}");
          ////  }
           // else
           // {
                
            //    Response.Redirect("/RabotnikTabelNEW.aspx");
          //  }
        }
    }
}