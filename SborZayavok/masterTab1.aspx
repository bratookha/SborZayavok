<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="masterTab1.aspx.cs" Inherits="SborZayavok.masterTab1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 733px; background-color: #F8F8FF;">
            <asp:Label ID="Label1" runat="server" Text="Страница Мастера №1 -Обработка заявок"></asp:Label>
            <center>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Показать НОВЫЕ заявки для Мастера №1" Width="304px" Font-Bold="True" Font-Italic="True" ForeColor="#000099" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Показать ВСЕ заявки для Мастера№1" Width="287px" Font-Bold="True" Font-Italic="True" ForeColor="#000099" OnClick="Button2_Click" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
                </center>
                <input type="button" onclick="history.back();" value="Назад" style="width: 87px"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="На главную страницу" Width="154px" />
        </div>
    </form>
</body>
</html>
