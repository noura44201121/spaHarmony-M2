<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" 
    AutoEventWireup="true" CodeBehind="Default.aspx.cs" 
    Inherits="spaHarmony_M2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="page-wrapper" style="text-align:center; margin-top:40px;">

        <div class="card" style="background:white; padding:30px; border-radius:15px; width:500px; margin:auto;">

            <img src="assets/logo.png.png" class="login-logo" alt="Logo" 
     style="width:180px; margin-bottom:25px;" />


            <h1 class="title">Welcome to Spa Harmony</h1>
            <p class="subtitle">Your comfort starts here.</p>

            <div style="text-align:center; margin-top:30px;">
                <a href="client/login.aspx" class="btn-main">Client Login</a>
                <br /><br />
                <a href="Admin/AdminLogin.aspx" class="btn-outline">Admin Login</a>
            </div>
        </div>

        <p class="footer" style="margin-top:25px;">© 2024 Spa Harmony</p>

    </div>

</asp:Content>
