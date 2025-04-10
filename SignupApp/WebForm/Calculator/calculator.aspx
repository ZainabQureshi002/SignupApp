<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calculator.aspx.cs" Inherits="SignupApp.WebForm.Calculator.calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculator</title>     
    <link href="css/design.css" rel="stylesheet" />
  
</head>
<body class="calBody">
    <form id="form1" runat="server">
        <div class="calculator" id="divCalculator">
            <h2 id="heading1">Calculator</h2>
            <asp:TextBox runat="server" ID="textDisplay" CssClass="screen" ReadOnly="true" /><br />

            <div id="divButtonsRow1">
                <asp:Button ID="btn7" runat="server" Text="7" CssClass="btn" />
                <asp:Button ID="btn8" runat="server" Text="8" CssClass="btn" />
                <asp:Button ID="btn9" runat="server" Text="9" CssClass="btn" />
                <asp:Button ID="btnDivide" runat="server" Text="\" CssClass="operation" />
            </div>

            <div id="divButtonsRow2">
                <asp:Button ID="btn4" runat="server" Text="4" CssClass="btn" />
                <asp:Button ID="btn5" runat="server" Text="5" CssClass="btn" />
                <asp:Button ID="btn6" runat="server" Text="6" CssClass="btn" />
                <asp:Button ID="btnMultiply" runat="server" Text="*" CssClass="operation" />
            </div>

            <div id="divButtonsRow3">
                <asp:Button ID="btn1" runat="server" Text="1" CssClass="btn" />
                <asp:Button ID="btn2" runat="server" Text="2" CssClass="btn" />
                <asp:Button ID="btn3" runat="server" Text="3" CssClass="btn" />
                <asp:Button ID="btnMinus" runat="server" Text="-" CssClass="operation" />
            </div>

            <div id="divButtonsRow4">
                <asp:Button ID="btn0" CssClass="btn" Text="0" runat="server" />
                <asp:Button ID="btnClear" CssClass="btn" Text="C" runat="server" />
                <asp:Button ID="btnEqual" CssClass="operation" Text="=" runat="server" />
                <asp:Button ID="btnPlus" CssClass="operation" Text="+" runat="server" />
            </div>
        </div>
    </form>
</body>
</html>

