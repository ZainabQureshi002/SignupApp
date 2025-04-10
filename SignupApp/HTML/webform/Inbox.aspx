<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inbox</title>
    <link href="Css/Style.css" rel="stylesheet" />
</head>
<body class="formContainer">
    <center>
    <form id="form1" class="form-box" runat="server">
        <div>
            <h2 class="form-heading">Message Box</h2>

            <asp:Button ID="btnInbox" runat="server" Text="Inbox" CssClass="form-button" /><br /><br />
            <p class="form-Paragraph">No messages found.</p>

            <asp:Button ID="btnTrash" runat="server" Text="Trash" CssClass="form-button"/><br /><br />
            <p class="form-Paragraph">No deleted messages.</p>
            
        </div>
    </form>
        </center>
</body>
</html>
