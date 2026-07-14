<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Custom fonts for this template-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet" type="text/css">
<!-- Cute, modern Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Fredoka+One&family=Outfit:wght@300;400;600;800&family=Jua&display=swap" rel="stylesheet">

<!-- SB Admin 2 style from CDN -->
<link href="https://cdn.jsdelivr.net/npm/startbootstrap-sb-admin-2@4.1.4/css/sb-admin-2.min.css" rel="stylesheet">

<!-- Cute, Cool, and Premium Custom Style Overrides -->
<style>
    /* Global Cute Font & Smooth Transitions */
    body {
        font-family: 'Outfit', 'Jua', 'Nunito', sans-serif !important;
        background-color: #f7f9fc;
        transition: all 0.3s ease;
    }
    
    /* Cute Gradient Sidebar */
    .bg-gradient-primary {
        background: linear-gradient(135deg, #ff758c 0%, #ff7eb3 100%) !important;
        background-size: 200% 200% !important;
        animation: gradientBG 8s ease infinite !important;
    }

    @keyframes gradientBG {
        0% { background-position: 0% 50%; }
        50% { background-position: 100% 50%; }
        100% { background-position: 0% 50%; }
    }

    /* Premium Neumorphic / Cute Cards */
    .card {
        border: none !important;
        border-radius: 20px !important;
        box-shadow: 0 10px 25px rgba(255, 117, 140, 0.1) !important;
        transition: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1) !important;
    }

    .card:hover {
        transform: translateY(-8px) scale(1.02) !important;
        box-shadow: 0 15px 35px rgba(255, 117, 140, 0.2) !important;
    }

    /* Rounded & Cute Buttons */
    .btn {
        border-radius: 30px !important;
        font-weight: 600 !important;
        padding: 0.5rem 1.5rem !important;
        transition: all 0.2s ease !important;
    }

    .btn-primary {
        background-color: #ff758c !important;
        border-color: #ff758c !important;
        box-shadow: 0 4px 15px rgba(255, 117, 140, 0.3) !important;
    }

    .btn-primary:hover {
        background-color: #ff5e7e !important;
        border-color: #ff5e7e !important;
        transform: translateY(-2px) !important;
        box-shadow: 0 6px 20px rgba(255, 117, 140, 0.4) !important;
    }

    /* Custom Form Fields */
    .form-control {
        border-radius: 15px !important;
        border: 2px solid #ffe3e7 !important;
        padding: 0.75rem 1.25rem !important;
        transition: all 0.2s ease !important;
    }

    .form-control:focus {
        border-color: #ff758c !important;
        box-shadow: 0 0 0 0.2rem rgba(255, 117, 140, 0.25) !important;
    }

    /* Topbar styling */
    .navbar {
        background-color: rgba(255, 255, 255, 0.9) !important;
        backdrop-filter: blur(10px);
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.03) !important;
        border-bottom: 1px solid #ffe3e7;
    }

    /* Custom sidebar brand style */
    .sidebar-brand-text {
        font-family: 'Fredoka One', sans-serif !important;
        font-size: 1.2rem !important;
        color: #ffffff !important;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
    }
</style>