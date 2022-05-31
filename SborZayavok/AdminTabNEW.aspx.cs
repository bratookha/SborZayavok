using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SborZayavok
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // AdminDB1DataContext dbadmin = new AdminDB1DataContext();

            // BazaMasterov tab2 = new BazaMasterov();
            // spisokzayavok tab3 = new spisokzayavok();

            // dbadmin.spisokzayavok.InsertOnSubmit(tab3);
            // dbadmin.SubmitChanges();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("/zayavki.aspx");
        }
    }
}