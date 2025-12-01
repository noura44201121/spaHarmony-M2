<%@ Page Title="Client Login" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="login.aspx.cs"
    Inherits="spaHarmony_M2.Client.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="page-wrapper" style="text-align:center; margin-top:40px;">

        <div class="card login-card" style="width:400px; margin:auto; padding:30px; background:white; border-radius:15px;">
            
            <img src="../assets/logo.png.png" class="login-logo" alt="Logo" />

            <h1 class="title">Client Login</h1>

            <p>Please enter your credentials</p>

            <label>Username</label>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="input-box" 
                placeholder="Enter your username"
                Style="width:100%; padding:10px; margin-bottom:15px;"></asp:TextBox>

            <label>Password</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="input-box" 
                placeholder="Enter your password"
                Style="width:100%; padding:10px; margin-bottom:15px;"></asp:TextBox>

            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="main-btn"
                OnClick="btnLogin_Click"
                Style="width:100%; padding:12px; background:#d95375; color:white; border:none; border-radius:8px;" />

            <br /><br />

            <a href="register.aspx" style="color:#d95375; font-weight:bold; text-decoration:none;">
                Don’t have an account? Register here
            </a>

            <br /><br />

            <asp:Label ID="lblMessage" runat="server" 
                Style="color:red; font-weight:bold;"></asp:Label>

        </div>
    </div>

</asp:Content>
