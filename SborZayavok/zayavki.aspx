<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zayavki.aspx.cs" Inherits="SborZayavok.zayavki" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 980px">
    <form id="form1" runat="server">
        <div style="height: 780px; background-color: #F8F8FF;">
            <br />
            <h1><center><p style="color:#D3D3D3"><p style="border: 3px solid #A9A9A9; background-color: #DCDCDC; padding: 10px;">
                СБОР И ОБРАБОТКА ЗАЯВОК НА ТЕХНИЧЕСКОЕ ОБСЛУЖИВАНИЕ</p></center></h1><br />

                
            <h1><center><p style="color:#696969">выберите вашу должность</p></center></h1><br />
            

            
            <center>
            <br />
            <br />               
            &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Сотрудник" Width="130px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Администратор" Width="130px"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Мастер" Width="130px" />
                    
            </center>
            <br />
            <br />
            
        </div>
    </form>
</body>
</html>
