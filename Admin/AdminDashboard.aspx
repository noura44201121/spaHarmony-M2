<%@ Page Title="Admin Dashboard" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs"
    Inherits="spaHarmony_M2.Admin.AdminDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-wrapper">

        <div class="card admin-dashboard-card">
            <div class="admin-header">
                <div class="admin-icon-circle">
                    <span>🧴</span>
                </div>
                <div>
                    <h1 class="dash-title">Admin Dashboard</h1>
                    <p class="dash-subtitle">Manage your salon operations</p>
                </div>
            </div>

            <div class="dash-grid">
                <div class="dash-box">
                    <div class="dash-box-icon">👤</div>
                    <h3>Manage Users</h3>
                    <p>View and manage client accounts</p>
                    <asp:Button ID="btnUsers" runat="server" Text="Open" CssClass="dash-btn" />
                </div>

                <div class="dash-box">
                    <div class="dash-box-icon">✂️</div>
                    <h3>Manage Services</h3>
                    <p>Add, edit, or remove services</p>
                    <asp:Button ID="btnServices" runat="server" Text="Open" CssClass="dash-btn" />
                </div>

                <div class="dash-box">
                    <div class="dash-box-icon">🗓️</div>
                    <h3>Manage Availability</h3>
                    <p>Set working hours and days</p>
                    <asp:Button ID="btnAvailability" runat="server" Text="Open" CssClass="dash-btn" />
                </div>

                <div class="dash-box">
                    <div class="dash-box-icon">📋</div>
                    <h3>Manage Appointments</h3>
                    <p>View and organize bookings</p>
                    <asp:Button ID="btnAppointments" runat="server" Text="Open" CssClass="dash-btn" />
                </div>
            </div>

            <div class="dash-stats">
                <div class="stat-box">
                    <span class="stat-number">24</span>
                    <span class="stat-label">Total Users</span>
                </div>
                <div class="stat-box">
                    <span class="stat-number">2</span>
                    <span class="stat-label">Active Services</span>
                </div>
                <div class="stat-box">
                    <span class="stat-number">12</span>
                    <span class="stat-label">Today's Appointments</span>
                </div>
            </div>
        </div>

    </div>
</asp:Content>

