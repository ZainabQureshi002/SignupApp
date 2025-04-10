<%@ Page Language="C#" AutoEventWireup="true" EnableViewState="true" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Price Calculator</title>
    <link href="../Css/Style.css" rel="stylesheet" />
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .form-box {
            background: white;
            padding: 20px;
            border-radius: 8px;
            width: 700px;
        }

        .form-heading {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        td {
            padding: 10px;
            vertical-align: middle;
            width: 33%;
        }

        .field-label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        .field-input {
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 100%;
            box-sizing: border-box;
        }

        .form-button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            border: none;
            color: white;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>

    <script>
        function ClearValues() {
            document.getElementById('<%= txtAmount.ClientID %>').value = null;
            document.getElementById('<%= txtCommissionPercentage.ClientID %>').value = null;
            document.getElementById('<%= txtTaxPercentage.ClientID %>').value = null;
            document.getElementById('<%= txtCommissionAmount.ClientID %>').value = null;
            document.getElementById('<%= txtTaxAmount.ClientID %>').value = null
            document.getElementById('<%= txtActualPrice.ClientID %>').value = null
            document.getElementById('<%= txtTotalPercentage.ClientID %>').value = null
            document.getElementById('<%= txtTotalAmount.ClientID %>').value = null

        }
        function validateAmountField(inputAmount) {
            if (inputAmount < 0) {
                alert("Please Input +ive number in Amount");
                return;
            }


            if (inputAmount == "") {
                return;
            }
            if (parseFloat(inputAmount)) {
                return
            }

            else {
                alert("Enter a valid Number")
                debugger
                document.getElementById('<%= txtAmount.ClientID %>').value = null;
            }
        }
        function validateCommissionField(inputAmount) {
            if (inputAmount < 0) {
                alert("Please Input +ive number in commision field");
                return;
            }
            console.log(typeof (inputAmount));

            if (inputAmount == "") {
                return;
            }
            if (parseFloat(inputAmount)) {
                return
            }

            else {
                alert("Enter a valid Number")
                debugger
                document.getElementById('<%= txtCommissionPercentage.ClientID %>').value = null;
            }
        }
        function validateTaxField(inputAmount) {
            if (inputAmount < 0) {
                alert("Please Input +ive number in Tax field");
                return;
            }
            console.log(typeof (inputAmount));

            if (inputAmount == "") {
                return;
            }
            if (parseFloat(inputAmount)) {
                return
            }

            else {
                alert("Enter a valid Number")
                debugger
                document.getElementById('<%= txtTaxPercentage.ClientID %>').value = null;
            }
        }
        function calculateValues() {
                       //try {
                let amountField = document.getElementById('<%= txtAmount.ClientID %>');
                validateAmountField(amountField.value);
                let amount = parseFloat(amountField.value) || 0;
                let commissionField = document.getElementById('<%= txtCommissionPercentage.ClientID %>');
                validateCommissionField(commissionField.value);
                let commissionPercentage = parseFloat(commissionField.value) || 0;
                let taxField = document.getElementById('<%= txtTaxPercentage.ClientID %>');
                validateTaxField(taxField.value);
                let taxPercentage = parseFloat(taxField.value) || 0;

                let PerCentAmount = amount / (100 + taxPercentage);

                let commissionAmount = (PerCentAmount * commissionPercentage);
                let taxAmount = (PerCentAmount * taxPercentage);
                let actualPrice = amount - commissionAmount - taxAmount;
                let totalPercentage = commissionPercentage + taxPercentage;
                let totalAmount =  commissionAmount + taxAmount;

                document.getElementById('<%= txtCommissionAmount.ClientID %>').value = commissionAmount.toFixed(2);
                document.getElementById('<%= txtTaxAmount.ClientID %>').value = taxAmount.toFixed(2);
                document.getElementById('<%= txtActualPrice.ClientID %>').value = actualPrice.toFixed(2);
                document.getElementById('<%= txtTotalPercentage.ClientID %>').value = totalPercentage.toFixed(2);
                document.getElementById('<%= txtTotalAmount.ClientID %>').value = totalAmount.toFixed(2);
            //}
            //catch (ex) {
            //    alert("Error in handling form")
            //}
        }
    </script>

</head>
<body>
    <form id="form1" runat="server" class="form-box">
        <h2 class="form-heading">Price Calculator</h2>

        <table id="priceCalculatorTable">
            <tr id="row1">
                <td id="tdAmount">
                    <label class="field-label" for="txtAmount">Amount:</label>
                    <asp:TextBox ID="txtAmount" runat="server" CssClass="field-input" AutoPostBack="false" oninput="calculateValues()" required="true"></asp:TextBox>
                </td>
                <td id="tdCommissionPercentage">
                    <label class="field-label" for="txtCommissionPercentage">Commission (%):</label>
                    <asp:TextBox ID="txtCommissionPercentage" runat="server" CssClass="field-input" AutoPostBack="false" oninput="calculateValues()" required="true"></asp:TextBox>
                </td>
                <td id="tdTaxPercentage">
                    <label class="field-label" for="txtTaxPercentage">Tax (GST %):</label>
                    <asp:TextBox ID="txtTaxPercentage" runat="server" CssClass="field-input" AutoPostBack="false" oninput="calculateValues()" required="true"></asp:TextBox>
                </td>
            </tr>

            <tr id="row2">
                <td id="tdCommissionAmount">
                    <label class="field-label" for="txtCommissionAmount">Commission Amount:</label>
                    <asp:TextBox ID="txtCommissionAmount" runat="server" CssClass="field-input" ReadOnly="true"></asp:TextBox>
                </td>
                <td id="tdTaxAmount">
                    <label class="field-label" for="txtTaxAmount">Tax Amount (GST):</label>
                    <asp:TextBox ID="txtTaxAmount" runat="server" CssClass="field-input" ReadOnly="true"></asp:TextBox>
                </td>
                <td id="tdTotalPercentage">
                    <label class="field-label" for="txtTotalPercentage">Total Percentage:</label>
                    <asp:TextBox ID="txtTotalPercentage" runat="server" CssClass="field-input" ReadOnly="true"></asp:TextBox>
                </td>
            </tr>

            <tr id="row3">
                <td id="tdTotalAmount">
                    <label class="field-label" for="txtTotalAmount">Total Amount:</label>
                    <asp:TextBox ID="txtTotalAmount" runat="server" CssClass="field-input" ReadOnly="true"></asp:TextBox>
                </td>

                <td id="tdActualPrice">
                    <label class="field-label" for="txtActualPrice">Actual Amount:</label>
                    <asp:TextBox ID="txtActualPrice" runat="server" CssClass="field-input" ReadOnly="true"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td id="tdButton" colspan="3" align="center">
                    <asp:Button ID="btnClear" runat="server" CssClass="form-button" Text="Clear" OnClientClick="ClearValues(); return false;" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

