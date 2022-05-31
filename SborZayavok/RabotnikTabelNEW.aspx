<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RabotnikTabelNEW.aspx.cs" Inherits="SborZayavok.RabotnikTabelNEW" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: #F8F8FF; height: 1565px;">
            Страница работника - Новая заявка<br />
            <br />
            <asp:Label ID="Label11" runat="server" ForeColor="Red" Text="Табельный номер не найден!"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Для создания НОВОЙ заявки введите ПОЛНЫЕ данные:"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="ФИО"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="586px"></asp:TextBox>
            <br />
            <asp:Label ID="Label8" runat="server" Text="Табельный номер"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Width="580px"></asp:TextBox>
            <br />
            <asp:Label ID="Label9" runat="server" Text="Номер телефона"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Width="587px"></asp:TextBox>
            <br />
            <asp:Label ID="Label10" runat="server" Text="ЦЕХ"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" Width="582px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Выберите тип заявки: "></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" Width="587px" Font-Bold="True">
                <asp:ListItem>Ремонт оргтехники</asp:ListItem>
                <asp:ListItem>Подключение оргтехники</asp:ListItem>
                <asp:ListItem>Установка ПО</asp:ListItem>
                <asp:ListItem>Подключение к сети</asp:ListItem>
                <asp:ListItem>Предоставление прав доступа</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Описание заявки"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server" Height="97px" style="margin-right: 348px" Width="577px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#000099" OnClick="Button1_Click" Text="Сохранить заявку" />
        </div>
    </form>
</body>
</html>
