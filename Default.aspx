<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Rajesh Saxena</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="Website Designer , Logo Desinger" />
    <meta name="keywords" content="Website Designer , Logo Desinger" />
    <meta name="author" content="rajeshsaxena" />
    <!--Load Fonts-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
    <link href="css/all.css" rel="stylesheet" />
    <!--
		Load CSS
	-->
    <link rel="stylesheet" href="css/basic.css" />
    <link rel="stylesheet" href="css/layout.css" />
    <link rel="stylesheet" href="css/blogs.css" />
    <link rel="stylesheet" href="css/ionicons.css" />
    <link rel="stylesheet" href="css/magnific-popup.css" />
    <link rel="stylesheet" href="css/animate.css" />
    <link rel="stylesheet" href="css/owl.carousel.css" />
    <link href="css/newstyle.css" rel="stylesheet" />

    <!--
		Background Gradient
	-->
    <link rel="stylesheet" href="css/gradient.css" />

    <!--
		Template New-Skin
	-->
    <link rel="stylesheet" href="css/new-skin/new-skin.css" />

    <!--
		Template RTL
	-->
    <!--<link rel="stylesheet" href="css/rtl.css" />-->

    <!--
		Template Colors
	-->
    <link rel="stylesheet" href="css/template-colors/green.css" />
    <!--<link rel="stylesheet" href="css/template-colors/blue.css" />-->
    <!--<link rel="stylesheet" href="css/template-colors/orange.css" />-->
    <!--<link rel="stylesheet" href="css/template-colors/pink.css" />-->
    <!--<link rel="stylesheet" href="css/template-colors/purple.css" />-->
    <!--<link rel="stylesheet" href="css/template-colors/red.css" />-->

    <!--
		Template Dark
	-->
    <!--<link rel="stylesheet" href="css/template-dark/dark.css" />-->

    <!--Favicons-->

    <link rel="shortcut icon" href="images/favicons/favicon.ico" />
    <style>
        .textset {
            background-color: white;
        }
    </style>
    <script language="javascript" type="text/javascript">
        function Validation() {
            if (Required('<%=txt_name.ClientID%>', 'Enter Name* !!'))
                if (Required('<%=txt_mob.ClientID%>', 'Enter Mobile No.* !!'))
                    if (Required('<%=txt_email.ClientID%>', 'Enter Email ID* !!'))
                        if (Required('<%=txt_city.ClientID%>', 'Enter City* !!'))
                            if (Required('<%=txt_msg.ClientID%>', 'Enter Message* !!'))

                                return true;
            return false;
        }
    </script>

    <script src="validation/Validation.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="page new-skin">



            <!-- preloader -->
            <%-- <div class="preloader">
                <div class="centrize full-width">
                    <div class="vertical-center">
                        <div class="spinner">
                            <div class="double-bounce1"></div>
                            <div class="double-bounce2"></div>
                        </div>
                    </div>
                </div>
            </div>--%>

            <!-- background -->
            <div class="background gradient">
                <ul class="bg-bubbles">
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
            </div>

            <!--
			Container
		-->
            <div class="container opened" data-animation-in="fadeInLeft" data-animation-out="fadeOutLeft">

                <!--
				Header
			-->
                <header class="header">

                    <!-- menu -->
                    <div class="top-menu">
                        <ul>
                            <li class="active">
                                <a href="#about-card">
                                    <span class="icon ion-person"></span>
                                    <span class="link">About</span>
                                </a>
                            </li>
                            <li>
                                <a href="#resume-card">
                                    <span class="icon ion-android-list"></span>
                                    <span class="link">Resume</span>
                                </a>
                            </li>
                            <li>
                                <a href="#works-card">
                                    <span class="icon ion-paintbrush"></span>
                                    <span class="link">Works</span>
                                </a>
                            </li>
                            <li>
                                <a href="#blog-card">
                                    <span class="icon ion-chatbox-working"></span>
                                    <span class="link">Blog</span>
                                </a>
                            </li>
                            <li>
                                <a href="#contacts-card">
                                    <span class="icon ion-at"></span>
                                    <span class="link">Contact</span>
                                </a>
                            </li>
                            <%-- <li>
                                <a href="Admin/index.aspx" target="_blank">
                                    <span class="icon ion-key"></span>
                                    <span class="link">Log In</span>
                                </a>
                            </li>--%>
                        </ul>
                    </div>


                </header>

                <!--
				Card - Started
			-->
                <div class="card-started" id="home-card">

                    <!--
					Profile
				-->
                    <div class="profile no-photo">

                        <!-- profile image -->
                        <div class="slide" style="background-image: url(images/profile.jpg);"></div>

                        <!-- profile photo -->
                        <div class="image">
                            <img src="images/profile.png" alt="" />
                        </div>

                        <!-- profile titles -->
                        <div class="title">Rajesh Saxena</div>
                        <div class="subtitle">Web Designer</div>
                        

                        <!-- profile socials -->
                        <div class="social">
                            <a target="_blank" href="https://www.facebook.com/rajesh.saxena.98229
"><span class="fab fa-facebook"></span></a>
                            <a target="_blank" href="https://api.whatsapp.com/message/3WBRVAIGZ5CTG1"><span class="fab fa-whatsapp"></span></a>
                            <a target="_blank" href="#"><span class="fab fa-instagram"></span></a>
                            <a target="_blank" href="#"><span class="fab fa-youtube"></span></a>
                            <a target="_blank" href="#"><span class="fab fa-twitter"></span></a>
                        </div>
                         <div class="subtitle"><!-- hitwebcounter Code START -->
<a href="https://www.hitwebcounter.com" target="_blank">
<img src="https://hitwebcounter.com/counter/counter.php?page=7661963&style=0002&nbdigits=5&type=ip&initCount=0" title="Total Website Hits" Alt="Web Hits"   border="0" /></a>    </div>

                        <!-- profile buttons -->
                        <div class="lnks">
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <a href="images/Rajesh%20Saxena.pdf" target="_blank" class="lnk">
                                        
                                        <span class="text">Download CV</span>
                                        <span class="ion ion-archive"></span>
                                    </a>
                                    <a href="#" class="lnk discover">
                                        <span class="text">Contact Me</span>
                                        <span class="arrow"></span>
                                    </a>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>

                    </div>

                </div>

                <!-- 
				Card - About
			-->
                <div class="card-inner animated active" id="about-card">
                    <div class="card-wrap">

                        <!-- 
						About 
					-->
                        <div class="content about">

                            <!-- title -->
                            <div class="title">About Me</div>

                            <!-- content -->
                            <div class="row">
                                <div class="col col-d-6 col-t-6 col-m-12 border-line-v">
                                    <div class="text-box">
                                        <p>
                                            I am Rajesh Saxena . I am a website designer.
I have  completed BCA from apex group of institute Rudrapur.
I have 1 year Experiance in designing.
I have rich experience in web site design and building and customization.
I love to talk with you about our unique.
                                        </p>
                                    </div>
                                </div>
                                <div class="col col-d-6 col-t-6 col-m-12 border-line-v">
                                    <div class="info-list">
                                        <ul>
                                            <li><strong>Age . . . . .</strong>21</li>
                                            <li><strong>Address . . . . .</strong>Bareilly</li>
                                            <li><strong>Complete Project. . . . .</strong>80+</li>
                                            <%-- <li><strong> . . . . .</strong> Available</li>--%>
                                        </ul>
                                    </div>
                                </div>
                                <div class="clear"></div>
                            </div>

                        </div>

                        <!--
						Services
					-->
                        <div class="content services">

                            <!-- title -->
                            <div class="title">My Services</div>

                            <!-- content -->
                            <div class="row service-items border-line-v">

                                <!-- service item -->
                                <div class="col col-d-6 col-t-6 col-m-12 border-line-h">
                                    <div class="service-item">
                                        <div class="icon"><span class="ion ion-code"></span></div>
                                        <div class="name">Web Development</div>
                                        <p style="text-align:justify;">
                                            Modern and mobile-ready website that will help you 
										reach all of your marketing.
                                        </p>
                                    </div>
                                </div>

                                <!-- service item -->
                                <div class="col col-d-6 col-t-6 col-m-12 border-line-h">
                                    <div class="service-item">
                                        <div class="icon"><span class="ion ion-android-color-palette"></span></div>
                                        <div class="name">Logo Design</div>
                                        <p  style="text-align:justify;">
                                           Create your very own company logo online, use our easy to use logo design.
                                        </p>
                                    </div>
                                </div>

                                <!-- service item -->
                                <div class="col col-d-6 col-t-6 col-m-12">
                                    <div class="service-item">
                                        <div class="icon"><span class="ion ion-speakerphone"></span></div>
                                        <div class="name">Advetising</div>
                                        <p  style="text-align:justify;">
                                            Advertising services include television, radio, print, mail and web.
                                        </p>
                                    </div>
                                </div>

                                <!-- service item -->
                                <div class="col col-d-6 col-t-6 col-m-12">
                                    <div class="service-item">
                                        <div class="icon"><span class="ion ion-iphone"></span></div>
                                        <div class="name">Mobile App Development</div>
                                        <p style="text-align:justify;">
                                           Mobile app development is the act or process by which a mobile app is developed for mobile devices.
                                        </p>
                                    </div>
                                </div>

                                <div class="clear"></div>
                            </div>

                        </div>






                        <!--
						Testimonials
					-->
                        <div class="content testimonials">

                            <!-- title -->
                            <div class="title">Our Team</div>

                            <!-- content -->
                            <div class="row testimonials-items">

                                <!-- client item -->
                                <div class="col col-d-12 col-t-12 col-m-12 border-line-v">
                                    <div class="revs-carousel default-revs">
                                        <div class="owl-carousel">
                                            <div class="item">
                                                <div class="revs-item">
                                                    <div class="text">
                                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                    </div>
                                                    <div class="user">
                                                        <div class="img">
                                                            <img src="images/man1.jpg" alt="" />
                                                        </div>
                                                        <div class="info">
                                                            <div class="name">Rahul Gangwar</div>
                                                            <div class="company">Developer</div>
                                                        </div>
                                                        <div class="clear"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="item">
                                                <div class="revs-item">
                                                    <div class="text">
                                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                    </div>
                                                    <div class="user">
                                                        <div class="img">
                                                            <img src="images/man1.jpg" alt="" />
                                                        </div>
                                                        <div class="info">
                                                            <div class="name">Gagan Rawat</div>
                                                            <div class="company">PHP Developer</div>
                                                        </div>
                                                        <div class="clear"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="item">
                                                <div class="revs-item">
                                                    <div class="text">
                                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                    </div>
                                                    <div class="user">
                                                        <div class="img">
                                                            <img src="images/man1.jpg" alt="" />
                                                        </div>
                                                        <div class="info">
                                                            <div class="name">Vikas Gangwar</div>
                                                            <div class="company">Art Director</div>
                                                        </div>
                                                        <div class="clear"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="clear"></div>
                            </div>

                        </div>

                    </div>
                </div>

                <!--
				Card - Resume
			-->
                <div class="card-inner" id="resume-card">
                    <div class="card-wrap">

                        <!--
						Resume
					-->
                        <div class="content resume">

                            <!-- title -->
                            <div class="title">Resume</div>

                            <!-- content -->
                            <div class="row">

                                <!-- experience -->
                                <div class="col col-d-6 col-t-6 col-m-12 border-line-v">
                                    <div class="resume-title border-line-h">
                                        <div class="icon"><i class="ion ion-briefcase"></i></div>
                                        <div class="name">Experience</div>
                                    </div>
                                    <div class="resume-items">
                                        <div class="resume-item border-line-h active">
                                            <div class="date">Aug - 2019 - Present</div>
                                            <div class="name">Website Designer</div>
                                            <div class="company">Asp.net</div>
                                            <p>
                                                Collaborate with creative and development teams on the execution of ideas.
                                            </p>
                                        </div>
                                        <div class="resume-item border-line-h">
                                            <div class="date">2011 - 2012</div>
                                            <div class="name">Front-end Developer</div>
                                            <div class="company">Google Inc.</div>
                                            <p>
                                                Monitored technical aspects of the front-end delivery for several projects.
                                            </p>
                                        </div>
                                        <%--<div class="resume-item">
                                            <div class="date">2009 - 2010</div>
                                            <div class="name">Senior Developer</div>
                                            <div class="company">Abc Inc.</div>
                                            <p>
                                                Optimize website performance using latest technology.
                                            </p>
                                        </div>--%>
                                    </div>
                                </div>

                                <!-- education -->
                                <div class="col col-d-6 col-t-6 col-m-12 border-line-v">
                                    <div class="resume-title border-line-h">
                                        <div class="icon"><i class="ion ion-university"></i></div>
                                        <div class="name">Education</div>
                                    </div>
                                    <div class="resume-items">
                                        <div class="resume-item border-line-h">
                                            <div class="date">2016 - 2019</div>
                                            <div class="name">M.J.P.U  University</div>
                                            <div class="company">Bareilly</div>
                                            <p>
                                                Bachelor of Computer Application  Apex Institute, Rudrapur
                                            </p>
                                        </div>
                                        <%--<div class="resume-item border-line-h">
                                            <div class="date">2005 - 2006</div>
                                            <div class="name">Programming Course</div>
                                            <div class="company">Paris</div>
                                            <p>
                                                Coursework - Git, WordPress, Javascript, iOS, Android.
                                            </p>
                                        </div>--%>
                                        <div class="resume-item">
                                            <div class="date">2017 - 2018</div>
                                            <div class="name">Web Design Course</div>
                                            <div class="company">Haldwami</div>
                                            <p>
                                                Converted Photoshop layouts to web pages using HTML, CSS, and JavaScript
                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="clear"></div>
                            </div>

                        </div>

                        <!--
						Skills
					-->
                        <div class="content skills">

                            <!-- title -->
                            <div class="title">My Skills</div>

                            <!-- content -->
                            <div class="row">

                                <!-- skill item -->
                                <div class="col col-d-6 col-t-6 col-m-12 border-line-v">
                                    <div class="skills-list">
                                        <div class="skill-title border-line-h">
                                            <div class="icon"><i class="ion ion-easel"></i></div>
                                            <div class="name">Design</div>
                                        </div>
                                        <ul>
                                            <li class="border-line-h">
                                                <div class="name">Web Design</div>
                                                <div class="progress">
                                                    <div class="percentage" style="width: 95%;"></div>
                                                </div>
                                            </li>
                                           <%-- <li class="border-line-h">
                                                <div class="name">Write Music</div>
                                                <div class="progress">
                                                    <div class="percentage" style="width: 65%;"></div>
                                                </div>
                                            </li>--%>
                                            <li class="border-line-h">
                                                <div class="name">Photoshop</div>
                                                <div class="progress">
                                                    <div class="percentage" style="width: 85%;"></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="name">Logo Design</div>
                                                <div class="progress">
                                                    <div class="percentage" style="width: 90%;"></div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                                <!-- skill item -->
                                <div class="col col-d-6 col-t-6 col-m-12 border-line-v">
                                    <div class="skills-list dotted">
                                        <div class="skill-title border-line-h">
                                            <div class="icon"><i class="ion ion-flag"></i></div>
                                            <div class="name">Languages</div>
                                        </div>
                                        <ul>
                                            <li class="border-line-h">
                                                <div class="name">Hindi</div>
                                                <div class="progress">
                                                    <div class="percentage" style="width: 100%;"></div>
                                                </div>
                                            </li>
                                            <li class="border-line-h">
                                                <div class="name">English</div>
                                                <div class="progress">
                                                    <div class="percentage" style="width: 80%;"></div>
                                                </div>
                                            </li>
                                            <li class="border-line-h">
                                                <div class="name">Punjabi</div>
                                                <div class="progress">
                                                    <div class="percentage" style="width: 70%;"></div>
                                                </div>
                                            </li>
                                           <%-- <li>
                                                <div class="name"></div>
                                                <div class="progress ">
                                                    <div class="percentage" style="width: 30%;"></div>
                                                </div>
                                            </li>--%>
                                        </ul>
                                    </div>
                                </div>

                                <!-- skill item -->
                                <div class="col col-d-6 col-t-6 col-m-12 border-line-v">
                                    <div class="skills-list circles">
                                        <div class="skill-title border-line-h">
                                            <div class="icon"><i class="ion ion-code"></i></div>
                                            <div class="name">Coding</div>
                                        </div>
                                        <ul>
                                            <li>
                                                <div class="name">WordPress</div>
                                                <div class="progress p90">
                                                    <span>90%</span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="name">PHP / MYSQL</div>
                                                <div class="progress p75">
                                                    <span>75%</span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="name">Angular / JavaScript</div>
                                                <div class="progress p85">
                                                    <span>85%</span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="name">HTML / CSS</div>
                                                <div class="progress p95">
                                                    <span>95%</span>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                                <!-- skill item -->
                                <div class="col col-d-6 col-t-6 col-m-12 border-line-v">
                                    <div class="skills-list list">
                                        <div class="skill-title border-line-h">
                                            <div class="icon"><i class="ion ion-android-list"></i></div>
                                            <div class="name">Knowledge</div>
                                        </div>
                                        <ul>
                                            <li>
                                                <div class="name">Website hosting</div>
                                            </li>
                                            <li>
                                                <div class="name">iOS and android apps</div>
                                            </li>
                                            <li>
                                                <div class="name">Create logo design</div>
                                            </li>
                                            <li>
                                                <div class="name">Design for print</div>
                                            </li>
                                            <li>
                                                <div class="name">Modern and mobile-ready</div>
                                            </li>
                                            <li>
                                                <div class="name">Advertising services include</div>
                                            </li>
                                            <li>
                                                <div class="name">Graphics and animations</div>
                                            </li>
                                            <li>
                                                <div class="name">Search engine marketing</div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="clear"></div>
                            </div>

                        </div>

                    </div>
                </div>

                <!--
				Card - Works
			-->
                <div class="card-inner" id="works-card">
                    <div class="card-wrap">

                        <!--
						Works
					-->
                        <div class="content works">

                            <!-- title -->
                            <div class="title">Recent Works</div>

                            <!-- filters -->
                            <div class="filter-menu filter-button-group">
                                <div class="f_btn active">
                                    <label>
                                        <input type="radio" name="fl_radio" value="grid-item" />All</label>
                                </div>
                                <div class="f_btn">
                                    <label>
                                        <input type="radio" name="fl_radio" value="photo" />Photo</label>
                                </div>
                                <div class="f_btn">
                                    <label>
                                        <input type="radio" name="fl_radio" value="video" />Video</label>
                                </div>
                                <div class="f_btn">
                                    <label>
                                        <input type="radio" name="fl_radio" value="music" />Music</label>
                                </div>
                                <div class="f_btn">
                                    <label>
                                        <input type="radio" name="fl_radio" value="design" />Design</label>
                                </div>
                            </div>

                            <!-- content -->
                            <div class="row grid-items border-line-v">

                                <!-- work item photo -->
                                <div class="col col-d-6 col-t-6 col-m-12 grid-item photo border-line-h">
                                    <div class="box-item">
                                        <div class="image">
                                            <a href="images/works/work1.jpg" class="has-popup-image">
                                                <img src="images/works/work1.jpg" alt="" />
                                                <span class="info">
                                                    <span class="ion ion-image"></span>
                                                </span>
                                            </a>
                                        </div>
                                        <div class="desc">
                                            <a href="images/works/work1.jpg" class="name has-popup-image">Motorcycle Helmet</a>
                                            <div class="category">Photo</div>
                                        </div>
                                    </div>
                                </div>

                                <!-- work item video -->
                                <div class="col col-d-6 col-t-6 col-m-12 grid-item video border-line-h">
                                    <div class="box-item">
                                        <div class="image">
                                            <a href="https://vimeo.com/97102654" class="has-popup-video">
                                                <img src="images/works/work2.jpg" alt="" />
                                                <span class="info">
                                                    <span class="ion ion-videocamera"></span>
                                                </span>
                                            </a>
                                        </div>
                                        <div class="desc">
                                            <a href="https://vimeo.com/97102654" class="name has-popup-video">Minimalism Shapes</a>
                                            <div class="category">Video</div>
                                        </div>
                                    </div>
                                </div>

                                <!-- work item music -->
                                <div class="col col-d-6 col-t-6 col-m-12 grid-item music border-line-h">
                                    <div class="box-item">
                                        <div class="image">
                                            <a href="https://w.soundcloud.com/player/?visual=true&amp;url=http%3A%2F%2Fapi.soundcloud.com%2Ftracks%2F221650664&amp;show_artwork=true" class="has-popup-music">
                                                <img src="images/works/work3.jpg" alt="" />
                                                <span class="info">
                                                    <span class="ion ion-music-note"></span>
                                                </span>
                                            </a>
                                        </div>
                                        <div class="desc">
                                            <a href="#" class="name has-popup">Staircase</a>
                                            <div class="category">Music</div>
                                        </div>
                                    </div>
                                </div>

                                <!-- work item design -->
                                <div class="col col-d-6 col-t-6 col-m-12 grid-item design border-line-h">
                                    <div class="box-item">
                                        <div class="image">
                                            <a href="#popup-1" class="has-popup-media">
                                                <img src="images/works/work4.jpg" alt="" />
                                                <span class="info">
                                                    <span class="ion ion-images"></span>
                                                </span>
                                            </a>
                                        </div>
                                        <div class="desc">
                                            <a href="#popup-1" class="name has-popup-media">Mobile Application</a>
                                            <div class="category">Design</div>
                                        </div>
                                        <div id="popup-1" class="popup-box mfp-fade mfp-hide">
                                            <div class="content">
                                                <div class="image">
                                                    <img src="images/works/work4.jpg" alt="" />
                                                </div>
                                                <div class="desc">
                                                    <div class="post-box">
                                                        <h1>Mobile Application</h1>
                                                        <div class="blog-detail">Design</div>
                                                        <div class="blog-content">
                                                            <p>
                                                                So striking at of to welcomed resolved. Northward by described up household therefore 
															attention. Excellence decisively nay man yet impression for contrasted remarkably.
                                                            </p>
                                                            <p>
                                                                Forfeited you engrossed but gay sometimes explained. Another as studied it to evident. 
															Merry sense given he be arise. Conduct at an replied removal an amongst. Remaining 
															determine few her two cordially admitting old.
                                                            </p>
                                                            <blockquote>
                                                                Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia 
															Curae; Pellentesque suscipit.
                                                            </blockquote>
                                                            <p>
                                                                Tiled say decay spoil now walls meant house. My mr interest thoughts screened of outweigh 
															removing. Evening society musical besides inhabit ye my. Lose hill well up will he over on. 
															Increasing sufficient everything men him admiration unpleasing sex.
                                                            </p>
                                                            <ul class="list-style">
                                                                <li>Greatest properly off ham exercise all.</li>
                                                                <li>Unsatiable invitation its possession nor off.</li>
                                                                <li>All difficulty estimating unreserved increasing the solicitude.</li>
                                                            </ul>
                                                            <p>
                                                                Unpleasant astonished an diminution up partiality. Noisy an their of meant. Death means 
															up civil do an offer wound of.
                                                            </p>
                                                        </div>
                                                        <a href="#" class="button">
                                                            <span class="text">View Project</span>
                                                            <span class="arrow"></span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- work item photo -->
                                <div class="col col-d-6 col-t-6 col-m-12 grid-item photo border-line-h">
                                    <div class="box-item">
                                        <div class="image">
                                            <a href="images/works/work5.jpg" class="has-popup-image">
                                                <img src="images/works/work5.jpg" alt="" />
                                                <span class="info">
                                                    <span class="ion ion-image"></span>
                                                </span>
                                            </a>
                                        </div>
                                        <div class="desc">
                                            <a href="images/works/work5.jpg" class="name has-popup-image">Gereal Travels</a>
                                            <div class="category">Photo</div>
                                        </div>
                                    </div>
                                </div>

                                <!-- work item music -->
                                <div class="col col-d-6 col-t-6 col-m-12 grid-item music border-line-h">
                                    <div class="box-item">
                                        <div class="image">
                                            <a href="https://w.soundcloud.com/player/?visual=true&amp;url=http%3A%2F%2Fapi.soundcloud.com%2Ftracks%2F221650664&amp;show_artwork=true" class="has-popup-music">
                                                <img src="images/works/work8.jpg" alt="" />
                                                <span class="info">
                                                    <span class="ion ion-music-note"></span>
                                                </span>
                                            </a>
                                        </div>
                                        <div class="desc">
                                            <a href="#" class="name has-popup">Daylight Entrance</a>
                                            <div class="category">Music</div>
                                        </div>
                                    </div>
                                </div>

                                <!-- work item video -->
                                <div class="col col-d-6 col-t-6 col-m-12 grid-item video border-line-h">
                                    <div class="box-item">
                                        <div class="image">
                                            <a href="https://vimeo.com/97102654" class="has-popup-video">
                                                <img src="images/works/work6.jpg" alt="" />
                                                <span class="info">
                                                    <span class="ion ion-videocamera"></span>
                                                </span>
                                            </a>
                                        </div>
                                        <div class="desc">
                                            <a href="https://vimeo.com/97102654" class="name has-popup-video">Architecture</a>
                                            <div class="category">Video</div>
                                        </div>
                                    </div>
                                </div>

                                <!-- work item design -->
                                <div class="col col-d-6 col-t-6 col-m-12 grid-item design border-line-h">
                                    <div class="box-item">
                                        <div class="image">
                                            <a href="#popup-2" class="has-popup-media">
                                                <img src="images/works/work7.jpg" alt="" />
                                                <span class="info">
                                                    <span class="ion ion-images"></span>
                                                </span>
                                            </a>
                                        </div>
                                        <div class="desc">
                                            <a href="#popup-2" class="name has-popup-media">Social Website</a>
                                            <div class="category">Design</div>
                                        </div>
                                        <div id="popup-2" class="popup-box mfp-fade mfp-hide">
                                            <div class="content">
                                                <div class="image">
                                                    <img src="images/works/work7.jpg" alt="">
                                                </div>
                                                <div class="desc">
                                                    <div class="post-box">
                                                        <h1>Mobile Application</h1>
                                                        <div class="blog-detail">Design</div>
                                                        <div class="blog-content">
                                                            <p>
                                                                So striking at of to welcomed resolved. Northward by described up household therefore 
															attention. Excellence decisively nay man yet impression for contrasted remarkably.
                                                            </p>
                                                            <p>
                                                                Forfeited you engrossed but gay sometimes explained. Another as studied it to evident. 
															Merry sense given he be arise. Conduct at an replied removal an amongst. Remaining 
															determine few her two cordially admitting old.
                                                            </p>
                                                            <blockquote>
                                                                Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia 
															Curae; Pellentesque suscipit.
                                                            </blockquote>
                                                            <p>
                                                                Tiled say decay spoil now walls meant house. My mr interest thoughts screened of outweigh 
															removing. Evening society musical besides inhabit ye my. Lose hill well up will he over on. 
															Increasing sufficient everything men him admiration unpleasing sex.
                                                            </p>
                                                            <ul class="list-style">
                                                                <li>Greatest properly off ham exercise all.</li>
                                                                <li>Unsatiable invitation its possession nor off.</li>
                                                                <li>All difficulty estimating unreserved increasing the solicitude.</li>
                                                            </ul>
                                                            <p>
                                                                Unpleasant astonished an diminution up partiality. Noisy an their of meant. Death means 
															up civil do an offer wound of.
                                                            </p>
                                                        </div>
                                                        <a href="#" class="button">
                                                            <span class="text">View Project</span>
                                                            <span class="arrow"></span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="clear"></div>
                            </div>

                        </div>

                    </div>
                </div>

                <!--
				Card - Blog
			-->
                <div class="card-inner blog" id="blog-card">
                    <div class="card-wrap">

                        <!--
						Blog
					-->
                        <div class="content blog">

                            <!-- title -->
                            <div class="title">Latest Posts</div>

                            <!-- content -->
                            <div class="row border-line-v">

                                <!-- blog item -->
                                <div class="col col-d-12 col-t-12 col-m-12 border-line-h">
                                    <div class="box-item">
                                        <div class="image">
                                            <a href="#">
                                                <img src="images/blog/blog1.jpg" alt="" />
                                                <span class="info">
                                                    <span class="ion ion-document-text"></span>
                                                </span>
                                                <span class="date"><strong>20</strong>Jun</span>
                                            </a>
                                        </div>
                                        <div class="desc">
                                            <a href="blog-post-new.html" class="name">By spite about do of do allow blush</a>
                                            <div class="category">Design</div>
                                        </div>
                                    </div>
                                </div>

                                <!-- blog item -->
                                <div class="col col-d-12 col-t-12 col-m-12 border-line-h">
                                    <div class="box-item">
                                        <div class="image">
                                            <a href="#">
                                                <img src="images/blog/blog2.jpg" alt="" />
                                                <span class="info">
                                                    <span class="ion ion-document-text"></span>
                                                </span>
                                                <span class="date"><strong>19</strong>Jun</span>
                                            </a>
                                        </div>
                                        <div class="desc">
                                            <a href="#" class="name">Two Before Arrow Not Relied</a>
                                            <div class="category">Coding</div>
                                        </div>
                                    </div>
                                </div>

                                <!-- blog item -->
                                <div class="col col-d-12 col-t-12 col-m-12 border-line-h">
                                    <div class="box-item">
                                        <div class="image">
                                            <a href="#">
                                                <img src="images/blog/blog3.jpg" alt="" />
                                                <span class="info">
                                                    <span class="ion ion-document-text"></span>
                                                </span>
                                                <span class="date"><strong>20</strong>Jun</span>
                                            </a>
                                        </div>
                                        <div class="desc">
                                            <a href="#" class="name">By spite about do of do allow blush</a>
                                            <div class="category">Travel</div>
                                        </div>
                                    </div>
                                </div>

                                <div class="clear"></div>
                            </div>

                        </div>

                    </div>
                </div>

                <!--
				Card - Contacts
			-->
                <div class="card-inner contacts" id="contacts-card">
                    <div class="card-wrap">

                        <!--
						Conacts Info
					-->
                        <div class="content contacts">

                            <!-- title -->
                            <div class="title">Get in Touch</div>

                            <!-- content -->
                            <div class="row">
                                <div class="col col-d-12 col-t-12 col-m-12 border-line-v">
                                    <div class="map">
                                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3511.018674949581!2d79.4167300145532!3d28.358285003192083!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39a0072c1313fd09%3A0x73a0c0215b4d9251!2sBareilly!5e0!3m2!1sen!2sin!4v1598375897672!5m2!1sen!2sin" width="100%" height="200" frameborder="0" style="border: 0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                                    </div>
                                    <div class="info-list">
                                        <ul>
                                            <%-- <li><strong>Address..</strong> Rudrapur, UK</li>--%>
                                            <li><strong>Address..</strong> Bareilly</li>
                                            <li><strong>Mobile No...</strong> +91 8477815348</li>
                                            <%-- <li><strong>Freelance..</strong> Available</li>--%>
                                        </ul>
                                    </div>
                                </div>
                                <div class="clear"></div>
                            </div>

                        </div>

                        <!--
						Contact Form
					-->
                        <div class="content contacts">

                            <!-- title -->
                            <div class="title">Contact Form</div>

                            <!-- content -->
                            <div class="row">
                                <div class="col col-d-12 col-t-12 col-m-12 border-line-v">
                                    <div class="contact_form">

                                        <div class="row">
                                            <table>
                                                <tr>
                                                    <td>
                                                        <asp:TextBox ID="txt_name" placeholder="Enter Name*" AutoCompleteType="None" onkeypress="return onKeyValidate(event,alpha);" runat="server"></asp:TextBox></td>
                                                    <td>
                                                        <asp:TextBox ID="txt_mob" placeholder="Enter Mobile No.*" AutoCompleteType="None" onkeypress="return onKeyValidate(event,numeric);" MaxLength="10" runat="server"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:TextBox ID="txt_email" placeholder="Enter Email ID*" AutoCompleteType="None" runat="server"></asp:TextBox></td>
                                                    <td>
                                                        <asp:TextBox ID="txt_city" placeholder="Enter City*" AutoCompleteType="None" runat="server"></asp:TextBox></td>
                                                </tr>

                                                <tr>
                                                    <td colspan="2">
                                                        <asp:TextBox ID="txt_msg" placeholder="Enter Message" AutoCompleteType="None" TextMode="MultiLine" runat="server"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" align="center">
                                                        <asp:Button ID="Button1" runat="server"  OnClientClick="javascript:return Validation();" Text="Send Message" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="clear"></div>
                            </div>

                        </div>

                    </div>
                </div>

            </div>
        </div>
    </form>
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.validate.js"></script>
    <script src="js/jquery.magnific-popup.js"></script>
    <script src="js/imagesloaded.pkgd.js"></script>
    <script src="js/isotope.pkgd.js"></script>
    <script src="js/jquery.slimscroll.js"></script>
    <script src="js/owl.carousel.js"></script>

    <!--
		Google map api
	-->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDz2w7HUaWudHwd7AWQpCL48Qs050WOn9s"></script>

    <!--
		Main Scripts
	-->

    <script src="js/scripts.js"></script>
    <script type="text/javascript">

        var alpha = "[ A-Za-z]";
        var numeric = "[0-9]";
        var alphanumeric = "[ A-Za-z0-9]";


        function onKeyValidate(e, charVal) {
            var keynum;
            var keyChars = /[\x00\x08]/;
            var validChars = new RegExp(charVal);
            if (window.event) {
                keynum = e.keyCode;
            }
            else if (e.which) {
                keynum = e.which;
            }
            var keychar = String.fromCharCode(keynum);
            if (!validChars.test(keychar) && !keyChars.test(keychar)) {
                return false
            } else {
                return keychar;
            }
        }

        function validateEmail(sEmail) {
            var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
            if (filter.test(sEmail)) {
                return true;
            }
            else {
                return false;
            }
        }
    </script>

</body>
</html>
