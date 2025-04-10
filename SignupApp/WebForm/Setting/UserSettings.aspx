<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Settings</title>
    <link href="../Css/Style.css" rel="stylesheet" />
</head>

<body class="formContainer">
    <center>

        <form id="form1" class="form-box" runat="server">

            <h2 class="form-heading">User Settings</h2>
            <table border="1" cellpadding="10" class="tableContainer">
                <tr class="tableRow">
                    <td class="tableData">Full Name:</td>
                    <td class="tableData">
                        <asp:TextBox ID="txtFullName" runat="server" CssClass="field-input" required="true"></asp:TextBox>
                    </td>
                </tr>
                <tr class="tableRow">
                    <td class="tableData">Email Address:</td>
                    <td class="tableData">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="field-input" required="true"></asp:TextBox>
                    </td>
                </tr>
                <tr class="tableRow">
                    <td class="tableData">Mobile Number:</td>
                    <td>
                        <asp:TextBox ID="txtMobile" runat="server" CssClass="field-input" required="true"></asp:TextBox>
                    </td>
                </tr>
                <tr class="tableRow">
                    <td class="tableData">Landline:</td>
                    <td class="tableData">
                        <asp:TextBox ID="txtLandline" runat="server" CssClass="field-input" required="true"></asp:TextBox>
                    </td>
                </tr>
                <tr class="tableRow">
                    <td class="tableData">WhatsApp Number:</td>
                    <td class="tableData">
                        <asp:TextBox ID="txtWhatsapp" runat="server" CssClass="field-input" required="true"></asp:TextBox>
                    </td>
                </tr>
                <tr class="tableRow">
                    <td class="tableData">City:</td>
                    <td class="tableData">
                        <asp:DropDownList ID="ddlCity" runat="server" required="true">
                            <asp:ListItem Text="Select City" Value="" />
                            <asp:ListItem Text="Islamabad" Value="Islamabad" />
                            <asp:ListItem Text="Karachi" Value="Karachi" />
                            <asp:ListItem Text="Abbottabad" Value="Abbottabad" />
                            <asp:ListItem Text="Multan" Value="Multan" />
                            <asp:ListItem Text="Haripur" Value="Haripur" />
                            <asp:ListItem Text="Peshawar" Value="Peshawar" />
                            <asp:ListItem Text="Rawalpindi" Value="Rawalpindi" />
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr class="tableRow">
                    <td class="tableData">Address:</td>
                    <td class="tableData">
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="field-input" required="true"></asp:TextBox>
                    </td>
                </tr>

                <tr class="tableRow">
                    <td class="tableData">Upload a Picture:</td>
                    <td class="tableData">
                        <asp:FileUpload ID="fuPicture" runat="server" CssClass="field-input" required="true" />
                    </td>
                </tr>

                <tr class="tableRow">
                    <td class="tableData">Update in All Listings:</td>
                    <td class="tableData">
                        <asp:CheckBox ID="chkUpdate" runat="server" required="true" />
                    </td>
                </tr>
            </table>
            <br />

            <asp:Button ID="btnSave" runat="server" Text="Save Changes" CssClass="form-button" required="true" />
            <br />
            <b><a href="Preferences.aspx" class="form-link">Preference</a></b><br />
            <b><a href="Change-Password.aspx" class="form-link">Change Password</a></b><br />

        </form>
    </center>
</body>
</html>
