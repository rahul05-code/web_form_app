<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="clientside.aspx.cs" Inherits="web_form_app.clientside" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            1) ViewState Example<br />
            <asp:TextBox ID="viewtext" runat="server" OnTextChanged="TextBox1_TextChanged" Height="22px"></asp:TextBox>
            <br />
            <asp:Label ID="viewstatelable" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            2) HiddenField Example<br />
            <asp:HiddenField ID="HiddenField1" runat="server" Visible="False" />
            <asp:Button ID="hiddenbtn" runat="server" OnClick="Button1_Click" Text="Store Hidden Value" />
            <br />
            <asp:Label ID="hiddenlable" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            3) Cookies Example<br />
            <asp:TextBox ID="cookietext" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="createbtn" runat="server" Text="Create cookie" OnClick="createbtn_Click" style="height: 26px" />
&nbsp;
            <asp:Button ID="readbtn" runat="server" Text="Read Cookie" OnClick="readbtn_Click" />
            <br />
            <asp:Label ID="cookieslable" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            4) Query String Example<br />
            <asp:TextBox ID="stringtext" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="querybtn" runat="server" Text="Pass Through URL" OnClick="querybtn_Click" />
            <br />
            <asp:Label ID="querystringlable" runat="server"></asp:Label>

        </div>
    </form>
</body>
</html>
