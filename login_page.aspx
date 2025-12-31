<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login_page.aspx.cs" Inherits="web_form_app.login_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Login User</h2>
            <div>
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="lblemail" runat="server" Text="Email: "></asp:Label>

                        </td>
                        <td>
                            <asp:TextBox ID="emailtxt" runat="server" Height="16px" Style="margin-left: 33px; margin-top: 4px" Width="152px"></asp:TextBox>
                        </td>

                    </tr>


                    <tr>
                        <td>
                            <asp:Label ID="lblpass" runat="server" Text="Password: " ></asp:Label>

                        </td>
                        <td>
                            <asp:TextBox ID="passtxt" runat="server" Height="16px" Style="margin-left: 33px; margin-top: 4px" Width="152px"></asp:TextBox>
                        </td>

                    </tr>
                    <tr>
                        <td colspan="2">

                            <asp:Button ID="loginbtn" runat="server" Text="Login" OnClick="loginbtn_Click" />

                        </td>
                    </tr>

                </table>


            </div>
        </div>
    </form>
</body>
</html>
