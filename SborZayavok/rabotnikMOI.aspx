<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rabotnikMOI.aspx.cs" Inherits="SborZayavok.rabotnikMOI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 765px; background-color: #F8F8FF;">
            <asp:Label ID="Label1" runat="server" Text="Страница работника - Все мои заявки"></asp:Label>
            <br />
            <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:test1ConnectionString1 %>" SelectCommand="SELECT * FROM [spisokzayavok1] WHERE ([ТабельныйНомер] = @ТабельныйНомер)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ТабельныйНомер" QueryStringField="tabel" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="НомерЗаявки,ДатаЗаявки,ФИО,ТабельныйНомер,НомерТелефона,ТипЗаявки,ОписаниеЗаявки" DataSourceID="SqlDataSource1" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="НоваяЗаявка" HeaderText="НоваяЗаявка" SortExpression="НоваяЗаявка" />
                <asp:BoundField DataField="НомерЗаявки" HeaderText="НомерЗаявки" SortExpression="НомерЗаявки" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="ДатаЗаявки" HeaderText="ДатаЗаявки" SortExpression="ДатаЗаявки" ReadOnly="True" />
                <asp:BoundField DataField="ФИО" HeaderText="ФИО" SortExpression="ФИО" ReadOnly="True" />
                <asp:BoundField DataField="ТабельныйНомер" HeaderText="ТабельныйНомер" SortExpression="ТабельныйНомер" ReadOnly="True" />
                <asp:BoundField DataField="НомерТелефона" HeaderText="НомерТелефона" SortExpression="НомерТелефона" ReadOnly="True" />
                <asp:BoundField DataField="ТипЗаявки" HeaderText="ТипЗаявки" SortExpression="ТипЗаявки" ReadOnly="True" />
                <asp:BoundField DataField="ОписаниеЗаявки" HeaderText="ОписаниеЗаявки" SortExpression="ОписаниеЗаявки" ReadOnly="True" />
                <asp:BoundField DataField="СтатусЗаявки" HeaderText="СтатусЗаявки" SortExpression="СтатусЗаявки" />
                <asp:BoundField DataField="ОписаниеСтатуса" HeaderText="ОписаниеСтатуса" SortExpression="ОписаниеСтатуса" />
                <asp:BoundField DataField="Мастер" HeaderText="Мастер" SortExpression="Мастер" />
            </Columns>
        </asp:GridView>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
                <input type="button" onclick="history.back();" value="Назад" style="width: 87px"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="На главную страницу" Width="154px" />
        </div>
    </form>
</body>
</html>
