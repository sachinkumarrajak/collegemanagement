<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="result.aspx.cs" Inherits="collegemanegement.result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Result</title>
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
            top:-15px;
            left:10px;
            float:left;
            margin-left:500px;
            
        }
     #logo1
     {
       position: relative;
         top: 30px;
         left:-29px;
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
					top:0px;
				  
        }
        #sl
        {
        }
               #res
         {
             
             height:75px;
            width:1165px;
            background:#1a1f33;
            position:relative;
             top:-199px;
            left:115px;
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
                    #res
         {
             
             height:75px;
            width:1165px;
            background:#1a1f33;
            position:relative;
             top:-199px;
            left:115px;
            color:white;
            
            font-size:60px;
            line-height:110px;
         }
         #res1
         {
             width: 326px;
position: absolute;
top: 189px;
left: 480px;
color: white;
text-align: center;
font-size: 41px;
line-height: 110px;
            height: 69px;
         
         }
                  #form
         {
             height:285px;
            width:1162px;
            margin:50px auto;
            background:white;
            border:2px solid #5fb3bd;
            top: 220px;
            left: 115px;
            position: absolute;


         }
    
             #low
        {
            height:00px;
            width:000px;
           
            margin:500px auto;

        }
        #left
        { border:5px solid #5fb3bd;
             
            width:1200px;
            background:white;
            height:900px;
            float:left;
            top: 210px;
            left: 121px;
            position: absolute;
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
        #logoo
     {
       position: relative;
         top: -100px;
         left:-295px;
         width:10px;
     	
     }
     

     

     
      #rights
        { width:80px;
            background:#4c8f96;
            height:65px;
            margin-left:500px;
             border:2px solid white;
 
        }
          #rightss
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
    
      #lefts
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
      #leftss
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
   #mk
    {
    	    
    	      font-size: 13px;
    	 color:white;
      line-height:0px;
      position: relative;
      top:8px;
      text-align: center;
    	 
    }
    #uk
    {
    	 font-size:25px;
       color:white;
      position: relative;
      top:4px;
      left:6px;
    }
    #ack
    {
       font-size: 13px;
    	 color:white;
      line-height:0px;
      position: relative;
      top:23px;
      text-align: center;
    	 
    }
    
    #m1k
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
        #ak
        {font-size: 110px;
             position: relative;
      top: 13px;
      left: 7px;

        }
        #un
        {
	 position: relative;
         top:-22px;
				  
        }
         #usha
         {
             position:relative;
             top:-629px;
           left: -126px;
             color:gray;
           font-size: 28px;
         
         }
         #mark
         {          position:relative;
             top:-80px;
           left: 480px;
             color:black;
           font-size: 28px;
         }
           table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
         .auto-style2
         {
             height: 63px;
              width: 190px;
         }
         .auto-style4
         {
             height: 50px;
              width: 190px;
         }
         .auto-style5
         {
             height: 50px;
              width: 190px;
         }
         .auto-style6
         {
             height: 50px;
              width: 190px;
         }
         .auto-style9
         {
             height: 50px;
             width: 190px;
         }
         .auto-style11
         {
             height: 50px;
             width: 190px;
         }
         .auto-style12
         {
             height: 55px;
         }
         .auto-style13
         {
             height: 55px;
             width: 190px;
         }
         .auto-style14
         {
             height: 55px;
             width: 190px;
         }
         .auto-style15
         {
             height: 55px;
             width: 190px;
         }
         .auto-style16
         {
             height: 50px;
             width: 190px;
         }
         .auto-style17
         {
             height: 50px;
             width: 190px;
             font-weight: bold;
         }
       #logo100
     {
       position: relative;
         top: 80px;
         left:-29px;
         width:10px;
       
     	
     }
     

     

     
      #right12
        { width:180px;
            background:#E1E1E1;
            height:150px;
            margin-left:500px;
             border:2px solid white;
          position: relative;
          left:-20px;
          top:-50px;
 
        }
          #right112
        { width:180px;
            background:#E1E1E1;
            height:150px;
            margin-left:500px;
             border:2px solid white;
          position: relative;
          top: -360px;
          left: 170px;
           font-size: 65px;
             color:white;
             line-height:20px;
               font-weight: bolder;
          text-align: center;
           border:2px solid white;
          
 
        }
    
      #left12
      {
      	      	width:180px;
            background:#E1E1E1;
            height:150px;
            margin-left:500px;
            border:white;
      
            font-size: 120px;
             color:white;
             line-height:32px;
               font-weight: bolder;
             border:2px solid white;
            position: relative;
        
              top: -50px;
        left: -20px;
           
            
      }
      #left112
        { width:180px;
            background:#E1E1E1;
            height:150px;
            margin-left:500px;
             border:2px solid white;
          position: relative;
          top:-360px;
          left: 170px;
           border:2px solid white;
 
        }
   #maa
    {
    	    
    	      font-size: 30px;
    	 color:white;
      line-height:0px;
      position: relative;
      top:16px;
      text-align: center;
    	 
    }
    #usaa
    {
    	 font-size:50px;
       color:white;
      position: relative;
      top:0px;
      left:20px;
    }
    #acaa
    {
       font-size: 30px;
    	 color:white;
      line-height:0px;
      position: relative;
      top:50px;
      text-align: center;
    	 
    }
    
    #m12
    {
      
      position: relative;
      top: 73px;
      left: 7px;
      color: white;
      font-size: 200px;
             color:white;
             line-height:20px;
               font-weight: bolder;
          text-align: center;
         
    }
        #asa
        {font-size: 250px;
             position: relative;
      top: 50px;
      left: 7px;

        }
        #umw
        {
          font-size: 240px;
					position: relative;
					top:13px;
				  
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
            <li><a href="#">Enquiry</a>
              <ul>
                <li><a href="ourcourse.aspx">our courses</a></li>
                <li><a href="Training.aspx">training & placement</a></li>
                
               
             </ul>
            </li>
            <li><a  href="#">ADMISSION</a>
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
      <div id="logoo">
<div id="lefts"><p id="un">u</p></div>

<div id="rights">
            <!--<div id="top"></div>-->
     <p id="uk">USHA</p> 
      <p id="mk">MARTIN</p>
      <p id="ack">ACADEMY</p>     <!-- <div id="bottom"> -->
  </div>
  <div id="leftss">
  <p id="m1k">m</p>
  </div>
  <div id="rightss">
      <p id="ak">a</p>
  </div>
  
  </div>

    <form id="form1" runat="server">

     <div id="low">

        <div id="left">
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
             

            <div id="usha">USHA MARTIN ACADEMY</div>
            <div id="mark">MARKSHEET</div>
            <div id="logo100">
<div id="left12"><p id="umw">u</p></div>

<div id="right12">
            <!--<div id="top"></div>-->
     <p id="usaa">USHA</p> 
      <p id="maa">MARTIN</p>
      <p id="acaa">ACADEMY</p>     <!-- <div id="bottom"> -->
  </div>
  <div id="left112">
  <p id="m12">m</p>
  </div>
  <div id="right112">
      <p id="asa">a</p>
  </div>
  
  </div>

             <table style="width:89%; top: 342px; left: 50px; position: absolute; height: 97px;">
                <tr>
                    <td class="auto-style2" colspan="8">
                        <asp:Label ID="lblname" runat="server" style="top: 26px; left: 907px; position: absolute; height: 19px; width: 164px; font-weight: 700"></asp:Label>
                        <asp:Label ID="Label1" runat="server" style="top: 25px; left: 8px; position: absolute; height: 19px; width: 34px; font-weight: 700" Text="ROLL:"></asp:Label>
                        <asp:Label ID="lblrl" runat="server" style="top: 24px; left: 65px; position: absolute; height: 19px; width: 98px; font-weight: 700"></asp:Label>
                        <asp:Label ID="Label2" runat="server" style="top: -25px; left: 775px; position: absolute; height: 19px; width: 130px; font-weight: 700" Text="BATCH OF:"></asp:Label>
                        <asp:Label ID="lblses" runat="server" style="top: -26px; position: absolute; height: 19px; width: 170px; font-weight: 700; left: 908px"></asp:Label>
                        <asp:Label ID="Label3" runat="server" style="top: -26px; left: 3px; position: absolute; height: 19px; width: 77px; font-weight: 700; right: 995px" Text="REG NO:"></asp:Label>
                        <asp:Label ID="lblres" runat="server" style="top: -22px; left: 79px; position: absolute; height: 19px; width: 110px; font-weight: 700"></asp:Label>
                        <asp:Label ID="Label4" runat="server" style="top: 319px; left: 18px; position: absolute; height: 19px; width: 48px; font-weight: 700" Text="Total:-"></asp:Label>
                        <asp:Label ID="Label5" runat="server" style="top: -30px; left: 336px; position: absolute; height: 19px; width: 62px; font-weight: 700" Text="Semester:-"></asp:Label>
                        <asp:Label ID="lblsem" runat="server" style="top: -32px; left: 428px; position: absolute; height: 19px; width: 129px; font-weight: 700"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp; <b>&nbsp;SUBJECT&nbsp;</b></td>
                    <td class="auto-style13">
                        <asp:Label ID="lblsub1" runat="server" style="top: 79px; left: 180px; position: absolute; height: 28px; width: 118px; right: 777px; font-weight: 700"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:Label ID="lblsub2" runat="server" style="top: 77px; left: 321px; position: absolute; height: 29px; width: 108px; font-weight: 700; bottom: 166px; right: 646px;"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="lblsub3" runat="server" style="top: 73px; left: 449px; position: absolute; height: 28px; width: 110px; font-weight: 700"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="lblsub4" runat="server" style="top: 73px; left: 582px; position: absolute; height: 19px; width: 49px; font-weight: 700"></asp:Label>
                    </td>
                    <td class="auto-style15">
                        <asp:Label ID="lblsub5" runat="server" style="top: 77px; left: 717px; position: absolute; height: 19px; width: 39px; font-weight: 700"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="lblsub6" runat="server" style="top: 80px; left: 850px; position: absolute; height: 19px; width: 34px; font-weight: 700"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="lblsub7" runat="server" style="font-weight: 700; top: 79px; left: 975px; position: absolute; height: 19px; width: 38px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;&nbsp; <b>MARKS<br />
                        &nbsp; OBTAINED</b></td>
                    <td class="auto-style9">
                        <asp:Label ID="lblmk1" runat="server" style="top: 134px; left: 172px; position: absolute; height: 29px; width: 113px; font-weight: 700; right: 790px;"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:Label ID="lblmk2" runat="server" style="top: 131px; left: 315px; position: absolute; height: 31px; width: 107px; font-weight: 700"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;&nbsp;<asp:Label ID="lblmk3" runat="server" style="top: 128px; left: 453px; position: absolute; height: 28px; width: 87px; font-weight: 700"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="lblmk4" runat="server" style="top: 132px; left: 586px; position: absolute; font-weight: 700"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:Label ID="lblmk5" runat="server" style="top: 134px; left: 719px; position: absolute; height: 19px; width: 34px; font-weight: 700"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="lblmk6" runat="server" style="top: 136px; left: 849px; position: absolute; height: 19px; width: 40px; font-weight: 700"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="lblmk7" runat="server" style="top: 133px; left: 978px; position: absolute; height: 19px; width: 51px; font-weight: 700"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;<b>&nbsp; FULL MARKS&nbsp;</b></td>
                    <td class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp; 100</td>
                    <td class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 100</td>
                    <td class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 100</td>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>100&nbsp;</b><asp:Label ID="lblnm" runat="server" style="top: 27px; left: 841px; position: absolute; height: 19px; width: 34px; font-weight: 700" Text="NAME:"></asp:Label>
                    </td>
                    <td class="auto-style16">&nbsp;&nbsp;&nbsp;&nbsp; <b>100&nbsp;</b></td>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>100&nbsp;</b></td>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>100&nbsp;</b></td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;&nbsp;&nbsp; <b>&nbsp;GRADE&nbsp;</b></td>
                    <td class="auto-style9">
                        <asp:Label ID="lblg1" runat="server" style="top: 241px; left: 168px; position: absolute; height: 19px; width: 34px; font-weight: 700"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:Label ID="lblg2" runat="server" style="top: 237px; left: 319px; position: absolute; height: 19px; width: 34px; font-weight: 700"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="lblg3" runat="server" style="top: 237px; left: 451px; position: absolute; height: 19px; width: 34px; font-weight: 700"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="lblg4" runat="server" style="font-weight: 700; top: 238px; left: 570px; position: absolute; height: 19px; width: 42px"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:Label ID="lblg5" runat="server" style="font-weight: 700; top: 238px; left: 706px; position: absolute; height: 19px; width: 38px; right: 331px"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="lblg6" runat="server" style="font-weight: 700; top: 240px; left: 846px; position: absolute; height: 19px; width: 42px"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="lblg7" runat="server" style="font-weight: 700; top: 240px; left: 970px; position: absolute; height: 19px; width: 38px"></asp:Label>
                    </td>
                </tr>
            </table>
            <asp:Label ID="lbltot" runat="server" style="top: 663px; left: 147px; position: absolute; height: 19px; width: 104px; right: 949px; font-weight: 700;"></asp:Label>
            </div>
         </div>
    <div>
    
    </div>
    </form>
</body>
</html>
