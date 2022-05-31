using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SborZayavok
{
    public partial class master : System.Web.UI.Page
    {
        String user1 = "master1";
        String pass1 = "111";
        String user2 = "master2";
        String pass2 = "222";
        String user3 = "master3";
        String pass3 = "333";
        String user4 = "master4";
        String pass4 = "444";
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            if (Login1.UserName == user1)
            {
                if (Login1.Password == pass1)
                {
                    if (user1 == "master1")
                    {
                        Response.Redirect("/masterTab1.aspx");
                    }
                   
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

            if (Login1.UserName == user2)
            {
                if (Login1.Password == pass2)
                {
                    if (user2 == "master2")
                    {
                        Response.Redirect("/master2Tab1.aspx");
                    }

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
            if (Login1.UserName == user3)
            {
                if (Login1.Password == pass3)
                {
                    if (user3 == "master3")
                    {
                        Response.Redirect("/master3Tab1.aspx");
                    }

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
            if (Login1.UserName == user4)
            {
                if (Login1.Password == pass4)
                {
                    if (user4 == "master4")
                    {
                        Response.Redirect("/master4Tab1.aspx");
                    }

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