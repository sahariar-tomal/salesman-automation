<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
  <title>ARaynorDesign Template</title>
  <meta name="description" content="free website template" />
  <meta name="keywords" content="enter your keywords here" />
  <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/jquery.easing.min.js"></script>
  <script type="text/javascript" src="js/jquery.lavalamp.min.js"></script>
  <script type="text/javascript">
      $(function () {
          $("#lava_menu").lavaLamp({
              fx: "backout",
              speed: 700
          });
      });
  </script>

</head>

<body>
  <div id="main">
    <div id="header">  
      <h1>Your <span>Business</span></h1>
      <h1>Our <span>Product</span></h1>	
	  <h2>Company Slogan Goes Here</h2>
    </div><!--close header-->			
    <div class="container_header"><p>&nbsp;</p></div>
    <div id="site_background"> 
      <div id="banner">  
		<div id="banner_content">
		</div><!--close banner_content-->	
      </div><!--close banner-->		
	  <div id="site_content">
	    <div id="menubar">
          <ul class="lavaLampWithImage" id="lava_menu">
            <li class="current"><a href="index.html">Home</a></li>
            <li><a href="ourwork.html">Our products</a></li>
            <li><a href="testimonials.html">Future Activity</a></li>
            <li><a href="Login.html">Log In</a></li>
            <li><a href="contact.html">About Us</a></li>
          </ul>
	      <div id="contact">
	        <a href="#"><img src="images/icons/twitter.png" alt="twitter" /></a>
            <a href="#"><img src="images/icons/facebook.png" alt="facebook" /></a>
            <a href="#"><img src="images/icons/linkedin.png" alt="linkedin" /></a>
	      </div><!--close contact-->
	    </div><!--close menubar-->	
        <div id="content">
          <div class="content_item">
            <h1>Welcome to Our Company</h1>
           
</div><!--close content_item-->	
	      
		  <div class="sidebar_container">       
		    <div class="sidebar">
              <div class="sidebar_item">
                <h2>Latest Product</h2>
			    <h4>May 2012</h4>
                <p>&nbsp;</p>
		          <a href="#">Read more</a>
              </div><!--close sidebar_item--> 
            </div><!--close sidebar-->     		
		    <div class="sidebar">
              <div class="sidebar_item">
                <h2>Latest Sale</h2>
		  	    <h4>May 2012</h4>
                <p>&nbsp;</p>
		          <a href="#">Read more</a>
              </div><!--close sidebar_item--> 
            </div><!--close sidebar-->  
		    <div class="sidebar">
              <div class="sidebar_item">
                <h2>Upcomming Product</h2>
			    <h4>May 2012</h4>
                <p>&nbsp;</p>
		          <a href="#">Read more</a>
              </div><!--close sidebar_item--> 
            </div><!--close sidebar-->  
           </div><!--close sidebar_container-->	
           <br style="clear:both;" />
        </div><!--close content-->	
      </div><!--close site_content-->	
	</div><!--close site_background-->	
    <div id="footer">  
	  <div id="footer_content">Report Bug | About website designer | Contract us</div><!--close footer_content-->	
    </div><!--close footer-->	
  </div><!--close main-->	
</body>
</html>

    
</asp:Content>
