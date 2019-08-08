﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="facsrch.aspx.cs" Inherits="collegemanegement.facsrch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>facserch</title>
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
                  #form
         {
             height:500px;
            width:1162px;
            margin:50px auto;
            background:white;
            border:2px solid #5fb3bd;
            top: 220px;
            left: 115px;
            position: absolute;


         }
                  #nav1
        {
            position: relative;
            top: -170px;
            left:510px;
            width:10px;
            height:120px;
            
            
        }
            #nav1 ul li a
            {
                text-decoration:none;
                color:white;
                font-family:Arial,helvetica,sans-serif;
                display: block;
            }
               
                #nav1 ul a:hover {
		background-color: #ff9000;
		background-image: -moz-linear-gradient(#ff9000,  #ff7200);	
		background-image: -webkit-gradient(linear, left top, left bottom, from(#ff9000), to(#ff7200));
		background-image: -webkit-linear-gradient(#ff9000, #ff7200);
		background-image: -o-linear-gradient(#ff9000, #ff7200);
		background-image: -ms-linear-gradient(#ff9000, #ff7200);
		background-image: linear-gradient(#ff9000, #ff7200);
	}
	
            #nav1 ul li
            {
                height:80px;
                width:299px;
                background:#1b2130;
                list-style:none;
                text-align:center;
                line-height:80px;
                margin-bottom:6px;
               border-radius: 5px;

            }

    
 .active
        {
            
            
            background:#335f64
            
        }
                  #logo100
     {
        position: relative;
         top: 190px;
         left:-160px;
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
        .active
        {
            
            
            background:#335f64;
            
        }
      
        .auto-style1
        {
            width: 100%;
            top: 52px;
            left: 15px;
            position: absolute;
            height: 84px;
        }
      
        .auto-style2
        {
            width: 352px;
        }
        .auto-style3
        {
            width: 352px;
            height: 36px;
            font-weight: 700;
        }
        .auto-style4
        {
            height: 36px;
        }
        .auto-style5
        {
            width: 335px;
        }
        .auto-style6
        {
            height: 36px;
            width: 335px;
            font-weight: 700;
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
        FACULTY
    </div>
   
 
   
    <form id="form1" runat="server">
   
 
   
    <div id="form">
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
         <table class="auto-style1">
             <tr>
                 <td class="auto-style2">&nbsp;</td>
                 <td class="auto-style5">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style3">MOBILE NO:-<asp:TextBox ID="TextBox1" runat="server" Width="192px"></asp:TextBox>
                 </td>
                 <td class="auto-style6">--or--&nbsp;&nbsp;&nbsp; NAME:-<asp:TextBox ID="TextBox2" runat="server" Width="192px"></asp:TextBox>
                 </td>
                 <td class="auto-style4">
                     <asp:Button ID="Button1" runat="server" Text="SEARCH" Width="78px" />
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">&nbsp;</td>
                 <td class="auto-style5">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style2">
                     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1" GridLines="Vertical" style="top: 111px; left: 85px; position: absolute; height: 144px; width: 196px">
                         <AlternatingRowStyle BackColor="#DCDCDC" />
                         <Columns>
                             <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                             <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                             <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                             <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                             <asp:BoundField DataField="dept" HeaderText="dept" SortExpression="dept" />
                             <asp:BoundField DataField="post" HeaderText="post" SortExpression="post" />
                             <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                         </Columns>
                         <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                         <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                         <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                         <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                         <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                         <SortedAscendingCellStyle BackColor="#F1F1F1" />
                         <SortedAscendingHeaderStyle BackColor="#0000A9" />
                         <SortedDescendingCellStyle BackColor="#CAC9C9" />
                         <SortedDescendingHeaderStyle BackColor="#000065" />
                     </asp:GridView>
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:colege007ConnectionString %>" SelectCommand="SELECT [id], [name], [email], [phone], [dept], [post], [subject] FROM [faculty] WHERE ([phone] = @phone)">
                         <SelectParameters>
                             <asp:ControlParameter ControlID="TextBox1" Name="phone" PropertyName="Text" Type="String" />
                         </SelectParameters>
                     </asp:SqlDataSource>
                 </td>
                 <td class="auto-style5">
                     <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="id" DataSourceID="SqlDataSource2" GridLines="None" style="top: 133px; left: 388px; position: absolute; height: 121px; width: 181px">
                         <Columns>
                             <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                             <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                             <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                             <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                             <asp:BoundField DataField="dept" HeaderText="dept" SortExpression="dept" />
                             <asp:BoundField DataField="post" HeaderText="post" SortExpression="post" />
                             <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                         </Columns>
                         <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                         <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                         <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                         <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                         <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                         <SortedAscendingCellStyle BackColor="#F1F1F1" />
                         <SortedAscendingHeaderStyle BackColor="#594B9C" />
                         <SortedDescendingCellStyle BackColor="#CAC9C9" />
                         <SortedDescendingHeaderStyle BackColor="#33276A" />
                     </asp:GridView>
                     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:colege007ConnectionString %>" SelectCommand="SELECT [id], [name], [email], [phone], [dept], [post], [subject] FROM [faculty] WHERE ([name] = @name)">
                         <SelectParameters>
                             <asp:ControlParameter ControlID="TextBox2" Name="name" PropertyName="Text" Type="String" />
                         </SelectParameters>
                     </asp:SqlDataSource>
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