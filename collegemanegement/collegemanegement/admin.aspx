<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="collegemanegement.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>admin panel</title>
    <style>
        *
        {
            padding:0px;
            margin-left: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
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
		_margin: 0;
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
            background:#1a1f33;
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
        .active1
        {
            
            
            background:#335f64
            
        }
        
        
    #sa {
    height: 325px;
    background-color: #1E61A8;
    width: 785px;
    position: relative;
    top: 100px;
    left: 279px;
}
        #u
        {
            width: 326px;
position: absolute;
top: -17px;
left: 35px;
color: white;
text-align: center;
font-size: 41px;
line-height: 110px;
            height: 69px;
        }
         #p
        {
            width: 330px;
position: absolute;
top: 45px;
left: 13px;
color: white;
text-align: center;
font-size: 41px;
line-height: 110px;
            height: 110px;
        }
        </style>
	
</head>
<body>
    <div id="head">
        <div id="logo">
            DHNCollege

        </div>
        <div id="nav">
            
            
          <ul id="menu">
            <li><a class="active" href="home.aspx">Home</a></li>
            <li><a class="activ3" href="#">Enquery</a>
              <ul>
                <li><a  href="ourcourses.aspx">our courses</a></li>
                <li><a href="#">training & placement</a></li>
                
               
             </ul>
            </li>
            <li><a href="#">ADMISSION</a>
              <ul>
                <li><a href="#">Admission Process</a></li>
                <li><a href="#">Fee Structure</a></li>
                  <li><a href="#">Eligibility</a></li>
                
              </ul>
            </li>
            
            
            <li><a href="#">CAMPUS</a>
              <ul>
                <li><a href="#">Facilities</a></li>
                <li class="first"><a href="#" class="dir">Sports Activities</a>	        
	          </li>
              </ul>
            </li>
           
            
            <li><a  href="#">GALLERY</a></li>
            <li><a class="active1"href="#">ADMIN</a> </li>
            <li><a href="#">CONTACT US</a></li>
          </ul>
        

    
</div>
        </div>
    <form id="form1" runat="server">
    <div id="sa">
        <div id="u">
          <p style="width: 270px">  User id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
            
        </div>
            <div id="p">
                <p style="height: 91px; width: 280px">Password</p>
                </div>
        <asp:TextBox ID="TextBox1" runat="server" style="top: 54px; left: 313px; position: absolute; height: 28px; width: 370px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="top: 123px; left: 318px; position: absolute; height: 28px; width: 365px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" BackColor="#FF66CC" BorderColor="Fuchsia" style="top: 217px; left: 323px; position: absolute; height: 33px; width: 148px" Text="LOGIN" OnClick="Button1_Click" Width="13px" />
        <asp:Button ID="Button2" runat="server" style="top: 217px; left: 524px; position: absolute; height: 33px; width: 148px" Text="LOGIN AS" Width="13px" BackColor="#FF3399" BorderColor="#FF0066" OnClick="Button2_Click1" />
    </div>
    <div style="width: 192px">
    
    </div>
    </form>
</body>
</html>
