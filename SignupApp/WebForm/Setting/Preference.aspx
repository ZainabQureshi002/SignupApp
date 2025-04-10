<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Notification Settings</title>
    <link href="../Css/Style.css" rel="stylesheet" />
</head>
<body class="formContainer">
    <center>
    <form id="form1" runat="server" class="form-box">
      
            <h2 class="form-heading">Notification Settings</h2>
            <table class="tableContainer">
                <tr class="tableRow">
                    <td class="field-label">Email Notification</td>
                    <td class="field-description">Allow to receive email notifications</td>
                    <td class="field-input">
                        <asp:CheckBox ID="chkEmailNotification" runat="server" Text="" required="true" />
                    </td>
                </tr>
                <tr class="tableRow">
                    <td class="field-label">Newsletters</td>
                    <td class="field-description">Allow to stay updated and receive newsletters</td>
                    <td class="field-input">
                        <asp:CheckBox ID="chkNewsletters" runat="server" Text="" required="true" />
                    </td>
                </tr>
                <tr class="tableRow">
                    <td class="field-label">Automated Reports</td>
                    <td class="field-description">Allow to send us reports automatically in case of any issue</td>
                    <td class="field-input">
                        <asp:CheckBox ID="chkAutomatedReports" runat="server" Text="" required="true" />
                    </td>
                </tr>
                <tr class="tableRow">
                    <td class="field-label">Currency</td>
                    <td class="field-input">
                        <asp:DropDownList ID="ddlCurrency" runat="server" class="dropdown">
                            <asp:ListItem Text="Select Currency" Value="" />
                            <asp:ListItem Text="PKR" Value="PKR" />
                            <asp:ListItem Text="USD" Value="USD" />
                            <asp:ListItem Text="EUR" Value="EUR" />
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="field-label">Area Unit</td>
                    <td class="field-input">
                        <asp:DropDownList ID="ddlAreaUnit" runat="server" class="dropdown">
                            <asp:ListItem Text="Select Area Unit" Value="" />
                            <asp:ListItem Text="Square Feet" Value="square_feet" />
                            <asp:ListItem Text="Square Meters" Value="square_meters" />
                            <asp:ListItem Text="Marla" Value="marla" />
                            <asp:ListItem Text="Kanals" Value="kanals" />
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Button ID="btnSave" runat="server" Text="Save Changes" CssClass="form-button" />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="validation-summary" />
    </form>
        </center>
</body>
</html>
