<%@ Page Title="Book Appointment" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="BookAppointment.aspx.cs"
    Inherits="spaHarmony_M2.client.Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .error {
            color: #d20000;
            font-size: 14px;
            margin-top: 5px;
            display: block;
        }
    </style>

    <div class="page-wrapper" style="padding:40px 0;">
        <h1 class="page-title">Book Appointment</h1>
        <p class="page-subtitle">Fill in the details to schedule your visit</p>

        <div class="card" style="max-width:700px; margin:auto; padding:30px; background:#fff; border-radius:20px;">

            <h2 class="section-title">Appointment Details</h2>
            <p class="section-subtitle">Please provide your information</p>

            <div class="form-group">
                <label>Your Name</label>
                <asp:TextBox ID="txtName" runat="server" CssClass="input"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName"
                    runat="server"
                    ControlToValidate="txtName"
                    ErrorMessage="Please enter your name"
                    CssClass="error"
                    Display="Dynamic" />
            </div>

            <div class="form-group">
                <label>Service</label>
                <asp:TextBox ID="txtService" runat="server" CssClass="input" ReadOnly="true"></asp:TextBox>
                <asp:HiddenField ID="hdnService" runat="server" />
            </div>

            <div class="form-group">
                <label>Date</label>
                <asp:TextBox ID="txtDate" TextMode="Date" runat="server" CssClass="input"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDate"
                    runat="server"
                    ControlToValidate="txtDate"
                    ErrorMessage="Please select a date"
                    CssClass="error"
                    Display="Dynamic" />
            </div>

            <div class="form-group">
                <label>Time</label>
                <asp:DropDownList ID="ddlTime" runat="server" CssClass="input">
                    <asp:ListItem Text="-- Select --" Value="" />
                    <asp:ListItem>09:00 AM</asp:ListItem>
                    <asp:ListItem>10:00 AM</asp:ListItem>
                    <asp:ListItem>11:00 AM</asp:ListItem>
                    <asp:ListItem>12:00 PM</asp:ListItem>
                    <asp:ListItem>01:00 PM</asp:ListItem>
                    <asp:ListItem>02:00 PM</asp:ListItem>
                    <asp:ListItem>03:00 PM</asp:ListItem>
                    <asp:ListItem>04:00 PM</asp:ListItem>
                    <asp:ListItem>05:00 PM</asp:ListItem>
                </asp:DropDownList>

                <asp:RequiredFieldValidator ID="rfvTime"
                    runat="server"
                    ControlToValidate="ddlTime"
                    InitialValue=""
                    ErrorMessage="Please select a time"
                    CssClass="error"
                    Display="Dynamic" />
            </div>

            <asp:Button ID="btnConfirm" 
                        runat="server" 
                        Text="Confirm Appointment" 
                        CssClass="btn"
                        OnClick="btnConfirm_Click" />
        </div>

    </div>

</asp:Content>
