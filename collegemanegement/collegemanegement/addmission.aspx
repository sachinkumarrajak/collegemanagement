<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addmission.aspx.cs" Inherits="collegemanegement.addmission" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Addmission</title>
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
            background:#FFA500;
            position:relative;
             top:-199px;
            left:115px;
            
             border:2px solid #5fb3bd;
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
            height: 90px;
         
         }
         
          #form
         {
             height:550px;
            width:1162px;
            margin:50px auto;
            background:#FBBC05;
            border:2px solid #5fb3bd;
            top: 240px;
            left: 115px;
            position: absolute;


         }
         .auto-style1
         {
             width: 100%;
         }
         .auto-style2
         {
             width: 303px;
         }
         .auto-style3
         {
             width: 371px;
         }
         .auto-style4
         {
             width: 303px;
             text-align: right;
             font-weight: bold;
         }
         .auto-style5
         {
             width: 303px;
             height: 34px;
             text-align: right;
         }
         .auto-style6
         {
             width: 371px;
             height: 34px;
         }
         .auto-style7
         {
             height: 34px;
         }
         .auto-style8
         {
             width: 303px;
             height: 33px;
             text-align: right;
         }
         .auto-style9
         {
             width: 371px;
             height: 33px;
         }
         .auto-style10
         {
             height: 33px;
         }
         .auto-style11
         {
             width: 303px;
             height: 28px;
             text-align: right;
         }
         .auto-style12
         {
             width: 371px;
             height: 28px;
         }
         .auto-style13
         {
             height: 28px;
         }
         .auto-style14
         {
             width: 303px;
             height: 30px;
             text-align: right;
         }
         .auto-style15
         {
             width: 371px;
             height: 30px;
         }
         .auto-style16
         {
             height: 30px;
         }
         .auto-style17
         {
             width: 303px;
             height: 32px;
             text-align: right;
         }
         .auto-style18
         {
             width: 371px;
             height: 32px;
         }
         .auto-style19
         {
             height: 32px;
         }
         .auto-style20
         {
             width: 303px;
             height: 35px;
             text-align: right;
         }
         .auto-style21
         {
             width: 371px;
             height: 35px;
         }
         .auto-style22
         {
             height: 35px;
         }
         .auto-style23
         {
             width: 303px;
             height: 37px;
             text-align: right;
         }
         .auto-style24
         {
             width: 371px;
             height: 37px;
         }
         .auto-style25
         {
             height: 37px;
         }
         .auto-style26
         {
             width: 303px;
             height: 25px;
             text-align: right;
         }
         .auto-style27
         {
             width: 371px;
             height: 25px;
         }
         .auto-style28
         {
             height: 25px;
         }
         .auto-style29
         {
             width: 303px;
             text-align: right;
         }
         #form1
         {
             font-weight: 700;
         }
         .active
         {
             background:#335f64
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
    <form id="form1" runat="server">
        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" style="top: 222px; left: 478px; position: absolute; right: 644px" Width="165px">
            <asp:ListItem>--select category--</asp:ListItem>
            <asp:ListItem>SC</asp:ListItem>
            <asp:ListItem>ST</asp:ListItem>
            <asp:ListItem>OBC</asp:ListItem>
            <asp:ListItem>GENRAL</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button3" runat="server" BackColor="#FF0066" ForeColor="White" OnClick="Button3_Click" style="top: 164px; left: 114px; position: absolute; height: 26px; width: 56px" Text="&lt;&lt;Back" />
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
    
    
            <div id="res">number of sheets:-<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                    <asp:ListItem>--select category--</asp:ListItem>
                    <asp:ListItem>SC</asp:ListItem>
                    <asp:ListItem>ST</asp:ListItem>
                    <asp:ListItem>OBC</asp:ListItem>
                    <asp:ListItem>GENRAL</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem>--SELECT CCOURSE--</asp:ListItem>
                    <asp:ListItem>BBA</asp:ListItem>
                    <asp:ListItem>BCA</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#FF0066" BorderColor="Red" ForeColor="White" Text="serch" Width="66px" OnClick="Button1_Click" />
                <asp:Label ID="lblinfo" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Output:-<asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                    <asp:ListItem>Result</asp:ListItem>
                </asp:DropDownList>
        </div>
   
        <div id="form">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Name:-</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtnm" runat="server" Width="278px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblres" runat="server" Text="Regstration no:-"></asp:Label>
&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblresno" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style29">Gender:-</td>
                    <td class="auto-style3">
                        <asp:RadioButton ID="rdomale" runat="server" Text="male" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="rdofemale" runat="server" Text="female" />
                    </td>
                    <td>
                        <asp:Label runat="server" Text="Admission no:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblsave" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">DOB:-</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtdb" runat="server" Width="274px"></asp:TextBox>
                    </td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style8">Email:-</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtemail" runat="server" Width="278px"></asp:TextBox>
                    </td>
                    <td class="auto-style10">Saasion:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox2" runat="server" Width="158px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Mobile number:-</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtmobile" runat="server" Width="278px"></asp:TextBox>
                    </td>
                    <td class="auto-style13">Roll no:-<asp:TextBox ID="TextBox3" runat="server" style="top: 141px; left: 775px; position: absolute; height: 20px; width: 148px; right: 235px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">Father name:</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="txtfname" runat="server" Width="278px"></asp:TextBox>
                    </td>
                    <td class="auto-style16"></td>
                </tr>
                <tr>
                    <td class="auto-style14">Mother name</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="txtmnane" runat="server" Width="278px"></asp:TextBox>
                    </td>
                    <td class="auto-style16"></td>
                </tr>
                <tr>
                    <td class="auto-style17">Address:-</td>
                    <td class="auto-style18">
                        <asp:TextBox ID="txtadd" runat="server" Width="281px" Height="92px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td class="auto-style19"></td>
                </tr>
                <tr>
                    <td class="auto-style8">State:-</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="DropDownList5" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style20">City:-</td>
                    <td class="auto-style21">
                        <asp:DropDownList ID="DropDownList6" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style22"></td>
                </tr>
                <tr>
                    <td class="auto-style23">10th Details&nbsp;&nbsp;&nbsp;&nbsp; year of passing:-</td>
                    <td class="auto-style24">
                        <asp:TextBox ID="txt10tr" runat="server" Width="278px"></asp:TextBox>
                    </td>
                    <td class="auto-style25"></td>
                </tr>
                <tr>
                    <td class="auto-style14">Percantage:-</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="txtper" runat="server" Width="278px"></asp:TextBox>
                    </td>
                    <td class="auto-style16"></td>
                </tr>
                <tr>
                    <td class="auto-style8">12thDetails year of passing:-</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txt12yr" runat="server" Width="278px"></asp:TextBox>
                    </td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style26">Percantage:-</td>
                    <td class="auto-style27">
                        <asp:TextBox ID="txt12per" runat="server" Width="278px"></asp:TextBox>
                    </td>
                    <td class="auto-style28"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="Button2" runat="server" BackColor="#FF0066" ForeColor="White" Text="SUBMIT" Width="208px" OnClick="Button2_Click" style="top: 256px; left: 734px; position: absolute; height: 26px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            </div>
    <div>
    
    </div>
    </form>
</body>
</html>
