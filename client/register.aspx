<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="spaHarmony_M2.Client.register" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Client Register</title>
    <link rel="stylesheet" href="/Content/style.css" />
</head>
<body class="page-wrapper">

    <form id="form1" runat="server">

        <a href="/client/home.aspx" class="back-link">← Back to Home</a>

        <div class="card login-card">

            <h1 class="title">Create Account</h1>
            <p class="subtitle">Fill the form to continue</p>

            <asp:TextBox ID="txtUsername" runat="server" CssClass="input-field" placeholder="Enter your username"></asp:TextBox>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="input-field" TextMode="Password" placeholder="Enter your password"></asp:TextBox>

            <asp:Button ID="btnRegister" runat="server" CssClass="main-btn" Text="Sign Up" />

            <p class="footer">
                Already have an account?
                <a href="/client/login.aspx">Login</a>
            </p>
        </div>

    </form>
</body>
</html>
