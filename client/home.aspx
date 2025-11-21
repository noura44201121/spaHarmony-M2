<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="spaHarmony_M2.Client.home" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Harmony</title>
    <link rel="stylesheet" href="/Content/style.css" />

    <style>
        body {
            background: #f9f3f6;
            font-family: Arial, sans-serif;
        }

        .home-wrapper {
            text-align: center;
            margin-top: 80px;
        }

      
        .home-logo img {
            width: 90px;
            margin-bottom: 20px;
        }

       
        .home-title {
            font-size: 42px;
            font-weight: bold;
            color: #b76476;
            margin-bottom: 8px;
        }

        .home-subtitle {
            color: #555;
            font-size: 18px;
            margin-bottom: 40px;
        }

       
        .btn-main {
            background: #b76476;
            color: white;
            padding: 15px 40px;
            border-radius: 50px;
            display: block;
            margin: 12px auto;
            width: 280px;
            text-decoration: none;
            font-size: 18px;
            transition: 0.2s;
            font-weight: bold;
        }

        .btn-main:hover {
            background: #a55466;
        }

       
        .btn-secondary {
            border: 2px solid #b76476;
            color: #b76476;
            padding: 15px 40px;
            border-radius: 50px;
            display: block;
            margin: 12px auto;
            width: 280px;
            text-decoration: none;
            font-size: 18px;
            background: white;
            transition: 0.2s;
            font-weight: bold;
        }

        .btn-secondary:hover {
            background: #f7e8ec;
        }

        .footer {
            text-align: center;
            margin-top: 60px;
            color: #777;
        }
    </style>
</head>

<body>
    <form runat="server">

        <div class="home-wrapper">

            <div class="home-logo">
                <img src="/assets/logo.png" alt="Logo" />
            </div>

            <h1 class="home-title">Harmony</h1>
            <p class="home-subtitle">Salon Booking System</p>

            <a href="/client/login.aspx" class="btn-main">Client Login</a>
            <a href="/admin/login.aspx" class="btn-secondary">Admin Login</a>

        </div>

        <div class="footer">
            © 2024 Spa Harmony
        </div>

    </form>
</body>
</html>