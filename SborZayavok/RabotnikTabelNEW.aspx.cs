using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SborZayavok
{
    public partial class RabotnikTabelNEW : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            RabotnikTabelNEWDataContext tabelnew2 = new RabotnikTabelNEWDataContext();
            rabotniki2 tab7 = new rabotniki2();
            spisokzayavok2 tab8 = new spisokzayavok2();

            tab7.ФИО = TextBox1.Text;
            tab7.ТабельныйНомер = TextBox2.Text;
            tab7.НомерТелефона = TextBox3.Text;
            tab7.Цех = TextBox4.Text;

            tabelnew2.rabotniki2.InsertOnSubmit(tab7);
            tabelnew2.SubmitChanges();

            tab8.ДатаЗаявки = DateTime.Now;
            tab8.ФИО = TextBox1.Text;
            tab8.ТабельныйНомер = TextBox2.Text;
            tab8.НомерТелефона = TextBox3.Text;
            tab8.ОписаниеЗаявки = TextBox5.Text;
            tab8.ТипЗаявки = DropDownList1.SelectedValue.ToString();
            tab8.НоваяЗаявка = "НОВАЯ ЗАЯВКА";

            tabelnew2.spisokzayavok2.InsertOnSubmit(tab8);
            tabelnew2.SubmitChanges();

            var tabel= tab8.ТабельныйНомер = TextBox2.Text;

            Response.Redirect($"/rabonikNEW2.aspx?tabel={tabel}");


        }
    }
}