<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ad Listing & Credits</title>
    <link href="../Css/Style.css" rel="stylesheet" />
</head>
<body class="formContainer">
    <center>
    <form id="form1" runat="server" class="form-box">
            <h2 class="form-heading">Choose Your Listing Package</h2>
                <table class="tableContainer">
                    <tr class="tableRow">
                        <th class="tableHead">Product</th>
                        <th class="tableHead">Description</th>
                        <th class="tableHead">Price</th>
                        <th class="tableHead">Select</th>
                    </tr>
                    <tr class="tableRow">
                        <td class="tableData">Listing</td>
                        <td class="tableData">Get an ad slot for 30 days to post your listing</td>
                        <td class="tableData">Rs. 3000</td>
                        <td class="tableData">
                            <asp:RadioButton ID="rbListing" runat="server" GroupName="listing" CssClass="radio-option" />
                        </td>
                    </tr>
                    <tr class="tableRow">
                        <td class="tableData">Hot Listing</td>
                        <td class="tableData">Get an ad slot for 30 days and place your ad above normal listings</td>
                        <td class="tableData">Rs. 7800</td>
                        <td class="tableData">
                            <asp:RadioButton ID="rbHotListing" runat="server" GroupName="listing" CssClass="radio-option" />
                        </td>
                    </tr>
                    <tr class="tableRow">
                        <td class="tableData">Super Hot Listing</td>
                        <td class="tableData">Get an ad slot for 30 days and place your ad at the top of search results</td>
                        <td class="tableData">Rs. 21000</td>
                        <td class="tableData">
                            <asp:RadioButton ID="rbSuperHotListing" runat="server" GroupName="listing" CssClass="radio-option" />
                        </td>
                    </tr>
                </table>
            <h2 class="form-heading">Purchase Credits</h2>

            <div class="table-container">
                <table class="table">
                    <tr class="tableRow">
                        <th class="tableHead">Product</th>
                        <th class="tableHead">Description</th>
                        <th class="tableHead">Price</th>
                        <th class="tableHead">Select</th>
                    </tr>
                    <tr class="tableRow">
                        <td class="tableData">Refresh Credits</td>
                        <td class="tableData">Refresh the time of your posted listings and bring them to the top again</td>
                        <td class="tableData">Rs. 240</td>
                        <td class="tableData">
                            <asp:CheckBox ID="chkRefreshCredits" runat="server" CssClass="checkbox-option" />
                        </td>
                    </tr>
                    <tr class="tableRow">
                        <td class="tableData">Story Ad Credits</td>
                        <td class="tableData">Get more exposure by posting your listing in the story</td>
                        <td class="tableData">Rs. 1000</td>
                        <td class="tableData">
                            <asp:CheckBox ID="chkStoryAd" runat="server" CssClass="checkbox-option" />
                        </td>
                    </tr>
                    <tr class="tableRow">
                        <td class="tableData">Verified Photography Credits</td>
                        <td class="tableData">Upgrade your property's visual appeal with our professional photoshoot service (Only in Karachi, Lahore & Islamabad)</td>
                        <td class="tableData">Rs. 3600</td>
                        <td class="tableData">
                            <asp:CheckBox ID="chkVerifiedPhotography" runat="server" CssClass="checkbox-option" />
                        </td>
                    </tr>
                    <tr class="tableRow">
                        <td class="tableData">Verified Videography Credits</td>
                        <td class="tableData">Bring your property to life with our videography service (Only in Karachi, Lahore & Islamabad)</td>
                        <td class="tableData">Rs. 12000</td>
                        <td class="tableData">
                            <asp:CheckBox ID="chkVerifiedVideography" runat="server" CssClass="checkbox-option" />
                        </td>
                    </tr>
                </table>
            </div>

            <h2 class="form-heading">Payment Currency</h2>
            <asp:DropDownList ID="ddlCurrency" runat="server" CssClass="SelectlistItem ">
                <asp:ListItem Text="Select Currency" Value="" />
                <asp:ListItem Text="PKR" Value="PKR" />
                <asp:ListItem Text="USD" Value="USD" />
                <asp:ListItem Text="EUR" Value="EUR" />
            </asp:DropDownList>

            <br />
            <br />

            <asp:Button ID="btnProceed" runat="server" Text="Proceed to Checkout" CssClass="button" />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="validation-summary" />

            <p class="error-text">No Items Added in Cart</p>
    </form>
        </center>
</body>
</html>
