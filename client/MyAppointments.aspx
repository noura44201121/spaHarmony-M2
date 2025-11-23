<%@ Page Title="My Appointments" Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="MyAppointments.aspx.cs"
    Inherits="spaHarmony_M2.client.MyAppointments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="page-wrapper" style="padding:40px 0;">
        <h1 class="page-title">My Appointments</h1>
        <p class="page-subtitle">Here are all the appointments you booked.</p>

        <div class="card" style="max-width:800px; margin:auto; padding:30px; background:#fff; border-radius:20px;">

            <!-- حالة ما فيه مواعيد -->
            <asp:Panel ID="pnlEmpty" runat="server" Visible="false">
                <div style="text-align:center; padding:40px 20px;">
                    <div style="font-size:48px; margin-bottom:15px;">📅</div>
                    <h2 style="margin-bottom:10px; color:#b14359;">No appointments booked yet</h2>
                    <p style="margin-bottom:20px; color:#777;">
                        Start by booking your first appointment.
                    </p>

                    <asp:HyperLink ID="lnkFirstAppointment"
                                   runat="server"
                                   NavigateUrl="~/client/services.aspx"
                                   CssClass="btn">
                        Book Your First Appointment
                    </asp:HyperLink>
                </div>
            </asp:Panel>

            <!-- حالة فيه مواعيد -->
            <asp:Panel ID="pnlAppointments" runat="server" Visible="false">
                <asp:GridView ID="gvAppointments"
                              runat="server"
                              CssClass="appointment-table"
                              AutoGenerateColumns="False"
                              GridLines="None"
                              DataKeyNames="Id"
                              OnRowCommand="gvAppointments_RowCommand">

                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Your Name" />
                        <asp:BoundField DataField="Service" HeaderText="Service" />
                        <asp:BoundField DataField="Date" HeaderText="Date" />
                        <asp:BoundField DataField="Time" HeaderText="Time" />

                        <asp:ButtonField Text="Cancel"
                                         CommandName="CancelAppointment"
                                         ButtonType="Button"
                                         ControlStyle-CssClass="cancel-btn" />
                    </Columns>
                </asp:GridView>
            </asp:Panel>

        </div>
    </div>

</asp:Content>

