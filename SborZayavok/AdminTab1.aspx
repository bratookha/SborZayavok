<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminTab1.aspx.cs" Inherits="SborZayavok.AdminTab1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 735px; background-color: #F8F8FF;">
            <asp:Label ID="Label1" runat="server" Text="Страница Админитратора - Распределение заявок по мастерам"></asp:Label>
            &nbsp;
            <center>
                <br />
            <br />
            
            <asp:Label ID="Label2" runat="server" Text="База мастеров"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" style="margin-top: 0px">
                <Columns>
                    <asp:BoundField DataField="master" HeaderText="Мастер" SortExpression="master" />
                    <asp:BoundField DataField="rabota" HeaderText="Выполняемая работа" SortExpression="rabota" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:test1ConnectionString1 %>" SelectCommand="SELECT * FROM [BazaMasterov]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Показать НОВЫЕ заявки" Font-Bold="True" Font-Italic="True" ForeColor="#000099" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Показать ВСЕ заявки" Width="186px" Font-Bold="True" Font-Italic="True" ForeColor="#000099" />
        &nbsp;<br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
            <br />
        </div>
    </form>
</body>
</html>
