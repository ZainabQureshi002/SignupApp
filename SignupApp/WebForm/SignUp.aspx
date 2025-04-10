<%@ Page Language="C#" AutoEventWireup="true" EnableViewState="true" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Signup Form</title>
    <link href="Css/Style.css" rel="stylesheet" />
</head>
<body class="formContainer">
    <center>
    <form runat="server" ID="form1" class="form-box">
        <h2 id="headingId" class="form-heading">Signup Form</h2>

        <label for="txtUserName" id="labelId" class="field-label">Full Name:</label>
        <asp:TextBox runat="server" ID="txtUserName" CssClass="field-input" placeholder="Enter your full name" required="true"></asp:TextBox>

        <label for="txtEmailAddress" id="labelId1" class="field-label">Email Address:</label>
        <asp:TextBox runat="server" ID="txtEmailAddress" CssClass="field-input" TextMode="Email" placeholder="Enter your email" required="true"></asp:TextBox>

        <label for="txtCreatePass" id="labelId2" class="field-label">Create Password:</label>
        <asp:TextBox runat="server" ID="txtCreatePass" CssClass="field-input" TextMode="Password" placeholder="Enter a strong password" required="true"></asp:TextBox>

        <label for="txtConfirmPass" id="labelId3" class="field-label">Confirm Password:</label>
        <asp:TextBox runat="server" ID="txtConfirmPass" CssClass="field-input" TextMode="Password" placeholder="Re-enter your password" required="true"></asp:TextBox>

        <label for="txtPhone" id="labelId4" class="field-label">Phone Number:</label>
        <asp:TextBox runat="server" ID="txtPhone" CssClass="field-input" TextMode="number" placeholder="Enter number" required="true" pattern="\d{11}"></asp:TextBox>

        <asp:Button runat="server" ID="btnSubmit" Text="Submit" CssClass="form-button" />
        <a href="Post_Property_Listing.aspx" id="linkId" class="form-link">Post Listing</a>
    </form>
          </center>
</body>
</html>
