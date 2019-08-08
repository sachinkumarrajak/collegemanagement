﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="feestructre.aspx.cs" Inherits="collegemanegement.feestructre" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>feestructre</title>
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
        }
               #res
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

         
             height:517px;
            width:1325px;
            margin:50px auto;
            background:white;
            border:2px solid #5fb3bd;
            top: 210px;
            left: 20px;
            position: absolute;


         }
                          #int
        {
            top: 32px;
            left: 206px;
            position: absolute;
            height: 34px;
            width: 332px;
            font-weight: 700;
            font-size:25px;
              text-decoration: underline;
            color: #FF3300;
        }
        #not
        {
            top: 90px;
            left: 206px;
            position: absolute;
            height: 19px;
            width: 383px;
            font-weight: 700;
        }
        #gr
        {
            top: 129px;
            left: 205px;
            position: absolute;
            height: 41px;
            width: 750px;
            font-weight: 700;
            color: #FFFFFF;
            background-color: #689900;
            text-align:center;
        }
        #p
        {
            top: 12px;
            left: 9px;
            position: absolute;
            height: 19px;
            width: 735px;
        }
        .auto-style1
        {
            width: 56%;
            top: 173px;
            left: 208px;
            position: absolute;
            height: 168px;
        }
        table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
        .active
        {
              background:#335f64;
            
        }
        .auto-style2
        {
            height: 34px;
            font-weight: bold;
            text-align: right;
        }
        .auto-style3
        {
            width: 68px;
            font-weight: bold;
            text-align: center;
        }
        .auto-style4
        {
            width: 68px;
            height: 26px;
            font-weight: bold;
            text-align: center;
        }
        .auto-style5
        {
            height: 26px;
            font-weight: bold;
            text-align: center;
        }
        .auto-style6
        {
            width: 68px;
            height: 28px;
            font-weight: bold;
            text-align: center;
        }
        .auto-style7
        {
            height: 28px;
            font-weight: bold;
            text-align: center;
        }
        .auto-style8
        {
            width: 68px;
            height: 27px;
            font-weight: bold;
            text-align: center;
        }
        .auto-style9
        {
            height: 27px;
            font-weight: bold;
            text-align: center;
        }
        .auto-style10
        {
            width: 68px;
            height: 25px;
            font-weight: bold;
            text-align: center;
        }
        .auto-style11
        {
            height: 25px;
            font-weight: bold;
            text-align: center;
        }
        .auto-style12
        {
            width: 68px;
            height: 24px;
            font-weight: bold;
            text-align: center;
        }
        .auto-style13
        {
            height: 24px;
            font-weight: bold;
            text-align: center;
        }
        .auto-style14
        {
            width: 182px;
            font-weight: bold;
            text-align: center;
        }
        .auto-style15
        {
            height: 26px;
            width: 182px;
            font-weight: bold;
            text-align: center;
        }
        .auto-style16
        {
            height: 28px;
            width: 182px;
            font-weight: bold;
            text-align: center;
        }
        .auto-style17
        {
            height: 27px;
            width: 182px;
            font-weight: bold;
            text-align: center;
        }
        .auto-style18
        {
            height: 25px;
            width: 182px;
            font-weight: bold;
            text-align: center;
        }
        .auto-style19
        {
            height: 24px;
            width: 182px;
            font-weight: bold;
            text-align: center;
        }
        .auto-style20
        {
            width: 68px;
            text-align: right;
            height: 37px;
        }
        .auto-style21
        {
            height: 37px;
            width: 182px;
            font-weight: bold;
        }
        .auto-style22
        {
            height: 37px;
            font-weight: bold;
            text-align: center;
        }
        .auto-style23
        {
            width: 23px;
        }
        .auto-style24
        {
            height: 26px;
            width: 23px;
        }
        .auto-style25
        {
            height: 28px;
            width: 23px;
        }
        .auto-style26
        {
            height: 27px;
            width: 23px;
        }
        .auto-style27
        {
            height: 25px;
            width: 23px;
        }
        .auto-style28
        {
            height: 24px;
            width: 23px;
        }
        .auto-style29
        {
            height: 37px;
            width: 23px;
            font-weight: bold;
            text-align: center;
        }
        .auto-style30
        {
            font-weight: bold;
            text-align: center;
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
            <li><a class="active" href="#">ADMISSION</a>
              <ul>
                <li><a  href="admissionproses.aspx">Admission Process</a></li>
                <li><a class="active" href="#">Fee Structure</a></li>
                  <li><a href="eligibility.aspx">Eligibility</a></li>
                
              </ul>
            </li>
            
            
            <li><a href="#">CAMPUS</a>
              <ul>
                <li><a href="facility.aspx">Facilities</a></li>
                       
	          
              </ul>
            </li>
           
            
            <li><a href="sa.aspx">GALLERY</a></li>
            <li><a href="adminid.aspx">ADMIN</a> </li>
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
        FEE STRUCTURE
    </div>
    <div id="form">
                <div id="int">
                        FEE STRUCTURE
                    
                    </div>
        <div id="not">FEE NOTICE for All STUDENT</div>
        <div id="gr"><p id=p>Details of Tuition Fee & Other charges Payable by the student of BCA/BBA 2016-17</p></div>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FEE DEtails for All BBA/BCA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <br />
                            1</td>
                        <td class="auto-style14">Admission Fee</td>
                        <td class="auto-style23">&nbsp;</td>
                        <td class="auto-style30">30,000</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">2</td>
                        <td class="auto-style15">University Enrolment Fee</td>
                        <td class="auto-style24"></td>
                        <td class="auto-style5">1000</td>
                    </tr>
                    <tr>
                        <td class="auto-style6">3</td>
                        <td class="auto-style16">Tuition Fee</td>
                        <td class="auto-style25"></td>
                        <td class="auto-style7">44,000</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">4</td>
                        <td class="auto-style17">Anual chrges</td>
                        <td class="auto-style26"></td>
                        <td class="auto-style9">50,000</td>
                    </tr>
                    <tr>
                        <td class="auto-style10">5</td>
                        <td class="auto-style18">Unversity Examination Fee</td>
                        <td class="auto-style27"></td>
                        <td class="auto-style11">20,000</td>
                    </tr>
                    <tr>
                        <td class="auto-style12">6</td>
                        <td class="auto-style19">College &amp; Library Security Deposit (Refundable)</td>
                        <td class="auto-style28"></td>
                        <td class="auto-style13">5000</td>
                    </tr>
                    <tr>
                        <td class="auto-style20"></td>
                        <td class="auto-style21"></td>
                        <td class="auto-style29">TOTAL</td>
                        <td class="auto-style22">150,000</td>
                    </tr>
                </table>
   </div>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
