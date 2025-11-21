<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="spaHarmony_M2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="page-wrapper">

        <div class="card">
            <h1 class="title">Welcome to Spa Harmony</h1>
            <p class="subtitle">Your comfort starts here.</p>

            <div style="text-align:center; margin-top:30px;">
                <a href="login.aspx" class="btn-main">Client Login</a>
                <br /><br />
                <a href="adminLogin.aspx" class="btn-outline">Admin Login</a>
            </div>
        </div>

        <p class="footer">© 2024 Spa Harmony</p>
    </div>

</asp:Content>
   