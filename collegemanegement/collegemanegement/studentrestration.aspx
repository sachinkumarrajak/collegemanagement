<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentrestration.aspx.cs" Inherits="collegemanegement.studentrestration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>student restration form</title>
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
        {position:relative;
            top:90px;
            
            float:left;
            margin-left:500px;
        }
        
         #form
         {
               height:830px;
            width:1162px;
            margin:50px auto;
            background:white;
            border:2px solid #5fb3bd;
            top: 144px;
            left: 115px;
            position: absolute;

         }
         #res
         {
             
             height:75px;
            width:1162px;
            background:#1a1f33;
            position:relative;
            top:68px;
            left:117px;
            color:white;
            
            font-size:60px;
            line-height:110px;
         }
         #res1
         {
             width: 326px;
position: absolute;
top: 171px;
left: 480px;
color: white;
text-align: center;
font-size: 41px;
line-height: 110px;
            height: 69px;
         }
         .auto-style1
         {
             width: 99%;
             top: 87px;
             left: 4px;
             position: absolute;
             height: 168px;
         }
         .auto-style2
         {
             height: 39px;
         }
         .auto-style3
         {
             color: #000000;
             width: 278px;
             font-size: large;
             font-weight: 700;
             height: 34px;
             text-align: right;
         }
         .auto-style5
         {
             width: 280px;
         }
         .auto-style6
         {
             width: 280px;
             height: 34px;
         }
         .auto-style7
         {
             height: 34px;
         }
         .auto-style8
         {
             width: 278px;
             font-weight: bold;
             text-align: right;
         }
         .auto-style9
         {
             width: 278px;
             font-weight: bold;
             text-align: right;
             height: 31px;
         }
         .auto-style10
         {
             width: 280px;
             height: 31px;
         }
         .auto-style11
         {
             height: 31px;
         }
         .auto-style12
         {
             width: 278px;
             font-weight: bold;
             text-align: right;
             height: 64px;
         }
         .auto-style13
         {
             width: 278px;
             font-weight: bold;
             text-align: right;
             height: 27px;
         }
         .auto-style14
         {
             width: 280px;
             height: 27px;
         }
         .auto-style15
         {
             height: 27px;
         }
         .auto-style16
         {
             width: 278px;
             font-weight: bold;
             text-align: right;
             height: 28px;
         }
         .auto-style17
         {
             width: 280px;
             height: 28px;
         }
         .auto-style18
         {
             height: 28px;
         }
         .auto-style19
         {
             width: 278px;
             font-weight: bold;
             text-align: right;
             height: 33px;
         }
         .auto-style20
         {
             width: 280px;
             height: 33px;
         }
         .auto-style21
         {
             height: 33px;
         }
         .auto-style22
         {
             color: #FF0000;
         }
           #logo1
     {
       position: relative;
         top: -170px;
         left:-280px;
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
      top:-35px;
      text-align: center;
    	 
    }
    #us
    {
    	 font-size:25px;
       color:white;
      position: relative;
      top:-25px;
      left:6px;
    }
    #ac
    {
       font-size: 13px;
    	 color:white;
      line-height:0px;
      position: relative;
      top:-32px;
      text-align: center;
    	 
    }
    
    #m1
    {
      font-size: 35px;
      position: relative;
      top: -65px;
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
      top: -96px;
      left: 7px;

        }
        #uu
        {
					position: relative;
					top:-120px;
				  
        }
   
   
         .auto-style23
         {
             width: 280px;
             height: 64px;
         }
         .auto-style24
         {
             height: 64px;
         }
         .auto-style25
         {
             width: 278px;
             font-weight: bold;
             text-align: right;
             height: 35px;
         }
         .auto-style26
         {
             width: 280px;
             height: 35px;
         }
         .auto-style27
         {
             height: 35px;
         }
         .auto-style28
         {
             width: 278px;
             font-weight: bold;
             text-align: right;
             height: 37px;
         }
         .auto-style29
         {
             width: 280px;
             height: 37px;
         }
         .auto-style30
         {
             height: 37px;
         }
   
   
   </style>
</head>
<body>

     <div id="head">
        
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
            <li><a  href="adminid.aspx">ADMIN</a> </li>
            <li><a href="contactus.aspx">CONTACT US</a></li>
          </ul>
    

                
</div>
        </div>
    <form id="form1" runat="server">
    <div id="form">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblsave" runat="server" ForeColor="Black"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style22">&nbsp;</span></td>
            </tr>
            <tr>
                <td class="auto-style3">Name:-</td>
                <td class="auto-style6">
                    <asp:Label ID="Label1" runat="server" Text="Label" style="top: 125px; left: 638px; position: absolute; height: 19px; width: 34px; right: 482px"></asp:Label>
                    <asp:TextBox ID="txtnm" runat="server" placeholder="Enter Your Name" Height="27px" Width="277px"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtnm" ErrorMessage="Name is missing" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Gender:-</td>
                <td class="auto-style10">
                    <asp:RadioButton ID="rdomale" runat="server" Text="Male" AutoPostBack="True" OnCheckedChanged="rdomale_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rdofemale" runat="server" Text="Female" AutoPostBack="True" OnCheckedChanged="rdofemale_CheckedChanged" />
                </td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="DropDownList2" ErrorMessage="please  select month" InitialValue="MM" style="top: 125px; left: 674px; position: absolute; height: 19px; width: 167px"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Please select year" InitialValue="yyy" style="top: 126px; left: 797px; position: absolute; height: 19px; width: 158px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">DOB:-</td>
                <td class="auto-style23">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>DD</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>MM</asp:ListItem>
                        <asp:ListItem>jan</asp:ListItem>
                        <asp:ListItem>feb</asp:ListItem>
                        <asp:ListItem>mar</asp:ListItem>
                        <asp:ListItem>apr</asp:ListItem>
                        <asp:ListItem>may</asp:ListItem>
                        <asp:ListItem>jun</asp:ListItem>
                        <asp:ListItem>jul</asp:ListItem>
                        <asp:ListItem>aug</asp:ListItem>
                        <asp:ListItem>sep</asp:ListItem>
                        <asp:ListItem>oct</asp:ListItem>
                        <asp:ListItem>nov</asp:ListItem>
                        <asp:ListItem>dec</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem>yyy</asp:ListItem>
                        <asp:ListItem>1990</asp:ListItem>
                        <asp:ListItem>1991</asp:ListItem>
                        <asp:ListItem>1992</asp:ListItem>
                        <asp:ListItem>1993</asp:ListItem>
                        <asp:ListItem>1994</asp:ListItem>
                        <asp:ListItem>1995</asp:ListItem>
                        <asp:ListItem>1996</asp:ListItem>
                        <asp:ListItem>1997</asp:ListItem>
                        <asp:ListItem>1998</asp:ListItem>
                        <asp:ListItem>1999</asp:ListItem>
                        <asp:ListItem>2000</asp:ListItem>
                        <asp:ListItem>2001</asp:ListItem>
                        <asp:ListItem>2002</asp:ListItem>
                        <asp:ListItem>2003</asp:ListItem>
                        <asp:ListItem>2004</asp:ListItem>
                        <asp:ListItem>2005</asp:ListItem>
                        <asp:ListItem>2006</asp:ListItem>
                        <asp:ListItem>2007</asp:ListItem>
                        <asp:ListItem>2008</asp:ListItem>
                        <asp:ListItem>2009</asp:ListItem>
                        <asp:ListItem>2010</asp:ListItem>
                        <asp:ListItem>2011</asp:ListItem>
                        <asp:ListItem>2012</asp:ListItem>
                        <asp:ListItem>2013</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem>2016</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style24">
                    <asp:Label ID="Label2" runat="server" style="top: 182px; position: absolute; height: 19px; width: 156px; left: 579px" Text="this email id already in use"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="DropDownList1" ErrorMessage="please select day" InitialValue="DD"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Email:-</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtmail" runat="server" placeholder="someone@domain.com" Height="27px" Width="277px" AutoPostBack="True" OnTextChanged="txtmail_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmail" ErrorMessage="email is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label3" runat="server" style="top: 197px; left: 570px; position: absolute; height: 19px; width: 177px" Text="this no is already register"></asp:Label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmail" ErrorMessage="someone@domain.com" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/AG00092_.GIF" style="top: 164px; left: 173px; position: absolute; height: 12px; width: 31px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Mobile Number:-<asp:Image ID="Image2" runat="server"  ImageUrl="~/AG00092_.GIF" style="top: 189px; left: 110px; position: absolute; height: 16px; width: 28px" />
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtmob" runat="server" Height="27px" Width="277px" AutoPostBack="True" OnTextChanged="txtmob_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtmob" ErrorMessage="phone is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Father name:-</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtfn" runat="server" Height="27px" Width="277px"></asp:TextBox>
                </td>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Mother name:-</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtmn" runat="server" Height="27px" Width="277px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">Address:-</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtadd" runat="server" Height="70px" Width="262px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtadd" ErrorMessage="address is missing" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">State:-</td>
                <td class="auto-style26">
                    <asp:DropDownList ID="drstate" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drstate_SelectedIndexChanged">
                        <asp:ListItem>-- Select State--</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlcity" runat="server" Height="20px" style="top: 439px; left: 284px; position: absolute" Width="114px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style27">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="drstate" ErrorMessage="select state" ForeColor="Red" InitialValue="-- Select State--"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style28">City:-</td>
                <td class="auto-style29">
                &nbsp;<asp:TextBox ID="txtcity" runat="server" Height="27px" Width="155px" style="top: 434px; left: 577px; position: absolute"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style30"></td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;&nbsp;&nbsp; 10th Details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; year of passing:-</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt10yr" runat="server" Height="27px" Width="277px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt10yr" ErrorMessage="please write year of passing" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; percentage:-&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt10per" runat="server" Height="27px" Width="277px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt10per" ErrorMessage=" percentage is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">12th Details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; year of passing:-</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt12yr" runat="server" Height="27px" Width="277px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt12yr" ErrorMessage="please write year of passing" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; percentage:-&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt12per" runat="server" Height="27px" Width="277px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt12per" ErrorMessage=" percentage is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Category:-</td>
                <td class="auto-style14">
                    <asp:DropDownList ID="drcat" runat="server" Height="25px" Width="131px">
                        <asp:ListItem>select category</asp:ListItem>
                        <asp:ListItem>ST</asp:ListItem>
                        <asp:ListItem>SC</asp:ListItem>
                        <asp:ListItem>OBC</asp:ListItem>
                        <asp:ListItem>GENRAL</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="drcat" ErrorMessage="please select one" ForeColor="Red" InitialValue="select category"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">course:</td>
                <td class="auto-style17">
                    <asp:DropDownList ID="drcourse" runat="server" Height="28px" Width="130px">
                        <asp:ListItem>--select course--</asp:ListItem>
                        <asp:ListItem>BCA</asp:ListItem>
                        <asp:ListItem>BBA</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style18">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="drcourse" ErrorMessage="please select a course" ForeColor="Red" InitialValue="--select course--"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" BackColor="#1A1F33" BorderColor="#006666" ForeColor="White" Text="submit" Width="168px" style="top: 679px; left: 294px; position: absolute; height: 35px" OnClick="Button1_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19"></td>
                <td class="auto-style20"></td>
                <td class="auto-style21"></td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style21">
                    <asp:Label ID="lblinfo" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
     </div>
    <div id="res"></div>
    <div id="res1">
        Register
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
             

           

    <div>
    
    </div>
    </form>
</body>
</html>
