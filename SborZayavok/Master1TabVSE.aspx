<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Master1TabVSE.aspx.cs" Inherits="SborZayavok.Master1TabVSE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: #F8F8FF; height: 786px;">
            <asp:Label ID="Label1" runat="server" Text="Страница Мастера №1 - ВСЕ заявки"></asp:Label>
            <br />
            <br />
            Таблица всех заявок<br />
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="НомерЗаявки,ДатаЗаявки,ФИО,ТабельныйНомер,НомерТелефона,ТипЗаявки,ОписаниеЗаявки" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="НоваяЗаявка" HeaderText="НоваяЗаявка" SortExpression="НоваяЗаявка" />
                    <asp:BoundField DataField="НомерЗаявки" HeaderText="НомерЗаявки" InsertVisible="False" ReadOnly="True" SortExpression="НомерЗаявки" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:test1ConnectionString1 %>" DeleteCommand="DELETE FROM [spisokzayavok1] WHERE [НомерЗаявки] = @НомерЗаявки AND [ДатаЗаявки] = @ДатаЗаявки AND [ФИО] = @ФИО AND [ТабельныйНомер] = @ТабельныйНомер AND [НомерТелефона] = @НомерТелефона AND [ТипЗаявки] = @ТипЗаявки AND [ОписаниеЗаявки] = @ОписаниеЗаявки" InsertCommand="INSERT INTO [spisokzayavok1] ([НоваяЗаявка], [ДатаЗаявки], [ФИО], [ТабельныйНомер], [НомерТелефона], [ТипЗаявки], [ОписаниеЗаявки], [СтатусЗаявки], [ОписаниеСтатуса], [Мастер]) VALUES (@НоваяЗаявка, @ДатаЗаявки, @ФИО, @ТабельныйНомер, @НомерТелефона, @ТипЗаявки, @ОписаниеЗаявки, @СтатусЗаявки, @ОписаниеСтатуса, @Мастер)" SelectCommand="SELECT * FROM [spisokzayavok1] WHERE ([Мастер] = @Мастер)" UpdateCommand="UPDATE [spisokzayavok1] SET [НоваяЗаявка] = @НоваяЗаявка, [СтатусЗаявки] = @СтатусЗаявки, [ОписаниеСтатуса] = @ОписаниеСтатуса, [Мастер] = @Мастер WHERE [НомерЗаявки] = @НомерЗаявки AND [ДатаЗаявки] = @ДатаЗаявки AND [ФИО] = @ФИО AND [ТабельныйНомер] = @ТабельныйНомер AND [НомерТелефона] = @НомерТелефона AND [ТипЗаявки] = @ТипЗаявки AND [ОписаниеЗаявки] = @ОписаниеЗаявки">
                <DeleteParameters>
                    <asp:Parameter Name="НомерЗаявки" Type="Int32" />
                    <asp:Parameter Name="ДатаЗаявки" Type="DateTime" />
                    <asp:Parameter Name="ФИО" Type="String" />
                    <asp:Parameter Name="ТабельныйНомер" Type="String" />
                    <asp:Parameter Name="НомерТелефона" Type="String" />
                    <asp:Parameter Name="ТипЗаявки" Type="String" />
                    <asp:Parameter Name="ОписаниеЗаявки" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="НоваяЗаявка" Type="String" />
                    <asp:Parameter Name="ДатаЗаявки" Type="DateTime" />
                    <asp:Parameter Name="ФИО" Type="String" />
                    <asp:Parameter Name="ТабельныйНомер" Type="String" />
                    <asp:Parameter Name="НомерТелефона" Type="String" />
                    <asp:Parameter Name="ТипЗаявки" Type="String" />
                    <asp:Parameter Name="ОписаниеЗаявки" Type="String" />
                    <asp:Parameter Name="СтатусЗаявки" Type="String" />
                    <asp:Parameter Name="ОписаниеСтатуса" Type="String" />
                    <asp:Parameter Name="Мастер" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="1" Name="Мастер" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="НоваяЗаявка" Type="String" />
                    <asp:Parameter Name="СтатусЗаявки" Type="String" />
                    <asp:Parameter Name="ОписаниеСтатуса" Type="String" />
                    <asp:Parameter Name="Мастер" Type="Int32" />
                    <asp:Parameter Name="НомерЗаявки" Type="Int32" />
                    <asp:Parameter Name="ДатаЗаявки" Type="DateTime" />
                    <asp:Parameter Name="ФИО" Type="String" />
                    <asp:Parameter Name="ТабельныйНомер" Type="String" />
                    <asp:Parameter Name="НомерТелефона" Type="String" />
                    <asp:Parameter Name="ТипЗаявки" Type="String" />
                    <asp:Parameter Name="ОписаниеЗаявки" Type="String" />
                </UpdateParameters>
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
                <input type="button" onclick="history.back();" value="Назад" style="width: 87px"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="На главную страницу" Width="154px" />
        </div>
    </form>
</body>
</html>
