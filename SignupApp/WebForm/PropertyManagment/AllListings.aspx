<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllListings.aspx.cs" Inherits="SignupApp.WebForm.Property_Managment.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Property Listing Form</title>
    <link href="../Css/Style.css" rel="stylesheet" />
</head>
<body class="formContainer">
    <center>
    <form id="form1" runat="server" class="form-box">
        <div>
            <h2 class="form-heading">Property Listing Form</h2>

            <label for="txtId" class="field-label">ID:</label><br />
            <asp:TextBox ID="txtId" runat="server" CssClass="field-input" placeholder="Enter Listing ID" required="true"></asp:TextBox>
            <br /><br />

            <label for="ddlPropertyType" class="field-label">Property Type:</label><br />
            <asp:DropDownList ID="ddlPropertyType" runat="server" CssClass="field-input" required="true">
                <asp:ListItem Text="Select Property Type" Value="" />
                <asp:ListItem Text="House" Value="House" />
                <asp:ListItem Text="Flat" Value="Flat" />
                <asp:ListItem Text="Apartment" Value="Apartment" />
                <asp:ListItem Text="Upper Portion" Value="Upper Portion" />
                <asp:ListItem Text="Lower Portion" Value="Lower Portion" />
                <asp:ListItem Text="Farm House" Value="Farm House" />
                <asp:ListItem Text="Room" Value="Room" />
                <asp:ListItem Text="Plot" Value="Plot" />
                <asp:ListItem Text="Commercial" Value="Commercial" />
            </asp:DropDownList>
            <br /><br />

            <label for="ddlPurpose" class="field-label">Purpose:</label><br />
            <asp:DropDownList ID="ddlPurpose" runat="server" CssClass="field-input" required="true">
                <asp:ListItem Text="Select Purpose" Value="" />
                <asp:ListItem Text="Sale" Value="Sale" />
                <asp:ListItem Text="Rent" Value="Rent" />
            </asp:DropDownList>
            <br /><br />

            <label for="txtListedDate" class="field-label">Listed Date:</label><br />
            <asp:TextBox ID="txtListedDate" runat="server" TextMode="Date" CssClass="field-input" required="true"></asp:TextBox>
            <br /><br />

            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="form-button" />
            <a href="Filters.html" class="field-link">See More</a>
        </div>
    </form>
        </center>
</body>
</html>
