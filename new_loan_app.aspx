<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="new_loan_app.aspx.cs" Inherits="web_form_app.new_loan_app" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>New Loan Application</h2>
            <p>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </p>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lno" runat="server" Text="Saving Account No.: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="lnotxt" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="sanum" runat="server" Text="Saving Account No.: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="sanumtxt" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="ahn" runat="server" Text="Account Holder Name: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ahntxt" runat="server"></asp:TextBox>
                    </td>
                </tr>



                <tr>
                    <td>
                        <asp:Label ID="lc" runat="server" Text="Loan Category: "></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="lcdd" runat="server">
                            <asp:ListItem>Home Loan</asp:ListItem>
                            <asp:ListItem>Student Loan</asp:ListItem>
                            <asp:ListItem>Personal Loan</asp:ListItem>
                            <asp:ListItem>Business Loan</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="lt" runat="server" Text="Loan Type: "></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ltdd" runat="server"></asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="lid" runat="server" Text="Loan Issue Date: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="lidtxt" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="lm" runat="server" Text="Loan Amount: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="lmtxt" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="ca" runat="server" Text="Current Address: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="catxt" TextMode="MultiLine" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="lr" runat="server" Text="Loan Remarks: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="lrtxt" TextMode="MultiLine" runat="server" OnTextChanged="lrtxt_TextChanged"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
