using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SborZayavok
{
    public partial class Admin : System.Web.UI.Page
    {
        String user = "admin";
        String pass = "000";

        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            usersDataContext dbusers = new usersDataContext();
/*
            try
            {

                var userlogin = (from u in dbusers.user
                                 where u.login == Login1.UserName
                                 select u).ToArray();
                var userpass = (from u in dbusers.user
                                where u.login == Login1.Password
                                select u).ToArray();

                if (Login1.UserName == userlogin[0].login)
                {
                    if (Login1.Password == userpass[0].pass)
                    {
                        Response.Redirect("/admintab1.aspx");
                    }
                    else
                    {
                        //Label2.Text = "Ошибка авторизации!";
                    }
                }
                else
                 {
                    Label2.Text = "Ошибка авторизации!";
                 }
            }
             catch (SystemException y) { Label2.Text = "Ошибка авторизации!"; }

*/

            
               if (Login1.UserName == user)
               {
                   if (Login1.Password == pass)
                   {
                       Response.Redirect("/admintab1.aspx");
                   }
                   else
                   {
                       Label2.Text = "Ошибка авторизации!";
                   }
               }
               else
               {
                   Label2.Text = "Ошибка авторизации!";
               }
            
        }
    }
}