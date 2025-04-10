<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Post Property Listing</title>
    <link href="../Css/Style.css" rel="stylesheet" />
</head>
<body class="formContainer">
    <center>
        <form id="propertyForm" runat="server" class="form-box">
            <div>

                <h2 class="form-heading">Post Property Listing</h2>
                <h4>Select Purpose</h4>
                <label for="rbSell" id="lblPurpose" class="field-label">Choose an option</label>
                <br />
                <asp:RadioButton ID="rbSell" runat="server" CssClass="radioGroup" GroupName="purpose" Text="Sell" />
                <asp:RadioButton ID="rbRent" runat="server" CssClass="radioGroup" GroupName="purpose" Text="Rent" />
                <br />
                <br />

                <h4>Select Property Type</h4>
                <asp:RadioButtonList ID="PropertyType" runat="server" CssClass="radioList" RepeatLayout="UnorderedList">
                    <asp:ListItem Text="House" Value="house" />
                    <asp:ListItem Text="Flat" Value="flat" />
                    <asp:ListItem Text="Upper Portion" Value="upper-portion" />
                    <asp:ListItem Text="Lower Portion" Value="lower-portion" />
                    <asp:ListItem Text="Farm House" Value="farm-house" />
                    <asp:ListItem Text="Room" Value="room" />
                    <asp:ListItem Text="Penthouse" Value="penthouse" />
                </asp:RadioButtonList>



                <!-- City & Location -->
                <h4>City & Location</h4>
                <label class="field-label" for="City">City:</label>
                <asp:TextBox ID="City" runat="server" CssClass="field-input" Placeholder="Enter city" />

                <label class="field-label" for="Location">Location:</label>
                <asp:TextBox ID="Location" runat="server" CssClass="field-input" Placeholder="Enter location" />

                <!-- Price & Area -->
                <h4>Price and Area</h4>
                <label class="field-label" for="Price">Price:</label>
                <asp:TextBox ID="Price" runat="server" CssClass="field-input" Placeholder="Enter price" />

                <label class="field-label" for="AreaSize">Area Size:</label>
                <asp:TextBox ID="AreaSize" runat="server" CssClass="field-input" Placeholder="Enter area size" />

                <label class="field-label">
                    <asp:CheckBox ID="PossessionReady" runat="server" CssClass="checkboxGroup" />
                    Ready for Possession
                </label>

                <!-- Ad Information -->
                <h4>Ad Information</h4>
                <label class="field-label" for="AdTitle">Title:</label>
                <asp:TextBox ID="AdTitle" runat="server" CssClass="field-input" Placeholder="Enter title" />

                <label class="field-label" for="AdDescription">Description:</label>
                <asp:TextBox ID="AdDescription" runat="server" CssClass="field-input" TextMode="MultiLine" Placeholder="Enter description" />

                <!-- Property Images and Videos -->
                <h4>Property Images and Videos</h4>
                <label class="field-label" for="PropertyImages">Upload Images:</label>
                <asp:FileUpload ID="PropertyImages" runat="server" CssClass="field-input" />

                <label class="field-label" for="VideoLink">Video Link:</label>
                <asp:TextBox ID="VideoLink" runat="server" CssClass="field-input" Placeholder="Paste YouTube link here" TextMode="Url" />

                <!-- Features & Amenities -->
                <h4>Features & Amenities</h4>
                <label class="field-label" for="Bedrooms">Bedrooms:</label>
                <asp:DropDownList ID="Bedrooms" runat="server" CssClass="SelectlistItem">
                    <asp:ListItem Text="1" Value="1" />
                    <asp:ListItem Text="2" Value="2" />
                    <asp:ListItem Text="3" Value="3" />
                    <asp:ListItem Text="4" Value="4" />
                    <asp:ListItem Text="5" Value="5" />
                    <asp:ListItem Text="6" Value="6" />
                </asp:DropDownList>

                <label class="field-label" for="Bathrooms">Bathrooms:</label>
                <asp:DropDownList ID="Bathrooms" runat="server" CssClass="SelectlistItem">
                    <asp:ListItem Text="1" Value="1" />
                    <asp:ListItem Text="2" Value="2" />
                    <asp:ListItem Text="3" Value="3" />
                    <asp:ListItem Text="4" Value="4" />
                    <asp:ListItem Text="5" Value="5" />
                    <asp:ListItem Text="6" Value="6" />
                </asp:DropDownList>

                <!-- Contact Information -->
                <h4>Contact Information</h4>
                <label class="field-label" for="Email">Email:</label>
                <asp:TextBox ID="Email" runat="server" CssClass="field-input" Placeholder="Enter email" TextMode="Email" />

                <label class="field-label" for="Mobile">Mobile:</label>
                <asp:TextBox ID="Mobile" runat="server" CssClass="field-input" Placeholder="Enter mobile number" TextMode="Phone" />

                <label class="field-label" for="Landline">Landline:</label>
                <asp:TextBox ID="Landline" runat="server" CssClass="field-input" Placeholder="Enter landline number" TextMode="Phone" />

                <!-- Post Listing Button -->
                <asp:Button ID="btnPostListing" runat="server" CssClass="form-button" Text="Post Listing" />
            </div>
        </form>
    </center>
</body>
</html>
