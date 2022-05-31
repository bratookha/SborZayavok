<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rabotnik.aspx.cs" Inherits="SborZayavok.rabotnik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 766px">
            <asp:Label ID="Label1" runat="server" Text="Страница работника - Создание заявки"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" Text="Введите табельный номер:"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Width="132px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Показать мои заявки" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="numzayavki" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="numzayavki" HeaderText="numzayavki" InsertVisible="False" ReadOnly="True" SortExpression="numzayavki" />
                    <asp:BoundField DataField="datazayavki" HeaderText="datazayavki" SortExpression="datazayavki" />
                    <asp:BoundField DataField="fio" HeaderText="fio" SortExpression="fio" />
                    <asp:BoundField DataField="tabel" HeaderText="tabel" SortExpression="tabel" />
                    <asp:BoundField DataField="telefon" HeaderText="telefon" SortExpression="telefon" />
                    <asp:BoundField DataField="tipzayavki" HeaderText="tipzayavki" SortExpression="tipzayavki" />
                    <asp:BoundField DataField="opisaniezayavki" HeaderText="opisaniezayavki" SortExpression="opisaniezayavki" />
                    <asp:BoundField DataField="statuszayavki" HeaderText="statuszayavki" SortExpression="statuszayavki" />
                    <asp:BoundField DataField="opisaniestatusa" HeaderText="opisaniestatusa" SortExpression="opisaniestatusa" />
                    <asp:BoundField DataField="master" HeaderText="master" SortExpression="master" />
                    <asp:BoundField DataField="newzayavka" HeaderText="newzayavka" SortExpression="newzayavka" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:test1ConnectionString %>" SelectCommand="SELECT * FROM [spisokzayavok] WHERE ([tabel] = @tabel)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="tabel" QueryStringField="tabel" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            Для создание НОВОЙ ЗАЯВКИ введите данные:<br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="ФИО"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="369px"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;
            <br />
            <asp:Label ID="Label5" runat="server" Text="Номер телефона"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Width="364px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Выберите тип заявки"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="292px">
                <asp:ListItem>Ремонт оргтехники</asp:ListItem>
                <asp:ListItem>Подключение оргтехники</asp:ListItem>
                <asp:ListItem>Установка ПО</asp:ListItem>
                <asp:ListItem>Подключение к сети</asp:ListItem>
                <asp:ListItem>Предоставление прав доступа</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Опишите заявку&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" Height="43px" Width="708px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Сохранить заявку" Width="181px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
