<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RabotnikNEW.aspx.cs" Inherits="SborZayavok.RabotnikNEW" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 1519px; background-color: #F8F8FF;">
            <asp:Label ID="Label1" runat="server" Text="Страница работника - Новая заявка"></asp:Label>
            <br />
            <br />
            Данные работника:<br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ТабельныйНомер,ФИО" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ТабельныйНомер" HeaderText="ТабельныйНомер" ReadOnly="True" SortExpression="ТабельныйНомер" />
                    <asp:BoundField DataField="ФИО" HeaderText="ФИО" ReadOnly="True" SortExpression="ФИО" />
                    <asp:BoundField DataField="НомерТелефона" HeaderText="НомерТелефона" SortExpression="НомерТелефона" />
                    <asp:BoundField DataField="Цех" HeaderText="Цех" SortExpression="Цех" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:test1ConnectionString1 %>" SelectCommand="SELECT * FROM [rabotniki] WHERE ([ТабельныйНомер] = @ТабельныйНомер)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="ТабельныйНомер" QueryStringField="tabel" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Для создания НОВОЙ заявки введите данные:"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Label ID="Label4" runat="server" Text="Выберите тип заявки: "></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" Width="223px" Font-Bold="True">
                <asp:ListItem>Ремонт оргтехники</asp:ListItem>
                <asp:ListItem>Подключение оргтехники</asp:ListItem>
                <asp:ListItem>Установка ПО</asp:ListItem>
                <asp:ListItem>Подключение к сети</asp:ListItem>
                <asp:ListItem>Предоставление прав доступа</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Описание заявки"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Height="73px" Width="575px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#000099" OnClick="Button1_Click" Text="Сохранить заявку" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
                <input type="button" onclick="history.back();" value="Назад" style="width: 87px"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="На главную страницу" Width="158px" />
        </div>
    </form>
</body>
</html>
