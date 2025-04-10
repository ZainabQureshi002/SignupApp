<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Post_Property_Listing.aspx.cs" Inherits="BuyRent.Post_Listing" %>

<!DOCTYPE html>f

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Post Property Listing</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Post Property Listing</h2>

            <h2>Select Purpose</h2>
            <asp:RadioButton ID="rbSell" runat="server" GroupName="Purpose" Text="Sell" />
            <asp:RadioButton ID="rbRent" runat="server" GroupName="Purpose" Text="Rent" />
            <br /><br />
            <h2>Select Property Type</h2>
           <asp:RadioButtonList ID="rbPropertyType" runat="server">
           <asp:ListItem Text="House" Value="house" />
           <asp:ListItem Text ="Flat" Value="flat" />
           <asp:ListItem Text ="Upper Portion" Value="upper-poration" />
           <asp:ListItem Text ="Lower Portion" Value="lower-poration" />
           <asp:ListItem Text ="Farm House" Value="farm-house" />
           <asp:ListItem Text ="Room" Value="room" />
           <asp:ListItem Text ="Penthouse" Value="Penthouse" />
           </asp:RadioButtonList><br /><br />

            <h2>City & Location</h2>
            <label for ="txtCity">City:</label><br />
            <asp:TextBox Id="txtCity"runat="server" required="true"></asp:TextBox>
            <br /> <br />

             <label for="txtLocation">Search Location:</label><br />
            <asp:TextBox ID="txtLocation" runat="server" placeholder="Enter location" required="true"></asp:TextBox>
            <br /><br />

            <h3>Pin Location on Google Map</h3>
            <iframe src="https://www.google.com/maps/embed?pb=..." width="400" height="200" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            <br /><br />

             <h2>Price and Area</h2>
            <label for="txtPrice">Price:</label><br />
            <asp:TextBox ID="txtPrice" runat="server" TextMode="Number" required="true"></asp:TextBox>
            <br /><br />
           
              <label for="txtAreaSize">Area Size:</label><br />
            <asp:TextBox ID="txtAreaSize" runat="server" TextMode="Number" required="true"></asp:TextBox>
            <br /><br />

             <asp:CheckBox ID="chkPossession" runat="server" Text="Ready for Possession" />
            <br /><br />

             <h2>Ad Information</h2>
            <label for="txtTitle">Title:</label><br />
            <asp:TextBox ID="txtTitle" runat="server" required="true"></asp:TextBox>
            <br /><br />

               <label for="txtDescription">Description:</label><br />
            <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" required="true"></asp:TextBox>
            <br /><br />

             <h2>Property Images and Videos</h2>
            <label for="fuImages">Upload Images:</label><br />
            <asp:FileUpload ID="fuImages" runat="server" AllowMultiple="true" />
            <br /><br />

                        <label for="txtVideo">Add a YouTube video link:</label><br />
            <asp:TextBox ID="txtVideo" runat="server" TextMode="Url" placeholder="Paste YouTube link here"></asp:TextBox>
            <br /><br />

               <h2>Features & Amenities</h2>
            <label for="ddlBedrooms">Bedrooms:</label>
            <asp:DropDownList ID="ddlBedrooms" runat="server">
                <asp:ListItem Text="1" Value="1" />
                <asp:ListItem Text="2" Value="2" />
                <asp:ListItem Text="3" Value="3" />
                <asp:ListItem Text="4" Value="4" />
                <asp:ListItem Text="5" Value="5" />
                <asp:ListItem Text="6" Value="6" />
            </asp:DropDownList>
            <br /><br />


             <label for="ddlBathrooms">Bathrooms:</label>
            <asp:DropDownList ID="ddlBathrooms" runat="server">
                <asp:ListItem Text="1" Value="1" />
                <asp:ListItem Text="2" Value="2" />
                <asp:ListItem Text="3" Value="3" />
                <asp:ListItem Text="4" Value="4" />
                <asp:ListItem Text="5" Value="5" />
                <asp:ListItem Text="6" Value="6" />
            </asp:DropDownList>
            <br /><br />

            <h2>Contact Information</h2>
            <label for="txtEmail">Email:</label><br />
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" required="true"></asp:TextBox>
            <br /><br />

            <label for="txtMobile">Mobile Number:</label><br />
            <asp:TextBox ID="txtMobile" runat="server" TextMode="Phone" placeholder="Enter number" required="true"></asp:TextBox>
            <br /><br />

            <label for="txtLandline">Landline Number:</label><br />
            <asp:TextBox ID="txtLandline" runat="server" TextMode="Phone"></asp:TextBox>
            <br /><br />

            <asp:Button ID="btnSubmit" runat="server" Text="Post Listing" OnClick="btnSubmit_Click" />
            
            
            

        </div>
    </form>
</body>
</html>
