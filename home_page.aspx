<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home_page.aspx.cs" Inherits="web_form_app.home_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblLoggedUser" runat="server" Text=" "></asp:Label>
            <asp:Button ID="btnlogout" runat="server" Text="LogOut" OnClick="btnlogout_Click" style="margin-left: 127px" Width="135px" />
            <h1>Home page</h1>
        </div>
    </form>
</body>
</html>
