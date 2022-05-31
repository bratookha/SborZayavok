using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SborZayavok
{
    public partial class rabotnik : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

           // zayavkirabotnikDataContext dbrabotnik = new zayavkirabotnikDataContext();



           // spisokzayavok1 tab1 = new spisokzayavok1();


            //var rabotnik = (from R in db.spisokzayavok select R);
           //var rabotnik = (from R in db.spisokzayavok where R.tabel == TextBox2.Text select R);

           // tab1.datazayavki = DateTime.Now;
          //  tab1.fio = TextBox1.Text;
           // tab1.tabel = TextBox2.Text;
           // tab1.telefon = TextBox3.Text;
            //tab1.opisaniezayavki = TextBox4.Text;
            //tab1.tipzayavki = DropDownList1.SelectedValue.ToString();
            //tab1.newzayavka = "НОВАЯ ЗАЯВКА";



           // dbrabotnik.spisokzayavok1.InsertOnSubmit(tab1);
            // dbrabotnik.SubmitChanges();



            //Response.Redirect("/rabotnik.aspx");
            Response.Redirect($"/rabotnik.aspx?tabel={TextBox2.Text}");
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string tabel = HttpContext.Current.Request["tabel"]?.ToString();
            if (TextBox2.Text.Length == 0)
                Response.Redirect($"/rabotnikmoi.aspx?tabel={tabel}");
            else
                Response.Redirect($"/rabotnikmoi.aspx?tabel={TextBox2.Text}");
        }

        //protected void Button2_Click(object sender, EventArgs e)
        // {
        //GridView1.Visible = true;
        //Label7.Text = "Ваша заявка сохранена.";
        // }
    }
}