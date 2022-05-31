<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RabonikNEW2.aspx.cs" Inherits="SborZayavok.RabonikNEW2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 823px; background-color: #F8F8FF;">
            <asp:Label ID="Label1" runat="server" Text="Страница работника - Новая заявка"></asp:Label>
            <br />
            <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#339933" Text="Новая заявка сохранена."></asp:Label>
            <br />
            <br />
            Таблица новых заявок<br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="НомерЗаявки,ДатаЗаявки,ФИО,ТабельныйНомер,НомерТелефона,ТипЗаявки,ОписаниеЗаявки" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="НоваяЗаявка" HeaderText="НоваяЗаявка" SortExpression="НоваяЗаявка" />
                <asp:BoundField DataField="НомерЗаявки" HeaderText="НомерЗаявки" InsertVisible="False" ReadOnly="True" SortExpression="НомерЗаявки" />
                <asp:BoundField DataField="ДатаЗаявки" HeaderText="ДатаЗаявки" ReadOnly="True" SortExpression="ДатаЗаявки" />
                <asp:BoundField DataField="ФИО" HeaderText="ФИО" ReadOnly="True" SortExpression="ФИО" />
                <asp:BoundField DataField="ТабельныйНомер" HeaderText="ТабельныйНомер" ReadOnly="True" SortExpression="ТабельныйНомер" />
                <asp:BoundField DataField="НомерТелефона" HeaderText="НомерТелефона" ReadOnly="True" SortExpression="НомерТелефона" />
                <asp:BoundField DataField="ТипЗаявки" HeaderText="ТипЗаявки" ReadOnly="True" SortExpression="ТипЗаявки" />
                <asp:BoundField DataField="ОписаниеЗаявки" HeaderText="ОписаниеЗаявки" ReadOnly="True" SortExpression="ОписаниеЗаявки" />
                <asp:BoundField DataField="СтатусЗаявки" HeaderText="СтатусЗаявки" SortExpression="СтатусЗаявки" />
                <asp:BoundField DataField="ОписаниеСтатуса" HeaderText="ОписаниеСтатуса" SortExpression="ОписаниеСтатуса" />
                <asp:BoundField DataField="Мастер" HeaderText="Мастер" SortExpression="Мастер" />
            </Columns>
        </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:test1ConnectionString1 %>" SelectCommand="SELECT * FROM [spisokzayavok1] WHERE (([ТабельныйНомер] = @ТабельныйНомер) AND ([НоваяЗаявка] = @НоваяЗаявка))">
                <SelectParameters>
                    <asp:QueryStringParameter Name="ТабельныйНомер" QueryStringField="tabel" Type="String" />
                    <asp:Parameter DefaultValue="НОВАЯ ЗАЯВКА" Name="НоваяЗаявка" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <br />
                <input type="button" onclick="history.back();" value="Назад" style="width: 87px"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="На главную страницу" Width="154px" />
        </div>
        <br />
        <br />
        <br />
    </form>
</body>
</html>
