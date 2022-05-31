<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="master.aspx.cs" Inherits="SborZayavok.master" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 302px">
            <asp:Label ID="Label1" runat="server" Text="Авторизация Мастера"></asp:Label>
            <center>
            <br />
            <br />
            <asp:Login ID="Login1" runat="server" BackColor="#E3EAEB" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" OnAuthenticate="Login1_Authenticate" TextLayout="TextOnTop" Width="345px">
                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                <LoginButtonStyle BackColor="White" BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#1C5E55" />
                <TextBoxStyle Font-Size="0.8em" />
                <TitleTextStyle BackColor="#1C5E55" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
            </asp:Login>
            <br />
            </center>
            <asp:Label ID="Label2" runat="server" ForeColor="#CC0000"></asp:Label>
        </div>
    </form>
</body>
</html>
