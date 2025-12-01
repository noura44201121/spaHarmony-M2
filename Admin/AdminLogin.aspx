<%@ Page Title="Admin Login" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs"
    Inherits="spaHarmony_M2.Admin.AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-wrapper">

        <div class="card login-card">
            <img src="../assets/logo.png.png" class="login-logo" alt="Logo" />

            <h1 class="title">Admin Login</h1>

            <label>Username</label>
            <asp:TextBox ID="txtAdminUser" runat="server" CssClass="input-box" 
                placeholder="Enter your username"></asp:TextBox>

            <label>Password</label>
            <asp:TextBox ID="txtAdminPass" runat="server" TextMode="Password" CssClass="input-box" 
                placeholder="Enter your password"></asp:TextBox>

            <asp:RequiredFieldValidator ID="rfvPass" runat="server" 
                ControlToValidate="txtAdminPass"
                ErrorMessage="Password is required" CssClass="validation" />

            <asp:Button ID="btnAdminLogin" runat="server" Text="Login" 
                CssClass="main-btn" OnClick="btnAdminLogin_Click" />

            <asp:Label ID="lblAdminMsg" runat="server" CssClass="login-message"></asp:Label>

            <p class="secure-note">Secure admin access only</p>
        </div>
    </div>
</asp:Content>
