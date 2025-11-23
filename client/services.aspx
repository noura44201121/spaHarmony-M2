<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="services.aspx.cs" Inherits="spaHarmony_M2.Client.services" %>
<html>
<head runat="server">
    <title>Our Services</title>
    <link rel="stylesheet" href="/Content/style.css" />
</head>

<body class="page-wrapper">
<form runat="server">

    <a href="/client/home.aspx" class="back-link">← Back to Home</a>

    <h1 class="title">Our Services</h1>
    <p class="subtitle">Choose a service to book your appointment</p>

    <div class="services-container">

        <div class="service-card">
            <div class="icon">🦶</div>
            <h2 class="service-title">Pedicure</h2>
            <p class="service-desc">Professional foot care and nail treatment</p>

            <asp:HyperLink ID="lnkBookPedicure"
                NavigateUrl="~/client/BookAppointment.aspx?service=Pedicure"
                CssClass="main-btn"
                Text="Book Now"
                runat="server" />
        </div>

        <div class="service-card">
            <div class="icon">💅</div>
            <h2 class="service-title">Manicure</h2>
            <p class="service-desc">Beautiful nail care and polish application</p>

            <asp:HyperLink ID="lnkBookManicure"
                NavigateUrl="~/client/BookAppointment.aspx?service=Manicure"
                CssClass="main-btn"
                Text="Book Now"
                runat="server" />
        </div>

    </div>

</form>
</body>
</html>
