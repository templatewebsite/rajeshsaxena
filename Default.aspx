﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Title of The Page -->
    <title>Rajesh : Web Designer | UI Developer | HTML Developer  </title>
    <!-- Meta Informations -->
    <meta charset="utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content="" />
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Favicon -->
    <link type="image/x-icon" rel="shortcut icon" href="http://rajeshsaxena.online/images/favicon.svg" />
    <!-- Font CSS -->
    <link type="text/css" rel="stylesheet" href="fonts/font.css" />
    <!-- Font-Awesome All CSS -->
    <link type="text/css" rel="stylesheet" href="css/all.css" />
    <!-- Bootstrap CSS -->
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- Owlcarousel CSS -->
    <link type="text/css" rel="stylesheet" href="css/owl.carousel.min.css" />
    <!-- Fancybox CSS -->
    <link type="text/css" rel="stylesheet" href="css/jquery.fancybox.min.css" />
    <!-- Animate CSS -->
    <link type="text/css" rel="stylesheet" href="css/animate.min.css" />
    <!-- colors CSS -->
    <link rel="stylesheet" type="text/css" href="css/colors.css" />
    <!-- Styles CSS -->
    <link type="text/css" rel="stylesheet" href="css/styles.css" />
    <link href="css/screen.css" rel="stylesheet" />
    <!-- Live Style Switcher - demo only -->
    <link href="css/colors/orange.css" media="screen" rel="stylesheet" type="text/css" />
    <!-- Responsive CSS -->
    <link type="text/css" rel="stylesheet" href="css/responsive.css" />

</head>
<body>
    <form id="form1" runat="server">
        <!-- Body Part Start -->
        <div class="gaspar" data-magic-cursor="show" data-color="crimson">
            <!-- Pre-Loader Start-->
            <div id="preloader">
                <div class="loader_line"></div>
            </div>
            <!-- Pre-Loader end -->

            <!-- Header-section Start-->
            <div class="header-holder services-section text-center animate__animated animate__zoomIn">
                <div class="navigation">
                    <ul class="nav">
                        <li class="list active">
                            <a href="#home" class="active">
                                <span class="icon">
                                    <i class="fas fa-house-user"></i>
                                </span>
                                <div class="social__tooltip social__tooltip-bottom">Home</div>
                            </a>
                        </li>
                        <li class="list">
                            <a href="#about">
                                <span class="icon">
                                    <i class="fas fa-user-alt"></i>
                                </span>
                                <div class="social__tooltip social__tooltip-bottom">About</div>
                            </a>
                        </li>
                        <li class="list">
                            <a href="#portfolio">
                                <span class="icon">
                                    <i class="fas fa-briefcase"></i>
                                </span>
                                <div class="social__tooltip social__tooltip-bottom">Portfolio</div>
                            </a>
                        </li>
                        <li class="list">
                            <a href="#contact">
                                <span class="icon">
                                    <i class="fas fa-phone-alt"></i>
                                </span>
                                <div class="social__tooltip social__tooltip-bottom">Contact</div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- Header-section End-->

            <!-- section-part Start -->
            <div class="container ">
                <!-- Index-page Start -->
                <section id="home" class="section active">
                    <div class="homecolor-box"></div>
                    <div class="common_bg animate__animated animate__zoomIn">
                        <div class="container m-auto">
                            <div class="row align-items-center">
                                <!-- Profile-Pic -->
                                <div class=" col-xl-5 col-lg-6 col-md-6 col-12">
                                    <div class="home-profile animate__animated animate__fadeInLeft animate__delay-1s">
                                        <img src="http://rajeshsaxena.online/images/profile/profile.svg" alt="home-profile" />
                                    </div>
                                </div>
                                <!-- Profile-Pic End-->
                                <!-- Profile-Information -->
                                <div class="col-xl-7 col-lg-6 col-md-6 col-12">
                                    <div class="home-content">
                                        <p class="common-desctiption animate__animated animate__fadeInDown animate__delay-1s">Get to know me</p>
                                        <h1 class="common-title animate__animated animate__fadeInDown animate__delay-1s">Rajesh</h1>
                                        <div class="animated-bar animate__animated animate__fadeInDown animate__delay-2s"></div>
                                        <div class="animated-text animate__animated animate__fadeInDown animate__delay-2s">
                                            <h3>Web Designer</h3>
                                            <h3>Software Engineer</h3>
                                        </div>
                                        <!-- Social media icons-->
                                        <div class="fixed-block animate__animated animate__jackInTheBox animate__delay-2-5s">
                                            <ul class="list-unstyled social-icons">
                                                <li><a href="https://www.linkedin.com/in/rajesh-saxena-1996a01a8" target="_blank"><i class="fab fa-linkedin "></i></a></li>
                                                <li><a href="https://wa.me/918477815348" target="_blank"><i class="fab fa-whatsapp"></i></a></li>
                                                <li><a href="https://www.facebook.com/rajesh.saxena.98229" target="_blank"><i class="fab fa-facebook-square "></i></a></li>
                                                <li><a href="https://www.instagram.com/maurya.rajesh_143/" target="_blank"><i class="fab fa-instagram-square"></i></a></li>
                                                <%-- <li><a href="javascript:void(0)"><i class="fab fa-twitter"></i></a></li>--%>
                                            </ul>
                                        </div>
                                        <p class="text-justify animate__animated animate__zoomIn animate__delay-2-5s">
                                            My name is Rajesh. I am a Web Designer, and I am very passionate and dedicated to my work.
                                             With 3+ years experience as a professional Web Designer,
                                             I have acquired the skills and knowledge necessary to make your project a success. 
                                            I enjoy every step of the design process, from discussion and collaboration.
                                            Ability to work effectively in teams, including taking directions from others, 
                                            showing work progress, and contributing ideas to enhance productivity.
                                        </p>
                                        <div class="home-btn">
                                            <a href="#contact" data-section-index="1"
                                                class="clickbtn hire-me animate__animated animate__fadeInTopLeft animate__delay-3s ">Hire me</a>
                                            <a href="#about" data-section-index="1"
                                                class="clickbtn about-us animate__animated animate__fadeInTopRight animate__delay-3s">about me </a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Profile-Information End -->
                            </div>
                        </div>
                    </div>
                </section>
                <!-- Index-page End -->

                <!-- About Section Start -->
                <section id="about" class="section ">
                    <div class="homecolor-box"></div>
                    <div class="common_bg animate__animated animate__fadeInDown">
                        <div class="container">
                            <div class="about-content">
                                <!-- About Title Start-->
                                <div class="row ">
                                    <div class="col-12 ">
                                        <div class="section-title animate__animated animate__fadeInDown animate__delay-1s">
                                            <p class="common-desctiption">my intro</p>
                                            <h1 class="common-title">About <span>Me</span></h1>
                                            <div class="animated-bar"></div>
                                        </div>
                                    </div>
                                </div>
                                <!-- About Title End -->
                                <!-- About-Me -->
                                <div class="row single-section">
                                    <%--<div class="col-lg-4 profile-photo animate__animated animate__fadeInLeft animate__delay-2s ">
                                        <div class="row">
                                            <div class="col-12 d-block col-sm-none">
                                                <img src="images/profile/simple.jpg" class="img-fluid main-img-mobile" alt="my picture">
                                            </div>
                                        </div>
                                    </div>--%>
                                    <div class="col-lg-12 col-sm-12">
                                        <div class="row personal-info animate__animated animate__fadeInRight animate__delay-2s">

                                            <div class="col-12">
                                                <h3 class="personal-title">I'm Rajesh, I Have  <span>3+ years experience</span> in <span>Web Designing</span></h3>
                                                <p class="info text-justify">
                                                    I enjoy solving technical challenges, engaging with the designer community, improving developer experiences, contributing to open-source design, problem-solving, user experience design, continuous improvement, and learning new thing. my achievements/tasks like - website designing, ecommerce website designing, dashboard designing, user- centered design, seeks a position with a top technology firm.  I’ve always introduced myself as a ,web designer,and lover of tech. I have a passion for traveling and seeing all parts of the world. I like travelling.  you can always find me at restaurants around town. I like trying new things.
                                                    <br />
                                                    Now, I think, I have told a lot about myself. I would like to thank you  to have given your precious time to read to about me .  Thank you very much.
                                                </p>
                                            </div>

                                            <div class="row align-items-center">
                                                <div class="col-lg-12">
                                                    <h3 class="personal-infotitle">personal <span>informations</span></h3>
                                                </div>

                                                <div class="col-lg-6">
                                                    <ul class="about-you ">
                                                        <li>
                                                            <span class="title">Name :</span>
                                                            <span class="value">Rajesh</span>
                                                        </li>
                                                        <li>
                                                            <span class="title">Mobile No. :</span>
                                                            <span class="value"><a href="tel:8477815348">+91 8477815348</a></span>
                                                        </li>
                                                        <li>
                                                            <span class="title">E-mail :</span>
                                                            <span class="value"><a href="mailto:rajeshsaxena842@gmail.com">rajeshsaxena842@gmail.com</a></span>
                                                        </li>


                                                    </ul>
                                                </div>
                                                <div class="col-lg-6">
                                                    <ul class="about-you ">
                                                        <li>
                                                            <span class="title">Languages :</span>
                                                            <span class="value">Hindi, English</span>
                                                        </li>
                                                        <li>
                                                            <span class="title">Freelance :</span>
                                                            <span class="value">Available</span>
                                                        </li>
                                                        <li>
                                                            <span class="title">address :</span>
                                                            <span class="value">Rudrapur, Uttarakhand</span>
                                                        </li>
                                                    </ul>
                                                </div>

                                                <div class="col-lg-12 mt-4">
                                                    <div class="About-btn">
                                                        <a href="images/profile/Rajesh's%20Resume.pdf" target="_blank" class="clickbtn download-cv">Download CV <i class="fa fa-download" aria-hidden="true"></i></a>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- About-Me End -->
                                <!-- Resume section Start -->
                                <div class="resume-section ">
                                    <!-- Resume title-->
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="section-title animate__animated animate__fadeInUp animate__delay-3s">
                                                <p class="common-desctiption">Check out my Resume</p>
                                                <h1 class="common-title ">my <span>Resume</span></h1>
                                                <div class="animated-bar "></div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Resume title End-->
                                    <!-- Resume Content -->
                                    <div class="row">
                                        <!-- Education part-->
                                        <div class="col-md-6 col-12">
                                            <div class=" col-block education ">
                                                <h3 class="about-subtitle">Education</h3>
                                                <div class="resume-item">
                                                    <span class="item-arrow"></span>
                                                    <h5 class="item-title">M.D.V.M Inter College Bilaspur, Rampur</h5>
                                                    <span
                                                        class="item-details"><strong>HIGH SCHOOL</strong></span>
                                                    <div>
                                                        <span
                                                            class="item-details"><strong>Year Of Passing</strong>&ensp;<strong>:</strong>&ensp;2013 - 2014</span>
                                                    </div>
                                                    <div>
                                                        <span
                                                            class="item-details"><strong>SCIENCE</strong>&ensp;-&ensp;U.P Board</span>
                                                    </div>
                                                    <div>
                                                        <span
                                                            class="item-details"><strong>Percentage</strong>&ensp;-&ensp;78.83%</span>
                                                    </div>

                                                </div>
                                                <div class="resume-item">
                                                    <span class="item-arrow"></span>
                                                    <h5 class="item-title">D.A.V Inter College Visharad Nagar Bilaspur, Rampur</h5>
                                                    <span
                                                        class="item-details"><strong>INTERMEDIATE</strong></span>
                                                    <div>
                                                        <span
                                                            class="item-details"><strong>Year Of Passing</strong>&ensp;<strong>:</strong>&ensp;2015 - 2016</span>
                                                    </div>
                                                    <div>
                                                        <span
                                                            class="item-details"><strong>P.C.M</strong>&ensp;-&ensp;U.P Board</span>
                                                    </div>
                                                    <div>
                                                        <span
                                                            class="item-details"><strong>Percentage</strong>&ensp;-&ensp;71%</span>
                                                    </div>

                                                </div>
                                                <div class="resume-item">
                                                    <span class="item-arrow"></span>
                                                    <h5 class="item-title">Apex College of Management & Computer Applications, Kaushalganj, Rampur</h5>
                                                    <div>
                                                        <span
                                                            class="item-details"><strong>(BCA) BECHELOR OF COMPUTER APPLICATION </strong></span>
                                                    </div>

                                                    <div>
                                                        <span
                                                            class="item-details"><strong>Year Of Passing</strong>&ensp;<strong>:</strong>&ensp;2013 - 2014</span>
                                                    </div>
                                                    <div>
                                                        <span
                                                            class="item-details"><strong>CS</strong>&ensp;<strong>:</strong>&ensp;M.J.P.R.U Bareilly</span>
                                                    </div>
                                                    <div>
                                                        <span
                                                            class="item-details"><strong>Percentage</strong>&ensp;<strong>:</strong>&ensp;63%</span>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                        <!-- Experience part-->
                                        <div class="col-md-6 col-12 ">
                                            <div class=" col-block education">
                                                <h3 class="about-subtitle">Experience</h3>
                                                <div class="resume-item">
                                                    <span class="item-arrow"></span>
                                                    <h5 class="item-title">Web Designer</h5>
                                                    <h6>Lm Softech IT Solutions, Bareilly</h6>
                                                    <span class="item-details">05/2019 - 11/2020</span>
                                                    <p><strong>Achievements/Tasks</strong></p>
                                                    <ul class="task-lists">
                                                        <li>
                                                            <p><i class="fa fa-angle-double-right"></i>Creating website designs</p>
                                                        </li>
                                                        <li>
                                                            <p><i class="fa fa-angle-double-right"></i>PSD to html conversion</p>
                                                        </li>
                                                        <li>
                                                            <p><i class="fa fa-angle-double-right"></i>Theme Customization</p>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="resume-item">
                                                    <span class="item-arrow"></span>
                                                    <h5 class="item-title">Web Designer</h5>
                                                    <h6>Script Technology, Noida</h6>
                                                    <span class="item-details">12/2020 - 12/2021</span>
                                                    <p><strong>Achievements/Tasks</strong></p>
                                                    <ul class="task-lists">
                                                        <li>
                                                            <p><i class="fa fa-angle-double-right"></i>Creating website designs</p>
                                                        </li>
                                                        <li>
                                                            <p><i class="fa fa-angle-double-right"></i>PSD to html conversion</p>
                                                        </li>
                                                        <li>
                                                            <p><i class="fa fa-angle-double-right"></i>Dashboard Design</p>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="resume-item">
                                                    <span class="item-arrow"></span>
                                                    <h5 class="item-title">Web Designer</h5>
                                                    <h6>Prodigy Data Services Pvt. Ltd, Gurugram</h6>
                                                    <span class="item-details">01/2022 - Present</span>
                                                    <p><strong>Achievements/Tasks</strong></p>
                                                    <ul class="task-lists">
                                                        <li>
                                                            <p><i class="fa fa-angle-double-right"></i>Figma to html conversion</p>
                                                        </li>
                                                        <li>
                                                            <p><i class="fa fa-angle-double-right"></i>PSD to html conversion</p>
                                                        </li>
                                                        <li>
                                                            <p>
                                                                <i class="fa fa-angle-double-right"></i>Wordpress - Elementor
Theme Builder
                                                            </p>
                                                        </li>
                                                        <li>
                                                            <p><i class="fa fa-angle-double-right"></i>Ecommerce Website Design</p>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Resume ContentEnd -->
                                </div>
                                <!-- / Resume section End-->
                                <!-- Skill Bar Section -->
                                <div class="skill-section">
                                    <div class="row">
                                        <div class="col-12 ">
                                            <div class="section-title animate__animated animate__fadeInUp animate__delay-3s">
                                                <p class="common-desctiption">My level of knowledge in some tools</p>
                                                <h1 class="common-title">my <span>skills</span></h1>
                                                <div class="animated-bar"></div>
                                            </div>
                                        </div>
                                        <div class="col-lg-12 col-md-12 ">
                                            <div class="skill-bars">
                                                <div class="bar">
                                                    <div class="info">
                                                        <span>HTML</span>
                                                    </div>
                                                    <div class="progress-line html">
                                                        <span></span>
                                                    </div>
                                                </div>
                                                <div class="bar">
                                                    <div class="info">
                                                        <span>CSS</span>
                                                    </div>
                                                    <div class="progress-line css">
                                                        <span></span>
                                                    </div>
                                                </div>
                                                <div class="bar">
                                                    <div class="info">
                                                        <span>Bootstrap</span>
                                                    </div>
                                                    <div class="progress-line Bootstrap">
                                                        <span></span>
                                                    </div>
                                                </div>
                                                <div class="bar">
                                                    <div class="info">
                                                        <span>Javascript</span>
                                                    </div>
                                                    <div class="progress-line Javascript">
                                                        <span></span>
                                                    </div>
                                                </div>
                                                <div class="bar">
                                                    <div class="info">
                                                        <span>Wordpress - Elementor Theme Builder</span>
                                                    </div>
                                                    <div class="progress-line wordpress">
                                                        <span></span>
                                                    </div>
                                                </div>
                                                <%-- <div class="bar">
                                                    <div class="info">
                                                        <span>ASP.NET</span>
                                                    </div>
                                                    <div class="progress-line mysql">
                                                        <span></span>
                                                    </div>
                                                </div>--%>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <!-- / Skill Bar Section -->
                                <!-- service section  -->
                                <div class="services-section text-center ">
                                    <div class="row ">
                                        <div class="col-12">
                                            <div class="section-title  animate__animated animate__fadeInUp animate__slower animate__delay-3s ">
                                                <p class="common-desctiption">Services i offer to my clients</p>
                                                <h1 class="common-title">My <span>Services</span></h1>
                                                <div class="animated-bar"></div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="row animate__animated animate__zoomIn animate__slower animate__delay-3s">
                                        <!-- Single Item -->
                                        <div
                                            class="col-lg-4 col-sm-6 services-box animate__animated animate__zoomIn animate__slower animate__delay-3s">
                                            <div class="service-item">
                                                <i class="fas fa-laptop-code"></i>
                                                <h4><span class="service-line">web designing</span></h4>
                                            </div>
                                        </div>
                                        <!-- End Single Item -->

                                        <!-- Single Item -->
                                        <div
                                            class="col-lg-4 col-sm-6 services-box animate__animated animate__zoomIn animate__slower animate__delay-3s">
                                            <div class="service-item">
                                                <i class="fas fa-code"></i>
                                                <h4><span class="service-line">web devolopment</span></h4>
                                            </div>
                                        </div>
                                        <!-- End Single Item -->

                                        <!-- Single Item -->
                                        <div
                                            class="col-lg-4 col-sm-6 services-box animate__animated animate__zoomIn animate__slower animate__delay-3s">
                                            <div class="service-item">
                                                <i class="fas fa-palette"></i>
                                                <h4><span class="service-line">custom design</span></h4>
                                            </div>
                                        </div>
                                        <!-- End Single Item -->
                                        <!-- Single Item -->
                                        <div
                                            class="col-lg-4 col-sm-6 services-box animate__animated animate__zoomIn animate__slower animate__delay-3s">
                                            <div class="service-item">
                                                <i class="fas fa-arrows-alt"></i>
                                                <h4><span class="service-line">fully responsive</span></h4>
                                            </div>
                                        </div>
                                        <!-- End Single Item -->

                                        <!-- Single Item -->
                                        <div
                                            class="col-lg-4 col-sm-6 services-box animate__animated animate__zoomIn animate__slower animate__delay-3s">
                                            <div class="service-item">
                                                <i class="fas fa-object-ungroup"></i>
                                                <h4><span class="service-line">PSD To HTML</span></h4>
                                            </div>
                                        </div>
                                        <!-- End Single Item -->

                                        <!-- Single Item -->
                                        <div
                                            class="col-lg-4 col-sm-6 services-box animate__animated animate__zoomIn animate__slower animate__delay-3s">
                                            <div class="service-item">
                                                <i class="far fa-object-ungroup"></i>
                                                <h4><span class="service-line">Theme customization</span></h4>
                                            </div>
                                        </div>
                                        <!-- End Single Item -->

                                    </div>
                                </div>
                                <!-- / service section -->

                                <!-- Achievement Section -->
                                <div class="funfacts-section">
                                    <div class="row">
                                        <div class="col-lg-4 col-md-6">
                                            <div class="funfacts-box">
                                                <h3 class="counter" data-to="3" data-time="10000">0</h3>
                                                <p class="fun-text">years of <span>experience</span></p>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <div class="funfacts-box">
                                                <h3 class="counter" data-to="50" data-time="100000">0</h3>
                                                <p class="fun-text">happy Clients</p>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <div class="funfacts-box">
                                                <h3 class="counter" data-to="100" data-time="100000">0</h3>
                                                <p class="fun-text">completed projects</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- About Section End -->

                <!-- Protfolio Section Start-->
                <section id="portfolio" class="section">
                    <div class="homecolor-box"></div>
                    <div class="common_bg animate__animated animate__fadeInLeft">
                        <div class="container">
                            <div class="protfolio-section text-center  ">
                                <!-- Protfolio-Title Start -->
                                <div class="row">
                                    <div class="col-12">
                                        <div class="section-title animate__animated animate__fadeInDown animate__delay-1s">
                                            <p class="common-desctiption">Showcasing some of my best work</p>
                                            <h1 class="common-title">My <span>Portfolio</span></h1>
                                            <div class="animated-bar"></div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Protfolio-Title Start -->

                                <!-- Portfolio Mix Content Start -->
                                <div class="row portfolio-list animate__zoomIn animate__animated animate__delay-3s">
                                    <div class="container">
                                        <ul class="row ps-0">
                                            <!-- Mix Content-Box -->
                                            <li class=" wordpress  our-link col-xl-4 col-lg-4 col-md-6">
                                                <div class="blackblock">
                                                    <div class="css-mb with-glare">
                                                        <a href="https://www.jtopsbbqshop.com/" class="work-link" target="_blank">
                                                            <div class="mb-display-position">
                                                                <div class="mb-display">
                                                                    <div class="mb-screen-position">
                                                                        <div class="mb-screen">
                                                                            <img src="images/protfolio/jtopsbbqshop.png" />
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </a>
                                                        <div class="mb-body"></div>
                                                        <div class="mb-bottom-cover"></div>
                                                        <div class="overlay"><a href="https://www.jtopsbbqshop.com/" class="work-link" target="_blank">www.jtopsbbqshop.com</a> </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <!-- Mix Content-Box -->
                                            <!-- Mix Content-Box -->
                                            <li class=" wordpress  our-link col-xl-4 col-lg-4 col-md-6">
                                                <div class="blackblock">
                                                    <div class="css-mb with-glare">
                                                        <a href="https://store.liferenu.com/products/female-factor" class="work-link" target="_blank">
                                                            <div class="mb-display-position">
                                                                <div class="mb-display">
                                                                    <div class="mb-screen-position">
                                                                        <div class="mb-screen">
                                                                            <img src="images/protfolio/liferenu.png" />
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </a>
                                                        <div class="mb-body"></div>
                                                        <div class="mb-bottom-cover"></div>
                                                        <div class="overlay"><a href="https://store.liferenu.com/products/female-factor" class="work-link" target="_blank">www.store.liferenu.com</a> </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <!-- Mix Content-Box -->

                                            <!-- Mix Content-Box -->
                                            <li class=" wordpress  our-link col-xl-4 col-lg-4 col-md-6">
                                                <div class="blackblock">
                                                    <div class="css-mb with-glare">
                                                        <a href="https://www.energyadvisorsontario.ca/" class="work-link" target="_blank">
                                                            <div class="mb-display-position">
                                                                <div class="mb-display">
                                                                    <div class="mb-screen-position">
                                                                        <div class="mb-screen">
                                                                            <img src="images/protfolio/energyadvisorsontario.png" />
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </a>
                                                        <div class="mb-body"></div>
                                                        <div class="mb-bottom-cover"></div>
                                                        <div class="overlay"><a href="https://www.energyadvisorsontario.ca/" class="work-link" target="_blank">www.energyadvisorsontario.ca</a> </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <!-- Mix Content-Box -->

                                            <!-- Mix Content-Box -->
                                            <li class=" wordpress  our-link col-xl-4 col-lg-4 col-md-6">
                                                <div class="blackblock">
                                                    <div class="css-mb with-glare">
                                                        <a href="https://astcoin.biz/" class="work-link" target="_blank">
                                                            <div class="mb-display-position">
                                                                <div class="mb-display">
                                                                    <div class="mb-screen-position">
                                                                        <div class="mb-screen">
                                                                            <img src="images/protfolio/astcoin.png" />

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </a>
                                                        <div class="mb-body"></div>
                                                        <div class="mb-bottom-cover"></div>
                                                        <div class="overlay"><a href="https://astcoin.biz/" class="work-link" target="_blank">www.astcoin.biz</a> </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <!-- Mix Content-Box -->

                                            <!-- Mix Content-Box -->
                                            <li class=" wordpress  our-link col-xl-4 col-lg-4 col-md-6">
                                                <div class="blackblock">
                                                    <div class="css-mb with-glare">
                                                        <a href="https://sudsmonkeybrew.com/" class="work-link" target="_blank">
                                                            <div class="mb-display-position">
                                                                <div class="mb-display">
                                                                    <div class="mb-screen-position">
                                                                        <div class="mb-screen">
                                                                            <img src="images/protfolio/sudsmonkeybrew.png" />

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </a>
                                                        <div class="mb-body"></div>
                                                        <div class="mb-bottom-cover"></div>
                                                        <div class="overlay"><a href="https://sudsmonkeybrew.com/" class="work-link" target="_blank">www.sudsmonkeybrew.com</a> </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <!-- Mix Content-Box -->

                                             <!-- Mix Content-Box -->
                                            <li class=" wordpress  our-link col-xl-4 col-lg-4 col-md-6">
                                                <div class="blackblock">
                                                    <div class="css-mb with-glare">
                                                        <a href="https://www.samandbills.com/" class="work-link" target="_blank">
                                                            <div class="mb-display-position">
                                                                <div class="mb-display">
                                                                    <div class="mb-screen-position">
                                                                        <div class="mb-screen">
                                                                            <img src="images/protfolio/samandbills.png" />

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </a>
                                                        <div class="mb-body"></div>
                                                        <div class="mb-bottom-cover"></div>
                                                        <div class="overlay"><a href="https://www.samandbills.com/" class="work-link" target="_blank">www.samandbills.org</a> </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <!-- Mix Content-Box -->

                                            <!-- Mix Content-Box -->
                                            <li class=" wordpress  our-link col-xl-4 col-lg-4 col-md-6">
                                                <div class="blackblock">
                                                    <div class="css-mb with-glare">
                                                        <a href="https://neemliving.net/" class="work-link" target="_blank">
                                                            <div class="mb-display-position">
                                                                <div class="mb-display">
                                                                    <div class="mb-screen-position">
                                                                        <div class="mb-screen">
                                                                            <img src="images/protfolio/neemliving.png" />

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </a>
                                                        <div class="mb-body"></div>
                                                        <div class="mb-bottom-cover"></div>
                                                        <div class="overlay"><a href="https://neemliving.net/" class="work-link" target="_blank">www.neemliving.net</a> </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <!-- Mix Content-Box -->
                                            <!-- Mix Content-Box -->
                                            <li class=" wordpress  our-link col-xl-4 col-lg-4 col-md-6">
                                                <div class="blackblock">
                                                    <div class="css-mb with-glare">
                                                        <a href="https://tasktracker.in/" class="work-link" target="_blank">
                                                            <div class="mb-display-position">
                                                                <div class="mb-display">
                                                                    <div class="mb-screen-position">
                                                                        <div class="mb-screen">
                                                                            <img src="images/protfolio/tasktracker.png" />

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </a>
                                                        <div class="mb-body"></div>
                                                        <div class="mb-bottom-cover"></div>
                                                        <div class="overlay"><a href="https://tasktracker.in/" class="work-link" target="_blank">www.tasktracker.in</a> </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <!-- Mix Content-Box -->

                                            <!-- Mix Content-Box -->
                                            <li class=" wordpress  our-link col-xl-4 col-lg-4 col-md-6">
                                                <div class="blackblock">
                                                    <div class="css-mb with-glare">
                                                        <a href="http://universalgroup.co.in/" class="work-link" target="_blank">
                                                            <div class="mb-display-position">
                                                                <div class="mb-display">
                                                                    <div class="mb-screen-position">
                                                                        <div class="mb-screen">
                                                                            <img src="images/protfolio/universalgroup.png" />

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </a>
                                                        <div class="mb-body"></div>
                                                        <div class="mb-bottom-cover"></div>
                                                        <div class="overlay"><a href="http://universalgroup.co.in/" class="work-link" target="_blank">www.universalgroup.co.in</a> </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <!-- Mix Content-Box -->

                                             <!-- Mix Content-Box -->
                                            <li class=" wordpress  our-link col-xl-4 col-lg-4 col-md-6">
                                                <div class="blackblock">
                                                    <div class="css-mb with-glare">
                                                        <a href="https://everythingmacfl.com/" class="work-link" target="_blank">
                                                            <div class="mb-display-position">
                                                                <div class="mb-display">
                                                                    <div class="mb-screen-position">
                                                                        <div class="mb-screen">
                                                                            <img src="images/protfolio/everythingmacfl.png" />

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </a>
                                                        <div class="mb-body"></div>
                                                        <div class="mb-bottom-cover"></div>
                                                        <div class="overlay"><a href="https://everythingmacfl.com/" class="work-link" target="_blank">www.everythingmacfl.com</a> </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <!-- Mix Content-Box -->

                                            <!-- Mix Content-Box -->
                                            <li class=" wordpress  our-link col-xl-4 col-lg-4 col-md-6">
                                                <div class="blackblock">
                                                    <div class="css-mb with-glare">
                                                        <a href="http://thegyanayaschool.com/" class="work-link" target="_blank">
                                                            <div class="mb-display-position">
                                                                <div class="mb-display">
                                                                    <div class="mb-screen-position">
                                                                        <div class="mb-screen">
                                                                            <img src="images/protfolio/thegyanayaschool.png" />

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </a>
                                                        <div class="mb-body"></div>
                                                        <div class="mb-bottom-cover"></div>
                                                        <div class="overlay"><a href="http://thegyanayaschool.com/" class="work-link" target="_blank">www.thegyanayaschool.com</a> </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <!-- Mix Content-Box -->

                                            <!-- Mix Content-Box -->
                                            <li class=" wordpress  our-link col-xl-4 col-lg-4 col-md-6">
                                                <div class="blackblock">
                                                    <div class="css-mb with-glare">
                                                        <a href="https://dsigmatech.com/" class="work-link" target="_blank">
                                                            <div class="mb-display-position">
                                                                <div class="mb-display">
                                                                    <div class="mb-screen-position">
                                                                        <div class="mb-screen">
                                                                            <img src="images/protfolio/dsigmatech.png" />

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </a>
                                                        <div class="mb-body"></div>
                                                        <div class="mb-bottom-cover"></div>
                                                        <div class="overlay"><a href="https://dsigmatech.com/" class="work-link" target="_blank">www.dsigmatech.com</a> </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <!-- Mix Content-Box -->

                                            <!-- Mix Content-Box -->
                                            <li class=" wordpress  our-link col-xl-4 col-lg-4 col-md-6">
                                                <div class="blackblock">
                                                    <div class="css-mb with-glare">
                                                        <a href="https://devamber.org/" class="work-link" target="_blank">
                                                            <div class="mb-display-position">
                                                                <div class="mb-display">
                                                                    <div class="mb-screen-position">
                                                                        <div class="mb-screen">
                                                                            <img src="images/protfolio/devamber.png" />

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </a>
                                                        <div class="mb-body"></div>
                                                        <div class="mb-bottom-cover"></div>
                                                        <div class="overlay"><a href="https://devamber.org/" class="work-link" target="_blank">www.devamber.org</a> </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <!-- Mix Content-Box -->

                                            <!-- Mix Content-Box -->
                                            <li class=" wordpress  our-link col-xl-4 col-lg-4 col-md-6">
                                                <div class="blackblock">
                                                    <div class="css-mb with-glare">
                                                        <a href="http://sbbtcompany.com/" class="work-link" target="_blank">
                                                            <div class="mb-display-position">
                                                                <div class="mb-display">
                                                                    <div class="mb-screen-position">
                                                                        <div class="mb-screen">
                                                                            <img src="images/protfolio/sbbtcompany.png" />

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </a>
                                                        <div class="mb-body"></div>
                                                        <div class="mb-bottom-cover"></div>
                                                        <div class="overlay"><a href="http://sbbtcompany.com/" class="work-link" target="_blank">www.devamber.org</a> </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <!-- Mix Content-Box -->

                                            


                                        </ul>
                                    </div>
                                </div>
                                <!-- Portfolio Mix Content End -->
                            </div>
                        </div>
                    </div>
                </section>
                <!-- Protfolio Section End -->


                <!-- Contact section Start -->
                <section id="contact" class="section">
                    <div class="homecolor-box"></div>
                    <div class="common_bg animate__animated animate__zoomIn">
                        <div class="container">
                            <!-- Contact-page Start -->
                            <div class="contact-section">
                                <!-- Contact-Section Title -->
                                <div class="row">
                                    <div class="col-12">
                                        <div class="section-title animate__animated animate__fadeInDown animate__delay-1s">
                                            <p class="common-desctiption">Feel free to contact me anytimes</p>
                                            <h1 class="common-title">my <span>contact</span></h1>
                                            <div class="animated-bar"></div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Contact-Section Title End-->
                                <!-- Contact Form Start -->
                                <div class="contact-section">
                                    <div class="row">
                                        <div class="col-lg-5 col-12">
                                            <div class="contact-info  animate__animated animate__fadeInRight animate__delay-4s">
                                                <h4 class="content-title">Contact Info</h4>
                                                <ul class="list-unstyled list-info" style="display: inline-grid">
                                                    <li>
                                                        <div class="media d-flex align-items-center">
                                                            <span class="info-icon"><i
                                                                class="fas fa-map-pin"></i></span>
                                                            <div class="media-body info-details">
                                                                <h6 class="info-type">Location</h6>
                                                                <span class="info-value">Rudrapur, Uttarakhand</span>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="media d-flex align-items-center">
                                                            <span class="info-icon"><i
                                                                class="fas fa-phone-alt"></i></span>
                                                            <div class="media-body info-details">
                                                                <h6 class="info-type">Call&ensp;Me</h6>
                                                                <span class="info-value"><a href="tel:+918477815348">+91 84778-15348</a></span>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="media d-flex align-items-center">
                                                            <span class="info-icon"><i
                                                                class="fas fa-envelope"></i></span>
                                                            <div class="media-body info-details">
                                                                <h6 class="info-type">Email&ensp;Me</h6>
                                                                <span class="info-value"><a
                                                                    href="mailto:rajeshsaxena842@gmail.com">rajeshsaxena842@gmail.com</a></span>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>

                                        <div class="col-lg-7 col-12">
                                            <div class="map animate__animated animate__fadeInRight animate__delay-3s">
                                                <h4 class="content-title">Reach Us</h4>
                                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d55839.49205090696!2d79.36053430337445!3d28.988311742544298!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39a07f9567c1f745%3A0xdffe5c8738783baf!2sRudrapur%2C%20Uttarakhand!5e0!3m2!1sen!2sin!4v1661068351980!5m2!1sen!2sin" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                                            </div>
                                        </div>
                                        <!-- Contact info End -->
                                    </div>
                                </div>
                                <!-- map -->
                                <div class="row mt-5">
                                    <div class="col-12">
                                    </div>
                                </div>
                                <!-- map end -->
                                <!-- Contact-Footer -->
                                <div class="row justify-content-center animate__animated animate__fadeInUp animate__delay-5s">
                                    <div class="col-lg-6 text-center">
                                        <h5 class="footer">&copy;&ensp;Copyright 2022. &#160;&#160;All Rights Reserved.</h5>
                                    </div>
                                </div>
                                <!-- Contact-Footer End -->
                            </div>
                            <!-- Contact-page End -->
                        </div>
                    </div>
                </section>
                <!-- Contact section End -->

            </div>
            <!-- section-part End-->

            <!-- Mouse-Cursor -->
            <div class="mouse-cursor cursor-outer"></div>
            <div class="mouse-cursor cursor-inner"></div>
            <!-- Mouse-Cursor End-->
        </div>
        <!-- Body Part End -->

    </form>

   

    <!-- Optional JavaScript -->
    <!-- Jquery Js -->
    <script src="js/jquery.min.js"></script>
    <!-- Bootstrap Js -->
    <script src="js/bootstrap.bundle.min.js"></script>
    <!-- Jquery FancyBox Js -->
    <script src="js/jquery.fancybox.min.js"></script>
    <!-- Mixitup Js -->
    <script src="js/mixitup.min.js"></script>
    <!-- Owlcarousel Js -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- Jquery Countdown Js -->
    <script src="js/jquery.countdown.min.js"></script>
    <!-- Wow Js -->
    <script src="js/wow.min.js"></script>
    <!-- colors JS -->
    <script src="js/color.js"></script>
    <!-- Style.switch JS -->
    <script src="js/style.switch.js"></script>
    <!-- Custom Js -->
    <script src="js/custom.js"></script>

</body>
</html>