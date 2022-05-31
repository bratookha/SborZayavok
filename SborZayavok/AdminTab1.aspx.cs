using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SborZayavok
{
    public partial class AdminTab1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //AdminDB1DataContext dbadmin = new AdminDB1DataContext();
            AdminDBDataContext dbadmin = new AdminDBDataContext();


            BazaMasterov tab2 = new BazaMasterov();
            spisokzayavok11 tab3 = new spisokzayavok11();

             //var rabotnik = (from R in db.spisokzayavok select R);
            //var rabotnik = (from R in db.spisokzayavok where R.tabel == TextBox2.Text select R);



            //db.spisokzayavok.InsertOnSubmit(tab2);
            // db.SubmitChanges();

             //Response.Redirect("/admintab1.aspx");
        }

        //кнопка показать новые заявки
        protected void Button1_Click(object sender, EventArgs e)
        {
            //Label3.Text = "Таблица новых заявок";
            Response.Redirect("/admintabnew.aspx");
        }
        //кнопка показать все заявки
        protected void Button2_Click(object sender, EventArgs e)
        {
           // Label4.Text = "Таблица всех заявок";
            Response.Redirect("/admintabvse.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("/zayavki.aspx");
        }
    }
}