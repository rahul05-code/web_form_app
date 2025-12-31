<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adexample.aspx.cs" Inherits="web_form_app.adexample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 447px">
    <form id="form1" runat="server">
        <div>
            <asp:AdRotator ID="AdRotator1" runat="server"   Width="250px" AdvertisementFile="~/XMLFile1.xml" OnAdCreated="AdRotator1_AdCreated" />
        </div>
    </form>
</body>
</html>
