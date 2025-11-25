<%@ Page Title="Admin Dashboard" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs"
    Inherits="spaHarmony_M2.Admin.AdminDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="dashboard-container">
     <a href="../home.aspx" class="back-link">&larr; Back to Home</a>

    <div class="dashboard-card">
        <img src="../assets/logo.png.png" alt="icon" class="dash-icon" /> 
        <h1 class="dash-title">Admin Dashboard</h1>
        <p class="dash-subtitle">Manage your salon operations</p>

        <div class="dash-grid">
            <div class="dash-box">
                <h3>Manage Users</h3>
                <p>View and manage client accounts</p>
                <asp:Button ID="btnUsers" runat="server" Text="Open" CssClass="dash-btn" />
            </div>

            <div class="dash-box">
                <h3>Manage Services</h3>
                <p>Add, edit, or remove services</p>
                <asp:Button ID="btnServices" runat="server" Text="Open" CssClass="dash-btn" />
            </div>

            <div class="dash-box">
                <h3>Manage Availability</h3>
                <p>Set working hours and days</p>
                <asp:Button ID="btnAvailability" runat="server" Text="Open" CssClass="dash-btn" />
            </div>

            <div class="dash-box">
                <h3>Manage Appointments</h3>
                <p>View and organize bookings</p>
                <asp:Button ID="btnAppointments" runat="server" Text="Open" CssClass="dash-btn" />
            </div>
        </div>

        <!-- إحصائيات -->
        <div class="dash-stats">
            <div class="stat-box">24<br /><span>Total Users</span></div>
            <div class="stat-box">2<br /><span>Active Services</span></div>
            <div class="stat-box">12<br /><span>Today's Appointments</span></div>
        </div>
    </div>
</div>
</asp:Content>