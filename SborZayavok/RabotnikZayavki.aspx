<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RabotnikZayavki.aspx.cs" Inherits="SborZayavok.RabotnikZayavki" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
             
            <div style="height: 707px; background-color: #F8F8FF;">
            <asp:Label ID="Label1" runat="server" Text="Страница работника - Заявки"></asp:Label>
                <center>
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
                    
            &nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Показать все мои заявки" Font-Bold="True" Font-Italic="True" ForeColor="#000099" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Создать новую заявку" Font-Bold="True" Font-Italic="True" ForeColor="#000099" Width="227px" />
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
