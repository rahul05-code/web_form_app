<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="richcontrol.aspx.cs" Inherits="web_form_app.richcontrol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>1)require field validator</p>
            <asp:Label ID="name" runat="server" Text="NAME :"></asp:Label>
            <asp:TextBox ID="nameText" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="nameValidator" runat="server" ErrorMessage="Name must be 6 letter ??" ControlToValidate="nameText" ForeColor="Red"></asp:RequiredFieldValidator>

        </div>
        <div>
            <p>2)Range validator</p>
            <asp:Label ID="age" runat="server" Text="Age :"></asp:Label>
            <asp:TextBox ID="ageText" runat="server"></asp:TextBox>

            <br />
            <asp:RequiredFieldValidator ID="ageValidator" runat="server" ControlToValidate="ageText" ErrorMessage="Age must be greater than 18 !" ForeColor="Red"></asp:RequiredFieldValidator>

        </div>
        <div>
            <p>3)Regular expression validator</p>
            <asp:Label ID="email" runat="server" Text="Email :"></asp:Label>
            <asp:TextBox ID="emailText" runat="server"></asp:TextBox>

            <br />
            <asp:RequiredFieldValidator ID="emailValidator" runat="server" ControlToValidate="emailText" ErrorMessage="Email is not proper format !!" ForeColor="Red"></asp:RequiredFieldValidator>

        </div>
        <div>
            <p>4)Compaire validator</p>
            <asp:Label ID="pass" runat="server" Text="Password :"></asp:Label>
            <asp:TextBox ID="passText" runat="server"></asp:TextBox>

            <br />
            <asp:RequiredFieldValidator ID="passValidator" runat="server" ControlToValidate="passText" ErrorMessage="Password not empty !!" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />

            <asp:Label ID="cpass" runat="server" Text="Confirm Password :"></asp:Label>
            <asp:TextBox ID="cpassText" runat="server"></asp:TextBox>


            <br />
            <asp:CompareValidator ID="cpassCompareValidator" runat="server" ControlToValidate="cpassText" ErrorMessage="Confirm Password not match !" ForeColor="Red"></asp:CompareValidator>


        </div>
        <div>
            <p>5)Custom validator</p>
            <asp:Label ID="num" runat="server" Text="Number :"></asp:Label>
            <asp:TextBox ID="numText" runat="server"></asp:TextBox>

            <br />
            <asp:RequiredFieldValidator ID="numValidator" runat="server" ControlToValidate="numText" ErrorMessage="Number must be 10 digit !!" ForeColor="Red"></asp:RequiredFieldValidator>

        </div>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </form>
</body>
</html>
