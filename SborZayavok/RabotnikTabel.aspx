<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RabotnikTabel.aspx.cs" Inherits="SborZayavok.RabotnikTabel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 886px; background-color: #F8F8FF;">
            <asp:Label ID="Label1" runat="server" Text="Страница работника - Ввод табельного номера"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Введите табельный номер"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="126px"></asp:TextBox>
&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Вход" Width="64px" Font-Bold="True" Font-Italic="True" ForeColor="#000099" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ТабельныйНомер,ФИО" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="ТабельныйНомер" HeaderText="ТабельныйНомер" ReadOnly="True" SortExpression="ТабельныйНомер" />
                    <asp:BoundField DataField="ФИО" HeaderText="ФИО" ReadOnly="True" SortExpression="ФИО" />
                    <asp:BoundField DataField="НомерТелефона" HeaderText="НомерТелефона" SortExpression="НомерТелефона" />
                    <asp:BoundField DataField="Цех" HeaderText="Цех" SortExpression="Цех" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:test1ConnectionString1 %>" SelectCommand="SELECT * FROM [rabotniki] WHERE ([ТабельныйНомер] = @ТабельныйНомер)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="ТабельныйНомер" QueryStringField="tabel" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
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
                <input type="button" onclick="history.back();" value="Назад" style="width: 87px"/></div>
    </form>
</body>
</html>
