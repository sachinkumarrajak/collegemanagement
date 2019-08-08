<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Training.aspx.cs" Inherits="collegemanegement.Training" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Training</title>
    <style> 
      *
        {
            margin:0px;
            padding:0px;
        }
        #menu, #menu ul {
		margin: 0;
		padding: 0;
		list-style: none;
	}
	
	#menu {
		width: 1006px;
		border: 1px solid #222;
		background-color: #111;
		background-image: -moz-linear-gradient(#444, #111); 
		background-image: -webkit-gradient(linear, left top, left bottom, from(#444), to(#111));	
		background-image: -webkit-linear-gradient(#444, #111);	
		background-image: -o-linear-gradient(#444, #111);
		background-image: -ms-linear-gradient(#444, #111);
		background-image: linear-gradient(#444, #111);
		-moz-box-shadow: 0 1px 1px #777, 0 1px 0 #666 inset;
		-webkit-box-shadow: 0 1px 1px #777, 0 1px 0 #666 inset;
		box-shadow: 0 1px 1px #777, 0 1px 0 #666 inset;
	}
	
	#menu:before,
	#menu:after {
		content: "";
		display: table;
	}
	
	#menu:after {
		clear: both;
	}
	
	#menu {
		zoom:1;
	}
	
	#menu li {
		float: left;
		border-right: 1px solid #222;
		-moz-box-shadow: 1px 0 0 #444;
		-webkit-box-shadow: 1px 0 0 #444;
		box-shadow: 1px 0 0 #444;
		position: relative;
	}
	
	#menu a {
	float: left;
	padding: 9px 16px;
	color: #b7b7b7;
	text-transform: uppercase;
	font: bold 12px Arial, Helvetica;
	text-decoration: none;
	text-shadow: 0 1px 0 #000;
	}
	
	#menu li:hover > a {
		color: #fafafa;
	}
	
	
	
	
	#menu ul {
		margin: 9px 0 0 0;
		_margin: 0; /*IE6 only*/
		opacity: 0;
		visibility: hidden;
		position: absolute;
		top: 33px;
		left: 0;
		z-index: 1;    
		background: #444;
		background: -moz-linear-gradient(#444, #111);
		background-image: -webkit-gradient(linear, left top, left bottom, from(#444), to(#111));
		background: -webkit-linear-gradient(#444, #111);    
		background: -o-linear-gradient(#444, #111);	
		background: -ms-linear-gradient(#444, #111);	
		background: linear-gradient(#444, #111);
		-moz-box-shadow: 0 -1px rgba(255,255,255,.3);
		-webkit-box-shadow: 0 -1px 0 rgba(255,255,255,.3);
		box-shadow: 0 -1px 0 rgba(255,255,255,.3);	
		-webkit-transition: all .2s ease-in-out;
		-moz-transition: all .2s ease-in-out;
		-ms-transition: all .2s ease-in-out;
		-o-transition: all .2s ease-in-out;
		transition: all .2s ease-in-out;  
	}

	#menu li:hover > ul {
		opacity: 1;
		visibility: visible;
		margin: 0;
	}
	
	#menu ul ul {
		top: 0;
		left: 130px;
		margin: 0 0 0 10px;
		_margin: 0; /*IE6 only*/
		-moz-box-shadow: -1px 0 0 rgba(255,255,255,.3);
		-webkit-box-shadow: -1px 0 0 rgba(255,255,255,.3);
		box-shadow: -1px 0 0 rgba(255,255,255,.3);		
	}
	
	#menu ul li {
		float: none;
		display: block;
		border: 0;
		_line-height: 0; /*IE6 only*/
		-moz-box-shadow: 0 1px 0 #111, 0 2px 0 #666;
		-webkit-box-shadow: 0 1px 0 #111, 0 2px 0 #666;
		box-shadow: 0 1px 0 #111, 0 2px 0 #666;
	}
	
	#menu ul li:last-child {   
		-moz-box-shadow: none;
		-webkit-box-shadow: none;
		box-shadow: none;    
	}
	
	#menu ul a {    
		padding: 9px;
		width: 153px;
		_height: 9px; /*IE6 only*/
		display: block;
		white-space: nowrap;
		float: none;
		text-transform: none;
	}
	
	#menu ul a:hover {
		background-color: #ff9000;
		background-image: -moz-linear-gradient(#ff9000,  #ff7200);	
		background-image: -webkit-gradient(linear, left top, left bottom, from(#ff9000), to(#ff7200));
		background-image: -webkit-linear-gradient(#ff9000, #ff7200);
		background-image: -o-linear-gradient(#ff9000, #ff7200);
		background-image: -ms-linear-gradient(#ff9000, #ff7200);
		background-image: linear-gradient(#ff9000, #ff7200);
	}
	
	
	#menu ul li:first-child > a:after {
		content: '';
		position: absolute;
		left: 20px;
		top: -6px;
		border-left: 6px solid transparent;
		border-right: 6px solid transparent;
		border-bottom: 6px solid #444;
	}
	
	#menu ul ul li:first-child a:after {
		left: -6px;
		top: 50%;
		margin-top: -6px;
		border-left: 0;	
		border-bottom: 6px solid transparent;
		border-top: 6px solid transparent;
		border-right: 6px solid #3b3b3b;
	}
	
	#menu ul li:first-child a:hover:after {
		border-bottom-color: #ff9000; 
	}
	
	#menu ul ul li:first-child a:hover:after {
	border-right-color: #ff8200;
	border-bottom-color: transparent;
	}
	
        #head
        {
            height:120px;
            background:#1E61A8;
            width:100%;
        }
        body
        {
            background:#ededed;
         //    background-image:url(bg-body.jpg);
        }
        #logo
        {
            height:110px;
            width:330px;
            
            position:relative;
            top:25px;
            left:110px;
            color:white;
            text-align:center;
            font-size:60px;
            line-height:110px;


        }
        #nav
        {   
            position:relative;
            top:-15px;
            left:10px;
            float:left;
            margin-left:500px;
            
        }
     #logo1
     {
       position: relative;
         top: -100px;
         left:-295px;
         width:10px;
     	
     }
     

     

     
      #right11
        { width:80px;
            background:#4c8f96;
            height:65px;
            margin-left:500px;
             border:2px solid white;
 
        }
          #right111
        { width:80px;
            background:orange;
            height:65px;
            margin-left:500px;
             border:2px solid white;
          position: relative;
          top: -138px;
          left: 84px;
           font-size: 65px;
             color:white;
             line-height:20px;
               font-weight: bolder;
          text-align: center;
           border:2px solid white;
          
 
        }
    
      #left11
      {
      	      	width:80px;
            background:orange;
            height:65px;
            margin-left:500px;
            border:white;
      
            font-size: 120px;
             color:white;
             line-height:32px;
               font-weight: bolder;
             border:2px solid white;
            
           
            
      }
      #left111
        { width:80px;
            background:#4c8f96;
            height:65px;
            margin-left:500px;
             border:2px solid white;
          position: relative;
          top:-138px;
          left: 83px;
           border:2px solid white;
 
        }
   #m
    {
    	    
    	      font-size: 13px;
    	 color:white;
      line-height:0px;
      position: relative;
      top:8px;
      text-align: center;
    	 
    }
    #us
    {
    	 font-size:25px;
       color:white;
      position: relative;
      top:4px;
      left:6px;
    }
    #ac
    {
       font-size: 13px;
    	 color:white;
      line-height:0px;
      position: relative;
      top:23px;
      text-align: center;
    	 
    }
    
    #m1
    {
      font-size: 35px;
      position: relative;
      top: 24px;
      left: 7px;
      color: white;
      font-size: 89px;
             color:white;
             line-height:20px;
               font-weight: bolder;
          text-align: center;
         
    }
        #a
        {font-size: 110px;
             position: relative;
      top: 13px;
      left: 7px;

        }
        #uu
        {
					position: relative;
					top:-22px;
				  
        }
        #sl
        {
        }    #res
         {
             
             height:75px;
            width:1328px;
            background:#1a1f33;
            position:relative;
             top:-199px;
            left:20px;
            color:white;
            
            font-size:60px;
            line-height:110px;
         }
         #res1
         {
             width: 326px;
position: absolute;
top: 180px;
left: 480px;
color: white;
text-align: center;
font-size: 41px;
line-height: 110px;
            height: 69px;
         
         }
             #form
         {
             height:1080px;
            width:1325px;
            margin:50px auto;
            background:white;
            border:2px solid #5fb3bd;
            top: 210px;
            left: 20px;
            position: absolute;
          //  background-image:url(bg-body.jpg);
         
         }

         #con
         {
             font-size:40px;
         }
        #int
        {
            top: 34px;
            left: 71px;
            position: absolute;
            height: 34px;
            width: 332px;
            font-weight: 700;
            font-size:25px;
        }
        #i
        {
                       width: 370px;
            top: 97px;
            left: 73px;
            position: absolute;
            height: 35px;
            background-color:#1A1F33;
            right: 882px;
            color:white;
            font-size: 27px;
            text-align:center;
        }
        #p
        {
             width: 1339px;
            top: 527px;
            left: 67px;
            position: absolute;
            height: 187px;
            font-size:18px;
        }
        #cn
        {
            width: 446px;
            top: 1303px;
            position: absolute;
            height: 19px;
            left: 92px;
            font-weight: 700;
        }
        #mar
        {
        }
         .active
        {
            
            
            background:#335f64;
            
        }
      
    </style>
</head>
<body>
    
     <div id="head">
        <div id="logo">
            

        </div>
        <div id="nav">
            
            
              
          <ul id="menu">
            <li><a  href="home.aspx">Home</a></li>
            <li><a class="active" href="#">Enquiry</a>
              <ul>
                <li><a  href="ourcourse.aspx">our courses</a></li>
                <li><a class="active" href="Training.aspx">training & placement</a></li>
                
               
             </ul>
            </li>
            <li><a  href="#">ADMISSION</a>
              <ul>
                <li><a href="admissionproses.aspx">Admission Process</a></li>
                <li><a href="feestructre.aspx">Fee Structure</a></li>
                  <li><a href="eligibility.aspx">Eligibility</a></li>
                
              </ul>
            </li>
            
            
           
            <li><a  href="#">CAMPUS</a>
              <ul>
                <li><a href="facility.aspx">Facilities</a></li>

              </ul>
            </li>
           
            
            <li><a href="sg.aspx">GALLERY</a></li>
            <li><a href="admin1work.aspx">ADMIN</a> </li>
            <li><a href="contactus.aspx">CONTACT US</a></li>
          </ul>
        

</div>
        </div>
      <div id="logo1">
<div id="left11"><p id="uu">u</p></div>

<div id="right11">
            <!--<div id="top"></div>-->
     <p id="us">USHA</p> 
      <p id="m">MARTIN</p>
      <p id="ac">ACADEMY</p>     <!-- <div id="bottom"> -->
  </div>
  <div id="left111">
  <p id="m1">m</p>
  </div>
  <div id="right111">
      <p id="a">a</p>
  </div>
  
  </div>
    <div id="res"></div>
    <div id="res1">
        Training 
    </div>
    <form id="form1" runat="server">
    <div id="form">
        <div id="int">
Training & Placement Cell
            <asp:Image ID="Image1" runat="server" ImageUrl="~/imageedit_6_7422611884.jpg" style="top: 135px; left: 1px; position: absolute; height: 335px; width: 376px" />
</div>
        <div id="i">INTRODUCTION</div>
        <div id="text"><p id="p">Welcome to Training & Placement Cell at Usha Martin Academy, Usha Martin Academy  is a world class institution of Management & Information <br />
            Technology. It has acquired this status through meritorious and innovative students, high quality faculty, and contribution by distinguished alumni. Our alumni <br />
            have excelled in every field. Usha Martin Academy offers a large pool of talent to recruit from, with a wide range of specializations at UGIT levels.</br>
            Usha Martin Academy  in the radar of the Corporate. MNC keep hiring our students on a routine basis More than thousand students are placed in on/off <br />
            campus drives during the recent past. Over the years, our students have become the preferred ones for campus placement by all leading organizations.<br />
            Organizations are welcomed to visit Usha Martin Academy and for pre-placement talks or kindly allow us to visit your esteemed organization. We promise whole <br />
            hearted support to your team (admin, logistics, transports, infrastructure etc) to ensure successful placement drives.<br />
We look forward to receive the team of your executives for recruitment at our lush green campus.



            </p>


        </div>
        <div id="mar">
        <marquee direction="left" scrollamount="8" onMouseMove="this.stop()" onMouseOut="this.start()" style="top: 758px; left: 18px; position: absolute; height: 19px; width: 1462px">
						 
     <img src="logo/1.png"  alt="Our Recruiters"/>
     <img src="logo/2.png"  alt="Our Recruiters"/>
     <img src="logo/3.png"  alt="Our Recruiters"/>
     <img src="logo/5.png"  alt="Our Recruiters"/>
     
     <img src="logo/4.jpg"  alt="Our Recruiters"/>
     <img src="logo/6.jpg"  alt="Our Recruiters"/>

     <img src="logo/7.png"  alt="Our Recruiters"/>



        </marquee> 
            </div> 

        </div>
      
 <!--   <div id="cn">CONTACT INFORMATION</div>-->
    <div>
    
    </div>
    </form>
</body>
</html>
