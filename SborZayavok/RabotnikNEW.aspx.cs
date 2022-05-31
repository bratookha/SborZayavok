using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SborZayavok
{
    public partial class RabotnikNEW : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //кнопка сохранить новую заявку
        protected void Button1_Click(object sender, EventArgs e)
        {
            //zayavkirabotnikDataContext dbrabotnik = new zayavkirabotnikDataContext();
            zayavkirabotnikDataContext dbrabotnik = new zayavkirabotnikDataContext();

            spisokzayavok12 tab1 = new spisokzayavok12();
            rabotniki1 tab4 = new rabotniki1();

            var tabelnum = HttpContext.Current.Request["tabel"]?.ToString();
           
            var FIOTelefon = (from u in dbrabotnik.rabotniki1 where u.ТабельныйНомер== tabelnum select u).ToArray();

            
            // var FIO = (from R in dbrabotnik.rabotniki1 select R);
            //var Telefon = (from R in dbrabotnik.rabotniki1 where R.ТабельныйНомер == tabelnum select Номер);
            //var Telefon = (from R in dbrabotnik.rabotniki1 where R.ТабельныйНомер == TextBox2.Text select R);

            tab1.ДатаЗаявки = DateTime.Now;
            // tab1.ФИО = TextBox1.Text;
            tab1.ФИО = FIOTelefon[0].ФИО;

            // tab1.ТабельныйНомер = HttpContext.Current.Request["tabel"]?.ToString();
            tab1.ТабельныйНомер = tabelnum;
             // tab1.НомерТелефона = TextBox2.Text;
             tab1.НомерТелефона = FIOTelefon[0].НомерТелефона;

            tab1.ОписаниеЗаявки = TextBox3.Text;
            tab1.ТипЗаявки = DropDownList1.SelectedValue.ToString();
            tab1.НоваяЗаявка = "НОВАЯ ЗАЯВКА";

            dbrabotnik.spisokzayavok12.InsertOnSubmit(tab1);
            dbrabotnik.SubmitChanges();

            string tabel = HttpContext.Current.Request["tabel"]?.ToString();
            Response.Redirect($"/rabonikNEW2.aspx?tabel={tabel}");
            // Response.Redirect("/rabonikNEW2.aspx?");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("/zayavki.aspx");
        }
    }
}