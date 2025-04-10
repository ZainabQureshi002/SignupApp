<%@ Page Language="C#" AutoEventWireup="true"   %>

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
        function validateInput(id) {
            let inputField = document.getElementById(id);
            let inputValue = inputField.value.trim();
            let number = 0;
            try {
                number = parseFloat(inputValue);

                if (isNaN(number) || number < 0) {
                    alert("Please enter a valid non-negative number.");
                    inputField.value = "";
                }
            }
            catch {
                alert("Please enter a valid non-negative number.");
            }
        }

        function calculateValues() {
            let amountField = document.getElementById('<%= txtAmount.ClientID %>');
            let commissionField = document.getElementById('<%= txtCommissionPercentage.ClientID %>');
            let taxField = document.getElementById('<%= txtTaxPercentage.ClientID %>');

            let amount = parseFloat(amountField.value) || 0;
            let commissionPercentage = parseFloat(commissionField.value) || 0;
            let taxPercentage = parseFloat(taxField.value) || 0;

            if (isNaN(amount) || isNaN(commissionPercentage) || isNaN(taxPercentage)) return;

            let commissionAmount = (amount * commissionPercentage) / 100;
            let taxAmount = (amount * taxPercentage) / 100;
            let actualPrice = amount - commissionAmount - taxAmount;
            let totalPercentage = commissionPercentage + taxPercentage;
            let totalAmount = amount;

            document.getElementById('<%= txtCommissionAmount.ClientID %>').value = commissionAmount.toFixed(2);
            document.getElementById('<%= txtTaxAmount.ClientID %>').value = taxAmount.toFixed(2);
            document.getElementById('<%= txtActualPrice.ClientID %>').value = actualPrice.toFixed(2);
            document.getElementById('<%= txtTotalPercentage.ClientID %>').value = totalPercentage.toFixed(2);
            document.getElementById('<%= txtTotalAmount.ClientID %>').value = totalAmount.toFixed(2);
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
                    <asp:TextBox ID="txtAmount" runat="server" CssClass="field-input" AutoPostBack="false" oninput="calculateValues()" required="true"  ></asp:TextBox>
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
                <td id="tdActualPrice">
                    <label class="field-label" for="txtActualPrice">Actual Amount:</label>
                    <asp:TextBox ID="txtActualPrice" runat="server" CssClass="field-input" ReadOnly="true"></asp:TextBox>
                </td>
            </tr>

            <tr id="row3">
                <td id="tdTotalPercentage">
                    <label class="field-label" for="txtTotalPercentage">Total Percentage:</label>
                    <asp:TextBox ID="txtTotalPercentage" runat="server" CssClass="field-input" ReadOnly="true"></asp:TextBox>
                </td>
                <td id="tdTotalAmount">
                    <label class="field-label" for="txtTotalAmount">Total Amount:</label>
                    <asp:TextBox ID="txtTotalAmount" runat="server" CssClass="field-input" ReadOnly="true"></asp:TextBox>
                </td>
                <td id="tdButton">
                    <asp:Button ID="btnCalculate" runat="server" CssClass="form-button" Text="Calculate" OnClientClick="calculateValues(); return false;" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
