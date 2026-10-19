
<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs"
    Inherits="EventRegistrationPortal.Default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Online Event Registration</title>
    <style>
        body {
            font-family: Arial;
            background: #f2f5f9;
            margin: 30px;
        }

        .container {
            max-width: 550px;
            margin: auto;
            padding: 25px;
            background: white;
            border-radius: 10px;
        }

        .field {
            margin-bottom: 15px;
        }

        .field input, .field select {
            padding: 8px;
            width: 95%;
        }

        .error {
            color: red;
        }

        .btn {
            padding: 10px 18px;
            background: #1769aa;
            color: white;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
<form id="form1" runat="server">
    <div class="container">
        <h2>Online Event Registration</h2>

        <div class="field">
            <asp:Label runat="server" Text="Full Name:" />
            <asp:TextBox ID="txtName" runat="server" />
            <asp:RequiredFieldValidator
                ID="valName" runat="server"
                ControlToValidate="txtName"
                ErrorMessage="Name is required."
                CssClass="error" Display="Dynamic" />
        </div>

        <div class="field">
            <asp:Label runat="server" Text="Email:" />
            <asp:TextBox ID="txtEmail" runat="server" />
            <asp:RequiredFieldValidator
                ID="valEmailRequired" runat="server"
                ControlToValidate="txtEmail"
                ErrorMessage="Email is required."
                CssClass="error" Display="Dynamic" />
            <asp:RegularExpressionValidator
                ID="valEmailFormat" runat="server"
                ControlToValidate="txtEmail"
                ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                ErrorMessage="Enter a valid email."
                CssClass="error" Display="Dynamic" />
        </div>

        <div class="field">
            <asp:Label runat="server" Text="Phone Number:" />
            <asp:TextBox ID="txtPhone" runat="server"
                MaxLength="10" />
            <asp:RequiredFieldValidator
                ID="valPhoneRequired" runat="server"
                ControlToValidate="txtPhone"
                ErrorMessage="Phone is required."
                CssClass="error" Display="Dynamic" />
            <asp:RegularExpressionValidator
                ID="valPhoneFormat" runat="server"
                ControlToValidate="txtPhone"
                ValidationExpression="^[0-9]{10}$"
                ErrorMessage="Enter a 10-digit phone number."
                CssClass="error" Display="Dynamic" />
        </div>

        <div class="field">
            <asp:Label runat="server" Text="Age:" />
            <asp:TextBox ID="txtAge" runat="server" />
            <asp:RequiredFieldValidator
                ID="valAgeRequired" runat="server"
                ControlToValidate="txtAge"
                ErrorMessage="Age is required."
                CssClass="error" Display="Dynamic" />
            <asp:RangeValidator
                ID="valAgeRange" runat="server"
                ControlToValidate="txtAge"
                MinimumValue="18" MaximumValue="100"
                Type="Integer"
                ErrorMessage="Age must be between 18 and 100."
                CssClass="error" Display="Dynamic" />
        </div>

        <div class="field">
            <asp:Label runat="server" Text="Select Event:" />
            <asp:DropDownList ID="ddlEvent" runat="server">
                <asp:ListItem Text="-- Select Event --" Value="" />
                <asp:ListItem Text="Web Development Workshop"
                    Value="Web Development Workshop" />
                <asp:ListItem Text="AI and Machine Learning"
                    Value="AI and Machine Learning" />
                <asp:ListItem Text="Cyber Security Seminar"
                    Value="Cyber Security Seminar" />
            </asp:DropDownList>
            <asp:RequiredFieldValidator
                ID="valEvent" runat="server"
                ControlToValidate="ddlEvent"
                InitialValue=""
                ErrorMessage="Please select an event."
                CssClass="error" Display="Dynamic" />
        </div>

        <asp:Button ID="btnRegister" runat="server"
            Text="Register Now"
            CssClass="btn"
            OnClick="btnRegister_Click" />

        <br /><br />

        <asp:ValidationSummary ID="ValidationSummary1"
            runat="server" CssClass="error"
            HeaderText="Please correct the following errors:" />

        <asp:Label ID="lblMessage" runat="server" />
    </div>
</form>
</body>
</html>
