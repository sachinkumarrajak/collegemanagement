<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="facultyupdate.aspx.cs" Inherits="collegemanegement.facultyupdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>facultyupdate</title>
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
            width:1165px;
            background:#1a1f33;
            position:relative;
             top:-180px;
            left:115px;
            color:white;
            
            font-size:60px;
            line-height:110px;
         }
         #res1
         {
             width: 326px;
position: absolute;
top: 205px;
left: 480px;
color: white;
text-align: center;
font-size: 41px;
line-height: 110px;
            height: 69px;
         
         }
         
          #form
         {
             height:800px;
            width:1162px;
            margin:50px auto;
            background:white;
            border:2px solid #5fb3bd;
            top: 240px;
            left: 115px;
            position: absolute;


         }

   
         .auto-style1
         {
             width: 97%;
             top: 44px;
             left: 14px;
             position: absolute;
             height: 252px;
         }
         .auto-style2
         {
             width: 182px;
         }
         .auto-style3
         {
             width: 254px;
         }
         .auto-style4
         {
             text-align: right;
             height: 50px;
         }
         .auto-style5
         {
             width: 182px;
             height: 35px;
             text-align: right;
         }
         .auto-style6
         {
             width: 254px;
             height: 35px;
         }
         .auto-style7
         {
             height: 35px;
         }
         .auto-style8
         {
             width: 182px;
             height: 39px;
         }
         .auto-style9
         {
             width: 254px;
             height: 39px;
         }
         .auto-style10
         {
             height: 39px;
         }
         .auto-style11
         {
             width: 182px;
             height: 37px;
             font-weight: bold;
             text-align: right;
         }
         .auto-style12
         {
             width: 254px;
             height: 37px;
         }
         .auto-style13
         {
             height: 37px;
         }
         .auto-style14
         {
             width: 182px;
             height: 40px;
             font-weight: bold;
             text-align: right;
         }
         .auto-style15
         {
             width: 254px;
             height: 40px;
         }
         .auto-style16
         {
             height: 40px;
         }
         .auto-style17
         {
             width: 182px;
             height: 41px;
             font-weight: bold;
             text-align: right;
         }
         .auto-style18
         {
             width: 254px;
             height: 41px;
         }
         .auto-style19
         {
             height: 41px;
         }
         .auto-style20
         {
             width: 182px;
             height: 46px;
             font-weight: bold;
             text-align: right;
         }
         .auto-style21
         {
             width: 254px;
             height: 46px;
         }
         .auto-style22
         {
             height: 46px;
         }
         .auto-style23
         {
             width: 182px;
             height: 53px;
             font-weight: bold;
             text-align: right;
         }
         .auto-style24
         {
             width: 254px;
             height: 53px;
         }
         .auto-style25
         {
             height: 53px;
         }
         .auto-style26
         {
             width: 182px;
             height: 42px;
             font-weight: bold;
             text-align: right;
         }
         .auto-style27
         {
             width: 254px;
             height: 42px;
         }
         .auto-style28
         {
             height: 42px;
         }
         .auto-style29
         {
             width: 182px;
             font-weight: bold;
             text-align: right;
         }
         .auto-style30
         {
             font-weight: bold;
             text-align: right;
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
            <li><a class="active" href="adminid.aspx">ADMIN</a> </li>
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
     Edit Faculty 
    </div>

    <form id="form1" runat="server">

    <div id="form">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4" colspan="3"><b style="top: 12px; left: 662px; position: absolute; height: 19px; width: 65px; right: 404px">&nbsp;Enter id&nbsp; </b>&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Height="25px" style="top: 7px; left: 764px; position: absolute; height: 19px; width: 174px"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="top: 4px; left: 978px; position: absolute; height: 26px; width: 65px; right: 88px" Text="Serch" Width="78px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>Name</b>:-&nbsp;</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtnm" runat="server" Height="25px" Width="232px"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblinfo" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>&nbsp;Gender:</b>-&nbsp;</td>
                <td class="auto-style6">
                    <asp:RadioButton ID="rdomale" runat="server" Text="Male" />
&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rdofemale" runat="server" Text="Female" />
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>&nbsp;DOB:-</b></td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtdob" runat="server" Height="25px" Width="232px"></asp:TextBox>
                </td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style11">Email:-</td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtemail" runat="server" Height="25px" Width="232px"></asp:TextBox>
                </td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style14">phone:-</td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtmob" runat="server" Height="25px" Width="232px"></asp:TextBox>
                </td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style11">Father Name</td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtfn" runat="server" Height="25px" Width="232px"></asp:TextBox>
                </td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style14">Mother name:-</td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtmn" runat="server" Height="25px" Width="232px"></asp:TextBox>
                </td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style29">Address</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtadd" runat="server" Height="61px" TextMode="MultiLine" Width="229px"></asp:TextBox>
                </td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">State:-</td>
                <td class="auto-style18">
                    <asp:DropDownList ID="drste" runat="server" Height="24px" Width="228px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style20">City:-</td>
                <td class="auto-style21">
                    <asp:TextBox ID="txtcity" runat="server" Height="25px" Width="232px"></asp:TextBox>
                </td>
                <td class="auto-style22"></td>
            </tr>
            <tr>
                <td class="auto-style17">Department</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtdept" runat="server" Height="25px" Width="232px"></asp:TextBox>
                </td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style23">Post:-<br />
                </td>
                <td class="auto-style24">
                    <asp:TextBox ID="txtpost" runat="server" Height="25px" Width="232px"></asp:TextBox>
                </td>
                <td class="auto-style25"></td>
            </tr>
            <tr>
                <td class="auto-style26">Subject:-</td>
                <td class="auto-style27">
                    <asp:TextBox ID="txtsub" runat="server" Height="25px" Width="232px"></asp:TextBox>
                </td>
                <td class="auto-style28"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" Width="164px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Label ID="lblsave" runat="server" style="top: 21px; left: 339px; position: absolute; height: 19px; width: 34px"></asp:Label>
        </div>
    <div>
    
    </div>
    </form>
</body>
</html>
