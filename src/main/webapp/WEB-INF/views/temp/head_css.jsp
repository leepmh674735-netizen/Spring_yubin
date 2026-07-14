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
        background-color: #fff0f3;
        transition: all 0.3s ease;
    }
    
    /* Cute Gradient Sidebar */
    .bg-gradient-primary {
        background: linear-gradient(135deg, #ff85a2 0%, #f7aef8 100%) !important;
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
        border: 3px solid #ffccd5 !important;
        border-radius: 24px !important;
        background-color: #ffffff !important;
        box-shadow: 0 12px 30px rgba(255, 133, 162, 0.12) !important;
        transition: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1) !important;
        overflow: hidden;
    }

    .card:hover {
        transform: translateY(-8px) scale(1.015) !important;
        box-shadow: 0 18px 40px rgba(255, 133, 162, 0.22) !important;
        border-color: #ff85a2 !important;
    }

    .card-header {
        background-color: #fff0f3 !important;
        border-bottom: 3px solid #ffccd5 !important;
        font-family: 'Fredoka One', 'Jua', sans-serif !important;
        color: #ff477e !important;
    }

    /* Rounded & Cute Buttons */
    .btn {
        border-radius: 30px !important;
        font-weight: 800 !important;
        padding: 0.6rem 1.6rem !important;
        text-transform: uppercase;
        letter-spacing: 0.5px;
        transition: all 0.25s cubic-bezier(0.175, 0.885, 0.32, 1.275) !important;
    }

    .btn-primary {
        background-color: #ff85a2 !important;
        border: 2px solid #ffccd5 !important;
        color: white !important;
        box-shadow: 0 6px 20px rgba(255, 133, 162, 0.3) !important;
    }

    .btn-primary:hover {
        background-color: #ff477e !important;
        transform: translateY(-4px) scale(1.05) !important;
        box-shadow: 0 10px 25px rgba(255, 133, 162, 0.5) !important;
    }

    /* Custom Form Fields */
    .form-control {
        border-radius: 18px !important;
        border: 3px solid #ffccd5 !important;
        padding: 0.8rem 1.4rem !important;
        background-color: #fffafb !important;
        transition: all 0.2s ease !important;
    }

    .form-control:focus {
        border-color: #ff477e !important;
        background-color: #ffffff !important;
        box-shadow: 0 0 0 0.25rem rgba(255, 71, 126, 0.2) !important;
    }

    /* Topbar styling */
    .navbar {
        background-color: rgba(255, 255, 255, 0.9) !important;
        backdrop-filter: blur(12px);
        box-shadow: 0 6px 20px rgba(255, 133, 162, 0.05) !important;
        border-bottom: 3px solid #fff0f3;
    }

    /* Custom sidebar brand style */
    .sidebar-brand-text {
        font-family: 'Fredoka One', sans-serif !important;
        font-size: 1.3rem !important;
        color: #ffffff !important;
        text-shadow: 3px 3px 6px rgba(0, 0, 0, 0.15);
    }

    /* Floating Chibi Mascot in Bottom-Right Corner */
    .floating-mascot {
        position: fixed;
        bottom: 30px;
        right: 30px;
        width: 140px;
        height: auto;
        z-index: 9999;
        pointer-events: auto;
        cursor: pointer;
        filter: drop-shadow(0 12px 20px rgba(255, 133, 162, 0.45));
        animation: mascotFloat 4s ease-in-out infinite;
        transition: all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
    }

    .floating-mascot:hover {
        transform: scale(1.18) rotate(8deg);
        filter: drop-shadow(0 18px 30px rgba(255, 133, 162, 0.65));
    }

    @keyframes mascotFloat {
        0% { transform: translateY(0px) rotate(0deg); }
        50% { transform: translateY(-15px) rotate(-4deg); }
        100% { transform: translateY(0px) rotate(0deg); }
    }

    /* Cute Header Banner at top of container-fluid */
    .container-fluid::before {
        content: "";
        display: block;
        width: 100%;
        height: 180px;
        border-radius: 24px;
        background: url('/images/cute_banner.png') no-repeat center center;
        background-size: cover;
        margin-bottom: 30px;
        box-shadow: 0 10px 25px rgba(255, 133, 162, 0.15);
        border: 3px solid #ffccd5;
    }

    /* Custom Cute Scrollbar */
    ::-webkit-scrollbar {
        width: 10px;
    }
    ::-webkit-scrollbar-track {
        background: #fff0f3;
    }
    ::-webkit-scrollbar-thumb {
        background: #ff85a2;
        border-radius: 5px;
    }
    ::-webkit-scrollbar-thumb:hover {
        background: #ff477e;
    }
</style>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        // Create floating mascot element
        const mascot = document.createElement("img");
        mascot.src = "/images/cute_mascot.png";
        mascot.className = "floating-mascot";
        mascot.alt = "Mascot Sticker";
        mascot.onclick = function() {
            // Playful bounce effect when clicked
            mascot.style.transform = "scale(1.45) translateY(-25px) rotate(15deg)";
            setTimeout(() => { mascot.style.transform = ""; }, 400);
        };
        document.body.appendChild(mascot);
    });
</script>