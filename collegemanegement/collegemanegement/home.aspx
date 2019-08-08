<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="collegemanegement.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>home</title>
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
            top:-35px;
            
            float:left;
            margin-left:500px;
            
        }
        .active
        {
            
            
            background:#335f64;
            
        }
        #demo_style
        {
            height:379px;
            width:1162px;
            margin:50px auto;
            background:white;
            border:2px solid #5fb3bd;
            top: 144px;
            left: 115px;
            position: absolute;
        }
        #low
        
            {
            height:1px;
            width:1000px;
           
            margin:500px auto;

        }
        
        #left
        { border:5px solid #5fb3bd;
             
            width:500px;
            background:white;
            height:600px;
            float:left;
            top: 623px;
            left: 121px;
            position: absolute;
        }
        #right
        {
            width:500px;
            background:#4c8f96;
            height:600px;
            margin-left:500px;
            

        }
        #top
        {
            height:300px;
            width:500px;
            background:#4c8f96;
        }
        #bottom
        {
            height:300px;
            width:500px;
            background:#4c8f96;
        }
        #lefttop
        {
            height:50px;
            width:180px;
            background:#1a1f34;
            color:white;
            text-align:center;
            font-family:Arial,helvetica,sans-serif;
            font-size:30px;
            line-height:50px;
            position:relative;
            top:-20px;
            left:30px;               
        }
        #sss
        {
            height:50px;
            width:180px;
            background:#1a1f34;
            color:white;
            text-align:center;
            font-family:Arial,helvetica,sans-serif;
            font-size:30px;
            line-height:50px;
            position:relative;
            top:-20px;
            left:30px;
        }
        .m1
        {
            height: 96px;
            width: 1351px;
            background-color: gray;
            position: relative;
            top: 450px;
            left: -698px;
            text-align:center;
            text-emphasis-color:aqua;
            line-height:65px;
        }
        #mar
        {
            position:relative;
            top:45px;
        }
        
    
            #logo1
     {
         position: relative;
         top: -1110px;
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
        #marw
        {
             height: 0px;
            width: 250px;
            position: relative;
            top:-220px;
            left:70px;

        }
        #p
        {
            top: 331px;
            left: 6px;
            position: absolute;
            height: 212px;
            width: 495px;
            font-weight: 700;
        }
    </style>
    

</head>
<body>
    
    <div id="head">
        <div id="logo">
            

        </div>
        <div id="mar">
        <marquee direction="left" onmouseout="this.setAttribute('scrollamount', 5, 0);" onmouseover="this.setAttribute('scrollamount', 0, 0);" scrollamount="5" width="100%" style="background-color: #CCFFFF">
		<font color="#990000">
<a href="studentrestration.aspx">Online registration form for BCA and BBA</a>&nbsp;&nbsp; | &nbsp;&nbsp;		
<a href="resultserch.aspx">UGIT/UGPM exam result for BBA(2013-16) & BCA(2013-16)</a>&nbsp;&nbsp; | &nbsp;&nbsp;
</marquee>
        </div>
        <div id="nav">
            
            
          <ul id="menu">
            <li><a class="active" href="#">Home</a></li>
            <li><a href="#">Enquiry</a>
              <ul>
                <li><a href="ourcourse.aspx">our courses</a></li>
                <li><a href="Training.aspx">training & placement</a></li>
                
               
             </ul>
            </li>
            <li><a href="#">ADMISSION</a>
              <ul>
                <li><a href="admissionproses.aspx">Admission Process</a></li>
                <li><a href="feestructre.aspx">Fee Structure</a></li>
                  <li><a href="eligibility.aspx">Eligibility</a></li>
                
              </ul>
            </li>
            
            
            <li><a href="#">CAMPUS</a>
              <ul>
                <li><a href="facility.aspx">Facilities</a></li>
                       
	          
              </ul>
            </li>
           
            
            <li><a href="sg.aspx">GALLERY</a></li>
            <li><a href="adminid.aspx">ADMIN</a> </li>
            <li><a href="contactus.aspx">CONTACT US</a></li>
          </ul>
        

     
</div>
        </div>
    
    <form id="form1" runat="server">
    

    <div id="low">
        <div id="left">
            <div id="lefttop">About us</div>
            <div id="text"><p id="p">The  Usha Martin Academy is a USD 1billion conglomerate with a global presence. Usha Martin, the group’s flagship company has emerged as India‘s largest and the world’s second largest steel wire rope manufacturer.
				<br /><br />UMA provides utmost precendence to placements of it’s Student .This is brought about by regular conduction of workshop on personality development. Today UMA reaches close to 5,000 student across it’s 11 campuses. This rapid growth in so short a span of time is a testament to the ideals of the UMA and the recognition of their importance in the marketplace.
					
</p></div>
            <asp:Image ID="Image2" runat="server" ImageUrl="~/imges/1.jpg" style="top: 46px; left: 29px; position: absolute; height: 271px; width: 272px" />
        </div>

        <div id="right">
            <div id="top"><p id="sss">Notice</p></div>
             <div id="marw">
            <marquee direction="up" onmouseout="this.setAttribute('scrollamount', 1, 0);" onmouseover="this.setAttribute('scrollamount', 0, 0);" scrollamount="1" width="100%" >
<a href="pdf/excel.pdf">EXCEl Ebook downlod</a><br /><hr />
<a href="studentrestration.aspx">online registration form for BBA/BCA</a><br />
                <a href="pdf/java.pdf">java study matrial</a><br />
                <a href="pdf/sad.pdf">SAD study matrial </a><br /><hr />
                <a href="pdf/OperatingSystems.pdf">Downlod Operating system ebook</a><br /><hr />
               <a href="resultserch.aspx">Result of UGIT/UGPM for BBA/BCA</a>




             </marquee>  
        </div>
           

        <!--    <div id="bottom">
                <br />
                <br />
            </div>-->
            <div class="m1">&copy;copyright | all right resurved. sachin pvt.Ltd </div>
        </div>
    </div>

<div id="demo_style_img">

</div>
    <div id="logo1">
<div id="left11">u</div>

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
       

    <div id="demo_style">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick"></asp:Timer>
<asp:Image ID="Image1" runat="server" ImageUrl="~/header-img.jpg" style="top: 3px; left: 4px; position: absolute; width: 1155px; height: 370px" />
            </ContentTemplate>
        </asp:UpdatePanel>
        
    </div>

    <table>

    </table>
        <p>
            &nbsp;</p>
    <div>
    
    </div>
        <p id="img">
            &nbsp;</p>
    </form>
</body>
</html>
