<%@ Page Title="Client Login" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="spaHarmony_M2.Client.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="page-wrapper">
        <a href="home.aspx" class="back-link">← Back to Home</a>

        <div class="card login-card">
            <img src="../assets/logo.png" class="login-logo" />

            <h1 class="title">Client Login</h1>
            <p class="subtitle">Enter your credentials to continue</p>

            <label>Username</label>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="input-box" placeholder="Enter your username"></asp:TextBox>

            <label>Password</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="input-box" placeholder="Enter your password"></asp:TextBox>

            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="main-btn" />

            <p class="footer">
                Don't have an account? <a href="register.aspx">Sign up</a>
            </p>
        </div>
    </div>

</asp:Content>
