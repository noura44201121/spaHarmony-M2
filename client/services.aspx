<%@ Page Title="Our Services" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="services.aspx.cs"
    Inherits="spaHarmony_M2.Client.services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="page-wrapper" style="text-align:center; margin-top:40px;">

        <h1 class="title">Our Services</h1>
        <p>Choose a service to book your appointment</p>

        <div style="
            display:flex;
            justify-content:center;
            align-items:stretch;
            gap:30px;
            margin-top:30px;
            flex-wrap:wrap;">

            <div style="
                width:260px;
                padding:25px 20px;
                background:#ffffff;
                border-radius:18px;
                box-shadow:0 4px 12px rgba(0,0,0,0.08);
                display:flex;
                flex-direction:column;
                align-items:center;">
                
                <div style="font-size:32px; margin-bottom:8px;">🦶</div>
                <h3 style="margin-bottom:6px;">Pedicure</h3>
                <p style="font-size:13px; margin-bottom:18px;">
                    Professional foot care and nail treatment
                </p>
                <a href="BookAppointment.aspx?service=Pedicure"
                   style="
                       display:block;
                       width:100%;
                       padding:10px;
                       background:#d95375;
                       color:white;
                       border-radius:8px;
                       text-decoration:none;
                       font-weight:bold;">
                    Book Now
                </a>
            </div>

            <div style="
                width:260px;
                padding:25px 20px;
                background:#ffffff;
                border-radius:18px;
                box-shadow:0 4px 12px rgba(0,0,0,0.08);
                display:flex;
                flex-direction:column;
                align-items:center;">

                <div style="font-size:32px; margin-bottom:8px;">💅</div>
                <h3 style="margin-bottom:6px;">Manicure</h3>
                <p style="font-size:13px; margin-bottom:18px;">
                    Beautiful nail care and polish application
                </p>
                <a href="BookAppointment.aspx?service=Manicure"
                   style="
                       display:block;
                       width:100%;
                       padding:10px;
                       background:#d95375;
                       color:white;
                       border-radius:8px;
                       text-decoration:none;
                       font-weight:bold;">
                    Book Now
                </a>
            </div>

        </div>

    </div>

</asp:Content>
