<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ourcourse.aspx.cs" Inherits="collegemanegement.ourcourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ourcourse</title>
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
            width:1330px;
            background:#1a1f33;
            position:relative;
             top:-180px;
            left:21px;
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
             height:1127px;
            width:1325px;
            margin:50px auto;
            background:white;
            border:2px solid #5fb3bd;
            top: 242px;
            left: 20px;
            position: absolute;


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
             width: 1241px;
            top: 102px;
            left: 55px;
            position: absolute;
            height: 23px;
            font-size:18px;
              font-weight: 700;
          }
      
          #comp
          {
              top: 250px;
              left: 74px;
              position: absolute;
              height: 30px;
              width: 363px;
               background-color:#1A1F33;
           
            color:white;
            font-size: 27px;
            text-align:center;
          }
      
          #sp
          {
              top: 614px;
              left: 78px;
              position: absolute;
              height: 110px;
              width: 1239px;
              font-weight: 700;
          }
      
          #act
          {
              top: 766px;
              left: 76px;
              position: absolute;
              height: 36px;
              width: 340px;
               background-color:#1A1F33;
           
            color:white;
            font-size: 27px;
            text-align:center;
          }
      
          #p111
          {
              top: 1131px;
              left: 70px;
              position: absolute;
              height: 70px;
              width: 1245px;
              font-weight: 700;
              font-size:15px;
          }
      
          #ADD
          {
              top: 1195px;
              left: 67px;
              position: absolute;
              height: 30px;
              width: 482px;
              background-color:#1A1F33;
           
            color:white;
            font-size: 27px;
            text-align:center;
   
          }
          #list
          {
               position: absolute;
              top:1270px;
              left:80px;
              font-size: 20px;
    
          }
            .active
        {
            
            
            background:#335f64;
            
        }
      
         
          .MsoNormal
          {
              top: 42px;
              left: 54px;
              position: absolute;
              height: 19px;
              width: 137px;
              font-weight: 700;
              font-size:25px;
              text-decoration: underline;
          }
      
         
          #p1
          {
              top: 152px;
              left: 50px;
              position: absolute;
              height: 189px;
              width: 1263px;
              font-weight: 700;
          }
      
         
          #det
          {
              font-weight: 700;
              font-size: x-large;
              top: 11px;
              left: -1px;
              position: absolute;
              height: 26px;
              width: 1325px;
          }
      
         
          #next
          {
              top: 627px;
              left: 48px;
              position: absolute;
              height: 19px;
              width: 1325px;
          }
      
         
          #b
          {
              top: 604px;
              left: 58px;
              position: absolute;
              height: 19px;
              width: 1325px;
              font-weight: 700;
              font-size: x-large;
              text-decoration: underline;
          }
      
         
          #BBA
          {
              top: -12px;
              left: -1px;
              position: absolute;
              height: 19px;
              width: 1325px;
              font-weight: 700;
              font-size:25px;
              text-decoration: underline;
          }
      
         
          #text2
          {
              width: 310px;
              top: 13px;
              left: 815px;
              position: absolute;
              height: 114px;
              position: absolute;
             top:8px;
             left:814px;
             background-color: #EDEDED;
             text-align:center;
            width: 300px;
             height: 130px;
            
          }
      
         #text
         { 
         }
         #sac
         {
             color:red;
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
                <li><a class="active" href="ourcourse.aspx">our courses</a></li>
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
            
            
           
            <li><a  href="#">CAMPUS</a>
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
      Our courses
    </div>
    <div id="form">&nbsp;<p class="MsoNormal">
        BCA<o:p></o:p></p>
        <p class="MsoNormal">
            BCA<o:p></o:p></p>
        <p class="MsoNormal">
            <%--BCA<o:p></o:p></p>--%>
            <div id="det"><p id="p">Bachelor of Computer Applications (BCA) : Three Year Full Time Course -</p></div>
       <div>     <p id="p1">The BCA Course aims at inculcating essential skills as demanded by the
global software industry through interactive learning process. This also
includes team-building skills, audio- visual presentations and personality
development programmes. The programme enhances analytical and communication
skill besides inculcating the virtues of self-study. The Curriculum has
been designed to cater to the ever changing demands of information
technology along with necessary inputs from the Industry.<br /><br />

The OBJECTIVE of the course is to develop skilled manpower in the various
areas of information technology like:<br /><br />

Software Development: Computer Languages like C, C++, Java, Visual Basic,
Dot Net etc.<br /><br />

Software Engineering : Project planning, verification and validation,
software certification like CMM, ISO-9000 Series, Quality assurance.<br /><br />

Multimedia Systems<br /><br />

Artificial Intelligence : Fuzzy logic, Hybrid systems, Natural Language<br />
Processing, Neural networks, Genetic algorithms, Knowledge based systems.<br /><br />

Web based applications.<br /><br />

Theoretical Computer Science<br /><br />

Database Management System & Data Wire Housing and Mining<br /><br />

Data communication and Computer Networks<br /><br />

</p>
           </div>
            <div id="next"><p id="pp">&nbsp;</p>
                <p id="BBA">BBA</p>
                <p style="font-weight: 700; top: 39px; left: 3px; position: absolute; height: 19px; width: 1325px">BBA (General) : Bachelor of Business Administration - Three Year Full Time
Course -
</p></div>
          <p style="top: 707px; left: 48px; position: absolute; height: 28px; width: 1234px; font-weight: 700">The BBA (General) programme is an innovative programme in the area of
Business. The main objective of this programme is to equip the students
with the necessary conceptual, entrepreneurial and analytical skills
required for handling business operations. As global business continues to
grow and the economies of the world become increasingly interdependent, the
management of the firm would require a global perspective. The Center
course specializes in research concerning emerging functional business
issues that shape the global environment. Its mission is to construct a
coherent global perspective in business management, research and education.
The emphasis is on problem solving in the real business environment by way
of summer training, case studies, simulations and projects. Experts from
various industries are invited on a regular basis in order to upgrade
students’ knowledge and to provide an insight into the actual requirements
of the industry.<br /><br />

The Bachelor of Business Administration program allows to develop skilled
manpower in the various areas including :><br /><br />

   - Accounting<br />
   - Entrepreneurship<br />
   - Finance<br />
   - Human Resources<br />
   - International Business<br />
   - Management<br />
   - Management Information System<br />
   - Marketing<br />
   - Operations Management<br />
   - Business Law etc.<br />
</p>
            <div id="loc">
            <div id="text2"><p id="sac">For Admission Enquiry:-</p><br />

                <p id="text1">1800-080-6600 [Toll Free]<br /> 0476468801<br />
09416056208<br />
 admission.ac.in
</p>
            </div>
        
     </div>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
