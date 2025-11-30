<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="register.aspx.cs"
    Inherits="spaHarmony_M2.Client.register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2 class="page-title">Client Register</h2>

    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>

    <div class="form-group">
        <asp:Label runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="txtName" runat="server" CssClass="input"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="txtName" runat="server" ErrorMessage="Required" ForeColor="Red" />
    </div>

    <div class="form-group">
        <asp:Label runat="server" Text="Username"></asp:Label>
        <asp:TextBox ID="txtUsername" runat="server" CssClass="input"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="txtUsername" runat="server" ErrorMessage="Required" ForeColor="Red"/>
    </div>

    <div class="form-group">
        <asp:Label runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="txtPassword" runat="server" ErrorMessage="Required" ForeColor="Red"/>
    </div>

    <div class="form-group">
        <asp:Label runat="server" Text="Confirm Password"></asp:Label>
        <asp:TextBox ID="txtConfirm" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
        <asp:CompareValidator runat="server" ControlToValidate="txtConfirm" ControlToCompare="txtPassword" ErrorMessage="Passwords do not match" ForeColor="Red"/>
    </div>

    <asp:Button ID="btnRegister" runat="server" Text="Sign Up" CssClass="btn" OnClick="btnRegister_Click" />

</asp:Content>