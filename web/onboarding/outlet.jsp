<%-- 
    Document   : outlets
    Created on : 17-Oct-2018, 10:12:31 PM
    Author     : mac
--%>

<%@page import="customer.CustomerRetrieve"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Connect your Outlet</title>
                <link rel="shortcut icon" type="image/png" href="../images/chilliredup.png"/>
		<link rel="stylesheet" href="../assets/css/main.css" />
                <meta charset="utf-8" /> 
                <meta name="keywords" content="Chillonline, chill online, courses, course management system, online courses, job boards, job postings, videos, movies, music, TV shows, TV series, TV channels, radio channels, games" />
                <meta name="description" content="Shop from local retailers in any country."/>
                <meta name="viewport" content="width=device-width, initial-scale=1">
                
<style type="text/css">

    
    .wrapper
    {
        width: 100%;
        height: 100%;
        z-index: 2;
    }
    
    .entry
    {
        width: 300px;
        height: 200px;
        z-index: 4;
        top: 120px;
        left: 700px;
        font-size: 40px;
        color: white;
        elevation: above;
        position: absolute;
    }
    
    .back-picture
    {
        width: 100%;
        height: 100%;
        z-index: 2;
        position: relative;
    }
    
    .sign-up-now
    {
        width: 500px;
        height: 750px;
        padding: 50px;
        border-radius: 4px;
        background-color: white;
        z-index: 14;
        top: 60px;
        left: 140px;
        color: white;
        elevation: above;
        position: absolute;
        box-shadow: 0 2px 20px #777;
    }
            
            .spinner-overlay
            {
                width: 40px;
                height: 40px;
                display: none;
                z-index: 15;
            }
            
            .spinner
            {
                width: 40px;
                height: 40px;
                z-index: 15;
                position: absolute;
                border: 2px solid #f3f3f3;
                border-top: 3px solid #e00b00;
                border-radius: 100%;
                top: 45vh;
                left: 0;
                right: 0;
                margin: auto;
                -webkit-animation: spin 1s infinite linear;
                animation: spin 0.3s infinite linear;
            }
            
            @-webkit-keyframes spin
            {
                from 
                {
                    transform: rotate(0deg);
                }
                to 
                {
                    transform: rotate(360deg);
                }
            }
            
            @keyframes spin
            {
                from 
                {
                    transform: rotate(0deg);
                }
                to 
                {
                    transform: rotate(360deg);
                }
            }
            
            .credentials
            {
                width: 100%;
                height: 120px;
                margin-top: 5px;
                margin-left: auto;
                margin-right: auto;
                color: #555;
                z-index: 32;
            }
            
            .credentials-long
            {
                width: 100%;
                height: 350px;
                margin-top: 5px;
                margin-left: auto;
                margin-right: auto;
                color: #555;
                z-index: 32;
            }
            
            .drop-nav
            {
                display: block;
                height: 50px;
                width: 90%;
                margin-top: 10px;
                margin-left: auto;
                margin-right: auto;
            }
            
            .drop-nav-login
            {
                height: 50px;
                width: 50%;
                font-size: 14px;
                color: #e00b00;
                text-align: center;
                float: left;
                border-bottom: 2px solid #e00b00;
            }
            
            .drop-nav-register
            {
                height: 50px;
                width: 50%;
                font-size: 14px;
                color: #c00c00;
                text-align: center;
                float: left;
                border-bottom: none;
            }
            
            .drop-body
            {
                display: block;
                height: 440px;
                width: 90%;
                margin-left: auto;
                margin-right: auto;
            }
            
            .drop-body-login
            {
                display: block;
            }
            
            .drop-body-register
            {
                display: none;
            }
            
            .drop-logout
            {
                display: block;
                height: 350px;
                width: 90%;
                margin-top: 10px;
                margin-left: auto;
                margin-right: auto;
            }
            
            .triangle
            {
                width: 0; 
                height: 0; 
                border-left: 10px solid transparent;
                border-right: 10px solid transparent;
                border-bottom: 10px solid white;
                margin-top: -8px;
                margin-left: 230px;
            }
            
            .chillcredits
            {
                width: 100%;
                height: 170px;
                margin-top: 40px;
                margin-left: auto;
                margin-right: auto;
                margin-bottom: 90px;
            }
            
            .cardarea
            {
                width: 100%;
                height: 170px;
                margin-left: auto;
                margin-right: auto;
                background-color: #e00b00;
                color: #fff;
                border-radius: 30px;
                //box-shadow: 0px 0px 4px #000;
            }
            
            .cardcredit
            {
                font-size: 30px;
                font-weight: bolder;
                text-align: center;
                margin-top: 10px;
                width: 100%;
                height: 40px;
            }
            
            .cardtop
            {
                width: 100%;
                height: 60px;
            }
            
            .cardowner
            {
                width: 100%;
                height: 20px;
                margin-top: 30px;
                text-align: center;
                font-size: 16px;
            }
            
            .login-modal
            {
                position: absolute; /* Stay in place */
                z-index: 12;
                padding-top: 300px; /* Location of the box */
                left: 0;
                top: 0;
                width: 100%; /* Full width */
                height: 100%; /* Full height */
                overflow: auto; /* Enable scroll if needed */
                background-color: rgb(0,0,0); /* Fallback color */
                background-color: rgba(0,0,0,0.0); /* Black w/ opacity */
                /* background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
            }
            
            .logindrop
            {
                display: none;
                z-index: 30;
                width: 300px;
                height: 500px;
                background-color: white;
                border: 0.2px solid #aaa;
                margin-left: calc(100% - 320px);
                position: fixed;
                padding: 0;
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.8),0 6px 20px 0 rgba(0,0,0,0.19);
                -webkit-animation-name: none;
                -webkit-animation-duration: 0.6s;
                animation-name: none;
                animation-duration: 0.6s
            }
            
            .zone-modal
            {
                display: none;
                position: absolute; /* Stay in place */
                z-index: 0;
                padding-top: 300px; /* Location of the box */
                left: 0;
                top: 90px;
                width: 100%; /* Full width */
                height: 100%; /* Full height */
                overflow: auto; /* Enable scroll if needed */
                background-color: rgb(0,0,0); /* Fallback color */
                background-color: rgba(0,0,0,0.6); /* Black w/ opacity */
                /* background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
            }
            
            .zonedrop
            {
                display: none;
                z-index: 0;
                width: 300px;
                height: 500px;
                top: 80px;
                background-color: white;
                border: 0.2px solid #aaa;
                margin-left: calc(100% - 1050px);
                position: fixed;
                padding: 0;
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.8),0 6px 20px 0 rgba(0,0,0,0.19);
                -webkit-animation-name: none;
                -webkit-animation-duration: 0.6s;
                animation-name: none;
                animation-duration: 0.6s
            }
            
            .location-modal
            {
                display: none;
                position: absolute; /* Stay in place */
                z-index: 0;
                padding-top: 300px; /* Location of the box */
                left: 0;
                top: 90px;
                width: 100%; /* Full width */
                height: 100%; /* Full height */
                overflow: auto; /* Enable scroll if needed */
                background-color: rgb(0,0,0); /* Fallback color */
                background-color: rgba(0,0,0,0.0); /* Black w/ opacity */
                /* background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
            }
            
            .locationdrop
            {
                display: none;
                z-index: 0;
                width: 300px;
                height: 500px;
                top: 80px;
                background-color: white;
                border: 0.2px solid #aaa;
                margin-left: calc(100% - 850px);
                position: fixed;
                padding: 0;
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.8),0 6px 20px 0 rgba(0,0,0,0.19);
                -webkit-animation-name: none;
                -webkit-animation-duration: 0.6s;
                animation-name: none;
                animation-duration: 0.6s
            }
            
            .carrier-modal
            {
                display: none;
                position: absolute; /* Stay in place */
                z-index: 0;
                padding-top: 300px; /* Location of the box */
                left: 0;
                top: 90px;
                width: 100%; /* Full width */
                height: 100%; /* Full height */
                overflow: auto; /* Enable scroll if needed */
                background-color: rgb(0,0,0); /* Fallback color */
                background-color: rgba(0,0,0,0.0); /* Black w/ opacity */
                /* background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
            }
            
            .carrierdrop
            {
                display: none;
                z-index: 0;
                width: 300px;
                height: 500px;
                top: 80px;
                background-color: white;
                border: 0.2px solid #aaa;
                margin-left: calc(100% - 620px);
                position: fixed;
                padding: 0;
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.8),0 6px 20px 0 rgba(0,0,0,0.19);
                -webkit-animation-name: none;
                -webkit-animation-duration: 0.6s;
                animation-name: none;
                animation-duration: 0.6s
            }
            
            .time-modal
            {
                display: none;
                position: absolute; /* Stay in place */
                z-index: 0;
                padding-top: 300px; /* Location of the box */
                left: 0;
                top: 90px;
                width: 100%; /* Full width */
                height: 100%; /* Full height */
                overflow: auto; /* Enable scroll if needed */
                background-color: rgb(0,0,0); /* Fallback color */
                background-color: rgba(0,0,0,0.0); /* Black w/ opacity */
                /* background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
            }
            
            .timedrop
            {
                display: none;
                z-index: 0;
                width: 300px;
                height: 500px;
                top: 80px;
                background-color: white;
                border: 0.2px solid #aaa;
                margin-left: calc(100% - 530px);
                position: fixed;
                padding: 0;
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.8),0 6px 20px 0 rgba(0,0,0,0.19);
                -webkit-animation-name: none;
                -webkit-animation-duration: 0.6s;
                animation-name: none;
                animation-duration: 0.6s
            }
            
            .redclickarea
            {
                width: 100%;
                height: 50px;
                margin-left: auto;
                margin-right: auto;
                margin-top: 20px;
            }
            
            .redclicker:hover
            {
                background-color: #c00c00;
            }
            
            .redclicker
            {
                width: 100%;
                height: 50px;
                display: flex;
                justify-content: center;
                flex-direction: column;
                text-align: center;
                background-color: #f00f00;
                color: #fff;
                font-size: 14px;
            }
            
            .work-permit
            {
                display: block;
                width: 400px;
                height: 600px;
                padding: 0 10px;
                font-family: Roboto;
            }
            
            
/* The container */
.container {
    display: block;
    position: relative;
    padding-left: 35px;
    margin-bottom: 12px;
    cursor: pointer;
    //font-size: 22px;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}

/* Hide the browser's default radio button */
.container input {
    position: absolute;
    opacity: 0;
    cursor: pointer;
}

/* Create a custom radio button */
.checkmark {
    position: absolute;
    top: 0;
    left: 0;
    height: 20px;
    width: 20px;
    background-color: #f78b88;
    border-radius: 50%;
    border: 2px solid #e00b00;
}

/* On mouse-over, add a grey background color */
.container:hover input ~ .checkmark {
    background-color: #f78b88;
}

/* When the radio button is checked, add a blue background */
.container input:checked ~ .checkmark {
    background-color: #fff;
}

/* Create the indicator (the dot/circle - hidden when not checked) */
.checkmark:after {
    content: "";
    position: absolute;
    display: none;
}

/* Show the indicator (dot/circle) when checked */
.container input:checked ~ .checkmark:after {
    display: block;
}

/* Style the indicator (dot/circle) */
.container .checkmark:after {
 	top: 3px;
	left: 3px;
	width: 10px;
	height: 10px;
	border-radius: 50%;
	background: #e00b00;
}
                
                .document-identifier
                {
                    width: 100%;
                    height: 20px;
                    font-size: 13px;
                    color: #aaa;
                    margin-top: 10px;
                    margin-bottom: 10px;
                }
                
                .license-percent
                {
                    width: 100%;
                    height: 3px;
                    padding-top: 10px;
                    padding-bottom: 25px;
                }
                
                .instructions
                {
                    min-height: 50px;
                }
                
                .percent-left
                {
                    width: 100%;
                    height: 3px;
                    background-color: #c00c00;
                    float: left;
                }
                
                .percent-right
                {
                    width: 0%;
                    height: 3px;
                    background-color: #eee;
                    float: left;
                }
                
                .permit-percent-left
                {
                    width: 50%;
                    height: 3px;
                    background-color: #e00b00;
                    float: left;
                }
                
                .permit-percent-right
                {
                    width: 50%;
                    height: 3px;
                    background-color: #eee;
                    float: left;
                }
                
                .step-header
                {
                    width: 100%;
                    height: 40px;
                    margin-top: 20px;
                    margin-bottom: 20px;
                    font-size: 30px;
                    font-weight: normal;
                    color: black;
                }
                
                .textfield
                {
                    border: none;
                    width: 100%;
                }
                
                .underline
                {
                    width: 90%;
                    height: 1px;
                    margin-left: auto;
                    margin-right: auto;
                    margin-top: 1px;
                    margin-bottom: 0px;
                    border-bottom: 1px solid #aaa;
                }
                
                .splash
                {
                    width: 90%;
                    height: 20px;
                    margin-left: auto;
                    margin-right: auto;
                    margin-top: 10px;
                    margin-bottom: 0px;
                    font-size: 12px;
                    color: #c00c00;
                }
                
                #splash-first-name
                {
                    display: none;
                }
                
                #splash-middle-name
                {
                    display: none;
                }
                
                #splash-last-name
                {
                    display: none;
                }
                
                #splash-email
                {
                    display: none;
                }
                
                #splash-password
                {
                    display: none;
                }
                
                #step1of2
                {
                    display: block;
                }
                
                #step2of2
                {
                    display: none;
                }
                
                .triple
                {
                    width: 100%;
                    border-bottom: 30px solid white;
                }
                
                .triple-one
                {
                    width: 33.3%;
                    float: left;
                }
                
                .triple-two
                {
                    width: 33.3%;
                    float: left;
                }
                
                .triple-three
                {
                    width: 33.3%;
                    float: left;
                }
            






</style>
                
    </head>
    <body>
    
    
    
    <%
        
        long sessionCustomerID = -1;
        CustomerRetrieve sessionCustomer = null;
        
        if (session.getAttribute("customer-id") == null)
        
        {
            //response.sendRedirect("index.jsp");
        }
        
        else
            
        {
            sessionCustomerID = Long.parseLong((String) session.getAttribute("customer-id"));
            
            
            if (sessionCustomerID != -1)
                
            {
                sessionCustomer = new CustomerRetrieve(sessionCustomerID);
            }
        }
        
        
        
        %>
        
        
        
				<header id="header" class="alt">
                                    <a href="../index.jsp" style="text-decoration:none;color:inherit;"><div style="text-decoration:none;color:inherit;">
                                    <img src="../images/chilloutlets.png" style="margin-left:15px;height:30px;margin-top:8px;float:left;" />
            <!-- <img src='images/transparent-white.png' style="margin-left:2px;height:15px;" /> -->
            <!-- <span style="margin-top:2px;margin-left:6px;color:white;font-size:20px;float:left;"><b>| Canada</b></span> -->
                                        </div>
                                    </a>
					<nav id="nav">
						<ul>
                                                        
							<li><a href="../onboarding/carrier.jsp" class="button">BECOME A CARRIER, EARN WITH US</a></li>
							<li><a href="../onboarding/outlet.jsp" class="button">CONNECT YOUR OUTLET</a></li>
							<li>
        
                                                            
                                                            
                                                            <a  href="javascript:setActive()" id="account-signifier" class="icon fa-angle-down">Shop Connect</a>
                                                            
                       
                                                        </li>
                                                        
						</ul>
					</nav>
				</header>
        
        <div class="wrapper">
        
        <div class="back-picture"><img style='' src="/outlets/donut-shop.jpg" width="100%" /></div>
        
        <div class="entry"><span>Whatever you sell,<br><br> let other people<br><br> know about it.</span></div>
        
        
        
        
        
        <div class="sign-up-now">
        
            <div id="work-permit" class="work-permit">
                
            <form id="sign-up-form" method="post" action="../StoreRegisterServlet">

                <div id="step1of2">

                <div class="document-identifier">Step 1 of 2</div>

                <div class="license-percent">
                    <div class="permit-percent-left"></div>
                    <div class="permit-percent-right"></div>
                </div>

                <div class="step-header">Sign Up Now.</div>
                
                <div class="splash"><span id="splash-first-name">First Name *</span></div>
                <div id="first-name-field">
                    <input required style="border:none;color:#555;background-color:white;height:25px;font-size:16px;" type="text" id="first-name" name="first-name" class="textfield" placeholder="First Name *" />
                
                    <div id="dash-first-name" class="underline"></div>
                </div>
                
                <div class="splash"><span id="splash-last-name">Last Name *</span></div>
                <div id="last-name-field">
                    <input required style="border:none;color:#555;background-color:white;height:25px;font-size:16px;" type="text" id="last-name" name="last-name" class="textfield" placeholder="Last Name *" />
                </div>
                <div id="dash-last-name" class="underline"></div>

                <div class="splash"><span id="splash-middle-name">Middle Name (optional)</span></div>
                <div id="middle-name-field">
                    <input required style="border:none;color:#555;background-color:white;height:25px;font-size:16px;" type="text" id="middle-name" name="middle-name" class="textfield" placeholder="Middle Name (optional)" />
                </div>
                <div id="dash-middle-name" class="underline"></div>
                

                <div class="splash"><span id="splash-email">Email *</span></div>
                <div id="email-field">
                    <input required style="border:none;color:#555;background-color:white;height:25px;font-size:16px;" type="email" id="email" name="email" class="textfield" placeholder="Email *" />
                </div>
                <div id="dash-email" class="underline"></div>
                
                <div class="splash"><span id="splash-password">Password *</span></div>
                <div id="password-field">
                    <input required style="border:none;color:#555;background-color:white;height:25px;font-size:16px;" type="password" id="password" name="password" class="textfield" placeholder="Password *" />
                </div>
                <div id="dash-password" class="underline"></div>

                
                
            <!--    
<form>
  <p>Enter an email address:</p>
  <input id='email'>
  <button type='submit' id='validate'>Validate!</button>
  
  <label for="password">Type password</label><br/>
<input type="text" name="password" id="password" />
<input type="button" name="check" id="check" onclick="check()" value="Check password!"/>

<p id="respuesta"></p>
  
</form>

<h2 id='result'></h2>
-->





                </div>

                <div id="step2of2">

                <div class="document-identifier">Step 2 of 2</div>

                <div class="license-percent">
                    <div class="percent-left"></div>
                    <div class="percent-right"></div>
                </div>

                <div class="step-header">Sign Up Now.</div>
                
                
                
                
                
                
                <div class="splash"><span id="splash-last-name">Outlet Name *</span></div>
                <div id="last-name-field">
                    <input required style="border:none;color:#555;background-color:white;padding-left:0px;height:25px;font-size:16px;" type="text" id="last-name" name="outlet-name" class="textfield" placeholder="Outlet Name *" />
                </div>
                <div id="dash-last-name" class="underline"></div>
                
                
                
                        
                
                <div id="platform-title">Please enter an address, intersection, landmark, or outlet.</div>
                <div id="platform-overlay">
                        <div id="select-platform" class="custom-select">
                            <select id="platform-select" name="referrer">
                                <option selected id="platform-option" value="0">Safeway - Leila (2034 Leila Avenue)</option>
                                <option selected id="platform-option" value="Chilloutlets Platform">Chilloutlets Platform</option>
                                <option selected id="platform-option" value="Kijiji">Kijiji</option>
                                <option selected id="platform-option" value="Indeed">Indeed</option>
                                <option selected id="platform-option" value="Monster">Monster</option>
                                <option selected id="platform-option" value="Craigslist">Craigslist</option>
                                <option selected id="platform-option" value="ZipRecruiter">ZipRecruiter</option>
                                <option selected id="platform-option" value="Workopolis">Workopolis</option>
                                <option selected id="platform-option" value="Glassdoor">Glassdoor</option>
                                <option selected id="platform-option" value="YouTube">YouTube</option>
                                <option selected id="platform-option" value="Facebook">Facebook</option>
                                <option selected id="platform-option" value="Another Retail Carrier">Another Retail Carrier</option>
                                <option selected id="platform-option" value="Word of Mouth">Word of Mouth</option>
                                <option selected id="platform-option" value="Google Search">Google Search</option>
                                <option selected id="platform-option" value="TV">TV</option>
                                <option selected id="platform-option" value="Radio">Radio</option>
                                <option selected id="platform-option" value="Newspaper">Newspaper</option>
                                <option selected id="platform-option" value="Brochure">Brochure</option>
                                <option selected id="platform-option" value="Flyer">Flyer</option>
                                <option selected id="platform-option" value="Poster">Poster</option>
                                <option selected id="platform-option" value="Spotify">Spotify</option>
                                <option selected id="platform-option" value="Coffee News">Coffee News</option>
                                <option selected id="platform-option" value="Metro News">Metro News</option>
                                <option selected id="platform-option" value="Applify">Applify</option>
                                <option selected id="platform-option" value="On Campus">On Campus</option>
                            </select>
                          </div>
                </div>
                  
                <div id="platform-underline"></div>
                
                <div hidden id="platform-panel" class="selectpanel">
                    <a href="javascript:selectPlatform('Chilloutlets Platform, 0')"><div class="panel-item focused">Chilloutlets Platform</div></a>
                    <a href="javascript:selectPlatform('Kijiji', 1)"><div class="panel-item">Kijiji</div></a>
                    <a href="javascript:selectPlatform('Indeed', 2)"><div class="panel-item">Indeed</div></a>
                    <a href="javascript:selectPlatform('Monster', 3)"><div class="panel-item">Monster</div></a>
                    <a href="javascript:selectPlatform('Craigslist', 4)"><div class="panel-item">Craigslist</div></a>
                    <a href="javascript:selectPlatform('ZipRecruiter', 5)"><div class="panel-item">ZipRecruiter</div></a>
                    <a href="javascript:selectPlatform('Workopolis', 6)"><div class="panel-item">Workopolis</div></a>
                    <a href="javascript:selectPlatform('Glassdoor', 7)"><div class="panel-item">Glassdoor</div></a>
                    <a href="javascript:selectPlatform('YouTube', 8)"><div class="panel-item">YouTube</div></a>
                    <a href="javascript:selectPlatform('Facebook', 9)"><div class="panel-item">Facebook</div></a>
                    <a href="javascript:selectPlatform('Another Retail Carrier', 10)"><div class="panel-item">Another Retail Carrier</div></a>
                    <a href="javascript:selectPlatform('Word of Mouth', 11)"><div class="panel-item">Word of Mouth</div></a>
                    <a href="javascript:selectPlatform('Google Search', 12)"><div class="panel-item">Google Search</div></a>
                    <a href="javascript:selectPlatform('TV', 13)"><div class="panel-item">TV</div></a>
                    <a href="javascript:selectPlatform('Radio', 14)"><div class="panel-item">Radio</div></a>
                    <a href="javascript:selectPlatform('Newspaper', 15)"><div class="panel-item">Newspaper</div></a>
                    <a href="javascript:selectPlatform('Brochure', 16)"><div class="panel-item">Brochure</div></a>
                    <a href="javascript:selectPlatform('Flyer', 17)"><div class="panel-item">Flyer</div></a>
                    <a href="javascript:selectPlatform('Poster', 18)"><div class="panel-item">Poster</div></a>
                    <a href="javascript:selectPlatform('Spotify', 19)"><div class="panel-item">Spotify</div></a>
                    <a href="javascript:selectPlatform('Coffee News', 20)"><div class="panel-item">Coffee News</div></a>
                    <a href="javascript:selectPlatform('Metro News', 21)"><div class="panel-item">Metro News</div></a>
                    <a href="javascript:selectPlatform('Applify', 22)"><div class="panel-item">Applify</div></a>
                    <a href="javascript:selectPlatform('On Campus', 23)"><div class="panel-item">On Campus</div></a>
                </div>
                      
                
                

                
                
                        
                
                
                
                
                        
                
                <div id="platform-title">What are you selling?</div>
                <div id="platform-overlay">
                        <div id="select-platform" class="custom-select">
                            <select id="platform-select" name="referrer" size="30">
                                <option selected id="platform-option" value="0">Apparel</option>
                                <option selected id="platform-option" value="Chilloutlets Platform">Toys</option>
                                <option selected id="platform-option" value="Kijiji">Kijiji</option>
                                <option selected id="platform-option" value="Indeed">Indeed</option>
                                <option selected id="platform-option" value="Monster">Monster</option>
                                <option selected id="platform-option" value="Craigslist">Craigslist</option>
                                <option selected id="platform-option" value="ZipRecruiter">ZipRecruiter</option>
                                <option selected id="platform-option" value="Workopolis">Workopolis</option>
                                <option selected id="platform-option" value="Glassdoor">Glassdoor</option>
                                <option selected id="platform-option" value="YouTube">YouTube</option>
                                <option selected id="platform-option" value="Facebook">Facebook</option>
                                <option selected id="platform-option" value="Another Retail Carrier">Another Retail Carrier</option>
                                <option selected id="platform-option" value="Word of Mouth">Word of Mouth</option>
                                <option selected id="platform-option" value="Google Search">Google Search</option>
                                <option selected id="platform-option" value="TV">TV</option>
                                <option selected id="platform-option" value="Radio">Radio</option>
                                <option selected id="platform-option" value="Newspaper">Newspaper</option>
                                <option selected id="platform-option" value="Brochure">Brochure</option>
                                <option selected id="platform-option" value="Flyer">Flyer</option>
                                <option selected id="platform-option" value="Poster">Poster</option>
                                <option selected id="platform-option" value="Spotify">Spotify</option>
                                <option selected id="platform-option" value="Coffee News">Coffee News</option>
                                <option selected id="platform-option" value="Metro News">Metro News</option>
                                <option selected id="platform-option" value="Applify">Applify</option>
                                <option selected id="platform-option" value="On Campus">On Campus</option>
                            </select>
                          </div>
                </div>
                  
                <div id="platform-underline"></div>
                
                <div hidden id="platform-panel" class="selectpanel">
                    <a href="javascript:selectPlatform('Chilloutlets Platform, 0')"><div class="panel-item focused">Chilloutlets Platform</div></a>
                    <a href="javascript:selectPlatform('Kijiji', 1)"><div class="panel-item">Kijiji</div></a>
                    <a href="javascript:selectPlatform('Indeed', 2)"><div class="panel-item">Indeed</div></a>
                    <a href="javascript:selectPlatform('Monster', 3)"><div class="panel-item">Monster</div></a>
                    <a href="javascript:selectPlatform('Craigslist', 4)"><div class="panel-item">Craigslist</div></a>
                    <a href="javascript:selectPlatform('ZipRecruiter', 5)"><div class="panel-item">ZipRecruiter</div></a>
                    <a href="javascript:selectPlatform('Workopolis', 6)"><div class="panel-item">Workopolis</div></a>
                    <a href="javascript:selectPlatform('Glassdoor', 7)"><div class="panel-item">Glassdoor</div></a>
                    <a href="javascript:selectPlatform('YouTube', 8)"><div class="panel-item">YouTube</div></a>
                    <a href="javascript:selectPlatform('Facebook', 9)"><div class="panel-item">Facebook</div></a>
                    <a href="javascript:selectPlatform('Another Retail Carrier', 10)"><div class="panel-item">Another Retail Carrier</div></a>
                    <a href="javascript:selectPlatform('Word of Mouth', 11)"><div class="panel-item">Word of Mouth</div></a>
                    <a href="javascript:selectPlatform('Google Search', 12)"><div class="panel-item">Google Search</div></a>
                    <a href="javascript:selectPlatform('TV', 13)"><div class="panel-item">TV</div></a>
                    <a href="javascript:selectPlatform('Radio', 14)"><div class="panel-item">Radio</div></a>
                    <a href="javascript:selectPlatform('Newspaper', 15)"><div class="panel-item">Newspaper</div></a>
                    <a href="javascript:selectPlatform('Brochure', 16)"><div class="panel-item">Brochure</div></a>
                    <a href="javascript:selectPlatform('Flyer', 17)"><div class="panel-item">Flyer</div></a>
                    <a href="javascript:selectPlatform('Poster', 18)"><div class="panel-item">Poster</div></a>
                    <a href="javascript:selectPlatform('Spotify', 19)"><div class="panel-item">Spotify</div></a>
                    <a href="javascript:selectPlatform('Coffee News', 20)"><div class="panel-item">Coffee News</div></a>
                    <a href="javascript:selectPlatform('Metro News', 21)"><div class="panel-item">Metro News</div></a>
                    <a href="javascript:selectPlatform('Applify', 22)"><div class="panel-item">Applify</div></a>
                    <a href="javascript:selectPlatform('On Campus', 23)"><div class="panel-item">On Campus</div></a>
                </div>
                      
                
                
                
                
                
                
                
                
                
                <div id="platform-title">What version of the outlet store are you launching?</div>
                <div id="platform-overlay">
                        <div id="select-platform" class="custom-select">
                            <select id="platform-select" name="referrer">
                                <option selected id="platform-option" value="0">Version</option>
                                <option selected id="platform-option" value="Chilloutlets Platform">Test</option>
                                <option selected id="platform-option" value="Kijiji">Live</option>
                            </select>
                          </div>
                </div>
                  
                <div id="platform-underline"></div>
                
                <div id="platform-panel" class="selectpanel">
                    <a href="javascript:selectPlatform('Test, 0')"><div class="panel-item focused">Test</div></a>
                    <a href="javascript:selectPlatform('Live', 1)"><div class="panel-item">Live</div></a>
                </div>
                      
                

                
                
                
                
                
                
                <div style="margin-top:60px;">
                <div class="splash"><span id="splash-password">Station Street Address *</span></div>
                <div class="">
                    <input required style="border:none;color:#555;background-color:white;height:25px;font-size:18px;" type="text" id="address" name="station" class="textfield" placeholder="Station Street Address *" />
                </div>
                <div id="dash-password" class="underline"></div>
                </div>
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                <br><br>
        <p>
            <label class="container">I agree to grant access permissions to other handlers on the network.
                <input type="radio" name="granted">
                <span class="checkmark"></span>
              </label>
        </p>
                
                
                
                
                
        <p>
            <label class="container">I have read, understand, and agree to the Outlet Agreement,<br>Privacy Policy, 
                and Terms of Service.
                <input type="radio" name="agreed">
                <span class="checkmark"></span>
              </label>
        </p>
                


                </div>

            </form>


                <a id="redbutton" href="javascript:submitForm()">
                <div class="redclickarea">
                    <div class="redclicker">CONTINUE</div>
                </div>
                </a>
                
            </div>
            
            
        </div>
        
        
        </div>
                                        
                                        
                                        
                                        <div class="login-modal" id="login-modal">
                                            
                                            <div id='logindrop' class="logindrop">
                                            
                                                
                                                <div class="triangle"></div>
                                                
                                            
                                            <%
            
            
            
            
            if (sessionCustomer == null)
                
            {
            
            
            
            
            %>
                                                
                                                <div class='drop-nav'>
                                                    
                                                    <a href="javascript:login()">
                                                    <div class='drop-nav-login'>
                                                    
                                                        <span>LOG IN</span>
                                                    
                                                    </div>
                                                    </a>
                                                    <a href="javascript:register()">
                                                    <div class='drop-nav-register'>
                                                    
                                                        <span>SIGN UP</span>
                                                    
                                                    </div>
                                                    </a>
                                                    
                                                </div>
                                                <div class='drop-body'>
                                                    
                                                    <div class='drop-body-login'>
                                                        
                                                        <div id='login-message'></div>
                                                        
                                                        <form hidden id="login-submit-form" method='post' action="Login">
                                                    
                                                                    <input height="30px" id="customer-email-submit" name="customer-email" type="email" placeholder="Email address" />
                                                                
                                                                <input height="30px" id="customer-password-submit" name="customer-password" type="password" placeholder="Password" />
                                                                
                                                        </form>
                                                        
                                                        <form  action="javascript:submitCustomerLogin()">
                                                            
                                                                <div class="credentials">   
                                                                    <input height="30px" id="customer-email" name="customer-email" type="email" placeholder="Email address" />
                                                                
                                                                <br>
                                                                <input height="30px" id="customer-password" name="customer-password" type="password" placeholder="Password" />
                                                                </div>
                                                                <div class="redclickarea">
                                                                    <button class="redclicker">HANDLER LOG IN</button>
                                                                </div>
                                                    
                                                        </form>
                                                        
                                                    </div>
                                                    <div class='drop-body-register'>
                                                        
                                                        <form method='post' action="LogRegister">
                                                    
                                                        <div class="credentials-long">
                                                                    
                                                                
                                                                    <input height="30px" name="customer-full-name" type="text" value='' placeholder="Name *" />
                                                                <br>
                                                                    <input height="30px" name="customer-phone-number" type="text" value='' placeholder="Mobile Phone Number *" />
                                                                <br>
                                                                    <input height="30px" name="customer-email-address" type="email" value='' placeholder="Email Address *" />
                                                                <br>
                                                                
                                                                    <input height="30px" name="customer-password" type="password" value='' placeholder="Password *" />
                                                                    <br>
                                                                    <input height="30px" name="confirm-password" type="password" value='' placeholder="Try Password Again *" />
                                                                </div>
                                                                <div class="redclickarea">
                                                                    <button class="redclicker">SIGN UP</button>
                                                                </div>
                                                    
                                                            </form>
                                                             
                                                            
                                                    </div>
                                                    

                                                    
                                                </div>
                                            
                                            
                                            <%
            
            
            
            }
            
            else
                
            {
            
            
            
            %>
            
            
            <div class='drop-logout'>

                                    
                                    <form method="post" action="Logout">

                                            <div class="credentials-long">   
                                                <div>
                                                            <div class="chillcredits">
                                                                
                                                                <div class="cardarea">
                                                                    <div class="cardtop"><img src="images/chilloutlets.png" style="margin-left:16px;height:23px;margin-top:12px;float:left;" /></div>
                                                                    <div class="cardcredit">$900.00</div>
                                                                    <div class="cardowner">Redeem Delivery credits</div>
                                                                </div>
                                                            
                                                            </div>
                                                </div><hr>
                                                <div>My credit cards<hr></div>
                                            </div>
                                            <div class="redclickarea">
                                                <button class="redclicker">LOG OUT</button>
                                            </div>

                                    </form>

                                </div>
                                            
                                            
                                            <%
            
            
            }
            
            
            %>
                                                
                                        </div>
                                        </div>
        
        
        
        
<script type="text/javascript">

        
            
            var customerID = null;
            var customerFullName = null;
            var customerCredit = null;

            var spinner = document.getElementsByClassName('spinner-overlay')[0];
            var span = document.getElementsByClassName("close")[0];
            var loginModal = document.getElementById("login-modal");
            var loginDrop = document.getElementById("logindrop");
            var carrierModal = document.getElementById("carrier-modal");
            var carrierDrop = document.getElementById("carrierdrop");
            var timeModal = document.getElementById("time-modal");
            var timeDrop = document.getElementById("timedrop");
            var locationModal = document.getElementById("location-modal");
            var locationDrop = document.getElementById("locationdrop");
            var zoneModal = document.getElementById("zone-modal");
            var zoneDrop = document.getElementById("zonedrop");
            
            //var dash = document.getElementById('dash-first-name');
            //var splash = document.getElementById('splash-first-name');
                    
                    
                    function setActive()
                    
                    {
                        loginModal.style.zIndex = "20";
                        loginModal.style.position = "fixed";
                        loginModal.style.backgroundColor = "rgba(0,0,0,0.6)";
                        loginModal.style.paddingTop = "50px";
                        loginDrop.style.display = "block";
                    }
                    
                    function login()
                    
                    {
                        document.getElementsByClassName('drop-body-register')[0].style.display = "none";
                        document.getElementsByClassName('drop-body-login')[0].style.display = "block";
                    }
                    
                    function validateCarrierLogin()
                    
                    {
                        document.getElementById("carrier-email").value = document.getElementById("carrier-email-validate").value;
                        document.getElementById("carrier-password").value = document.getElementById("carrier-password-validate").value;
                        document.getElementById("login-submit-form").submit();
                    }
            
            window.onclick = function(event)
            
            {
                if (event.target === loginModal)
                    
                {
                    loginModal.style.zIndex = "10";
                    loginModal.style.position = "absolute";
                    loginModal.style.backgroundColor = "rgba(0,0,0,0.0)";
                    loginModal.style.paddingTop = "50px";
                    loginDrop.style.display = "none";
                }
                
            };
            
            
            
            
            function submitForm()
            
            {
                document.getElementById('step1of2').style.display = "none";
                document.getElementById('step2of2').style.display = "block";
                
                document.getElementById('redbutton').href = "javascript:signUp()";
                
            }
            
            function signUp()
            
            {
                    
                    document.getElementById('sign-up-form').submit();
                    
            }
            
            function validateEmail(email) 
            
            {
                var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                return re.test(email);
            }
            
            function validate() 

            {
                var $result = $("#result");
                var email = $("#email").val();
                $result.text("");

                if (validateEmail(email)) {
                  $result.text(email + " is valid :)");
                  $result.css("color", "green");
                } else {
                  $result.text(email + " is not valid :(");
                  $result.css("color", "red");
                }
                return false;
              }
      
      $("#validate").bind("click", validate);
            
            
            checkbt = document.getElementById("check");
passtxt = document.getElementById("password");
respuesta = document.getElementById("respuesta");

check = function(){
    texto = passtxt.value.trim();
    uppercase = false;
    lowercase = false;
    number = false;
    lenght = false;
    //uppercase letter    
    for (i=0; i< texto.length; i++){
        if (texto[i] == texto[i].toUpperCase()){
            uppercase = true;
            break;
        } else {
            uppercase = false;
        }
    }
//lowercase
        for (i=0; i< texto.length; i++){
            if (texto[i] == texto[i].toLowerCase()){
                lowercase = true;
                break;
            } else {
                lowercase = false;
            }
        }

    //number
        for (i=0; i< texto.length; i++){
            if (!isNaN(texto[i])){
                number = true;
                break;
            } else {
                number = false;
            }
        }    


    if (texto.length < 6){
        lenght = false;
    } else {
        lenght = true;
    }

    if (lowercase && uppercase && number && lenght){
        respuesta.innerHTML = "Password is good";    
    } else {
        respuesta.innerHTML = "Password is bad <br />" +
        "lowercase: " + boolstr(lowercase) + "<br />"+
        "uppercase: " + boolstr(uppercase) + "<br />"+
        "number: " + boolstr(number) + "<br />"+
        "lenght: " + boolstr(lenght) + "<br />";
    }

}

function boolstr(val){
if (val == true)
    return "true";
    else
    return "false";
}
            
            document.getElementById("first-name-field").addEventListener("mouseover", function () {
                
                document.getElementById("dash-first-name").style.borderBottom = "2px solid black";
                
            });
            
            document.getElementById("middle-name-field").addEventListener("mouseover", function () {
                
                document.getElementById("dash-middle-name").style.borderBottom = "2px solid black";
                
            });
            
            document.getElementById("last-name-field").addEventListener("mouseover", function () {
                
                document.getElementById("dash-last-name").style.borderBottom = "2px solid black";
                
            });
            
            document.getElementById("email-field").addEventListener("mouseover", function () {
                
                document.getElementById("dash-email").style.borderBottom = "2px solid black";
                
            });
            
            document.getElementById("password-field").addEventListener("mouseover", function () {
                
                document.getElementById("dash-password").style.borderBottom = "2px solid black";
                
            });
            
            document.getElementById("first-name-field").addEventListener("mouseout", function () {
                
                document.getElementById("dash-first-name").style.borderBottom = "1px solid #aaa";
                /*
                $(document).mouseleave(function () 
                {
                    document.getElementById("dash-first-name").style.borderBottom = "1px solid #aaa";
                });
                */
                
                if (document.getElementById("first-name").hasFocus())
                
                {
                    document.getElementById("dash-first-name").style.borderBottom = "2px solid #c00c00";
                    //return 0;
                }
                
                
                
            });
            
            document.getElementById("middle-name-field").addEventListener("mouseout", function () {
                
                document.getElementById("dash-middle-name").style.borderBottom = "1px solid #aaa";
                
                if (document.getElementById("middle-name").hasFocus())
                
                {
                    document.getElementById("dash-middle-name").style.borderBottom = "2px solid #c00c00";
                }
                
                else
                
                {
                    document.getElementById("dash-middle-name").style.borderBottom = "1px solid #aaa";
                }
                
            });
            
            document.getElementById("last-name-field").addEventListener("mouseout", function () {
                
                document.getElementById("dash-last-name").style.borderBottom = "1px solid #aaa";
                
                if (document.getElementById("last-name").hasFocus())
                
                {
                    document.getElementById("dash-last-name").style.borderBottom = "2px solid #c00c00";
                }
                
                else
                
                {
                    document.getElementById("dash-last-name").style.borderBottom = "1px solid #aaa";
                }
                
            });
            
            document.getElementById("email-field").addEventListener("mouseout", function () {
                
                document.getElementById("dash-email").style.borderBottom = "1px solid #aaa";
                
                if (document.getElementById("email").hasFocus())
                
                {
                    document.getElementById("dash-email").style.borderBottom = "2px solid #c00c00";
                }
                
                else
                
                {
                    document.getElementById("dash-email").style.borderBottom = "1px solid #aaa";
                }
                
            });
            
            document.getElementById("password-field").addEventListener("mouseout", function () {
                
                document.getElementById("dash-password").style.borderBottom = "1px solid #aaa";
                
                if (document.getElementById("password").hasFocus())
                
                {
                    document.getElementById("dash-password").style.borderBottom = "2px solid #c00c00";
                }
                
                else
                
                {
                    document.getElementById("dash-password").style.borderBottom = "1px solid #aaa";
                }
                
            });
            
            document.getElementById("first-name").addEventListener("focus", function () {
                
                document.getElementById("dash-first-name").style.borderBottom = "2px solid #c00c00";
                document.getElementById("splash-first-name").style.display = "block";
                document.getElementById("first-name").placeholder = "";
                
            });
            
            document.getElementById("middle-name").addEventListener("focus", function () {
                
                document.getElementById("dash-middle-name").style.borderBottom = "2px solid #c00c00";
                document.getElementById("splash-middle-name").style.display = "block";
                document.getElementById("middle-name").placeholder = "";
                
            });
            
            document.getElementById("last-name").addEventListener("focus", function () {
                
                document.getElementById("dash-last-name").style.borderBottom = "2px solid #c00c00";
                document.getElementById("splash-last-name").style.display = "block";
                document.getElementById("last-name").placeholder = "";
                
            });
            
            document.getElementById("email").addEventListener("focus", function () {
                
                document.getElementById("dash-email").style.borderBottom = "2px solid #c00c00";
                document.getElementById("splash-email").style.display = "block";
                document.getElementById("email").placeholder = "";
                
            });
            
            document.getElementById("password").addEventListener("focus", function () {
                
                document.getElementById("dash-password").style.borderBottom = "2px solid #c00c00";
                document.getElementById("splash-password").style.display = "block";
                document.getElementById("password").placeholder = "";
                
            });
            
            document.getElementById("first-name-field").addEventListener("focusout", function () {
                
                document.getElementById("splash-first-name").style.display = "none";
                document.getElementById("first-name").placeholder = "First Name *";
                document.getElementById("dash-first-name").style.borderBottom = "1px solid #aaa";
                
            });
            
            document.getElementById("middle-name-field").addEventListener("focusout", function () {
                
                document.getElementById("splash-middle-name").style.display = "none";
                document.getElementById("middle-name").placeholder = "Middle Name";
                document.getElementById("dash-middle-name").style.borderBottom = "1px solid #aaa";
                
            });
            
            document.getElementById("last-name-field").addEventListener("focusout", function () {
                
                document.getElementById("splash-last-name").style.display = "none";
                document.getElementById("last-name").placeholder = "Last Name *";
                document.getElementById("dash-last-name").style.borderBottom = "1px solid #aaa";
                
            });
            
            document.getElementById("email-field").addEventListener("focusout", function () {
                
                document.getElementById("splash-email").style.display = "none";
                document.getElementById("email").placeholder = "Email *";
                document.getElementById("dash-email").style.borderBottom = "1px solid #aaa";
                
                if (validateEmail(document.getElementById("email").value)) 
                    
                {
                    document.getElementById("splash-email").innerHTML = "Email correct.";
                }
                
                else

                {
                    document.getElementById("splash-email").innerHTML = "Email incorrect.";
                }
                
            });
            
            document.getElementById("password-field").addEventListener("focusout", function () {
                
                document.getElementById("splash-password").style.display = "none";
                document.getElementById("password").placeholder = "Password *";
                document.getElementById("dash-password").style.borderBottom = "1px solid #aaa";
                
                if (validateEmail(document.getElementById("password").value)) 
                    
                {
                    document.getElementById("splash-password").innerHTML = "Password correct.";
                }
                
                else

                {
                    document.getElementById("splash-password").innerHTML = "Password incorrect.";
                }
                
            });
            
            



</script>
        
        
    </body>
</html>
