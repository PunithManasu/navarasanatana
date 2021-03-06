<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Navarasa Natana Academy::Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="admincss/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="admincss/style.css" rel='stylesheet' type='text/css' />
<link href="admincss/style-responsive.css" rel="stylesheet"/>
<link rel="stylesheet" href="admincss/lightbox.css">
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="admincss/font.css" type="text/css"/>
<link href="admincss/font-awesome.css" rel="stylesheet"> 
<link rel="stylesheet" href="admincss/morris.css" type="text/css"/>
<!-- calendar -->
<link rel="stylesheet" href="admincss/monthly.css">
<!-- //calendar -->
<!-- //font-awesome icons -->
<script src="adminjs/jquery2.0.3.min.js"></script>
<script src="adminjs/raphael-min.js"></script>
<script src="adminjs/morris.js"></script>
</head>
<body>
<section id="container">
<!--header start-->
<header class="header fixed-top clearfix">
<!--logo start-->
<div class="brand">
    <a href="dashboard.html" class="logo">
         <img src="adminimages/logo.png" alt="nna" style="width: 9%; margin-top: -8%;">
		<img src="adminimages/logo1.png" alt="nna" style="width: 60%; margin-top: -25%;">
    </a>
    <div class="sidebar-toggle-box">
        <div class="fa fa-bars"></div>
    </div>
</div>
<!--logo end-->

<div class="top-nav clearfix">
    <!--search & user info start-->
     <ul class="nav pull-right top-menu">
       
        <!-- user login dropdown start-->
        <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <img alt="" src="images/2.png">
                <span class="username">${sessionScope.activeuser}</span>
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu extended logout">
                <li><a href="adminprofile.html"><i class=" fa fa-suitcase"></i>Profile</a></li>
                <li><a href="adminAdd.html"><i class="fa fa-cog"></i> Settings</a></li>
                <li><a href="adminlogout.html"><i class="fa fa-key"></i> Log Out</a></li>
            </ul>
        </li>
        <!-- user login dropdown end -->
       
    </ul>
    <!--search & user info end-->
</div>
</header>
<!--header end-->
<!--sidebar start-->
<aside>
    <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
                <li>
                    <a class="active" href="dashboard.html">
                        <i class="fa fa-dashboard"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                
                <li class="sub-menu">
                    <a href="adminbanner.html">
                        <i class="fa fa-book"></i>
                        <span>Banner</span>
                    </a>
                            </li>
                <li>
                    <a href="adminadds.html">
                         <i class="fa fa-glass"></i>
                        <span>Ads</span>
                    </a>
                </li>
				 <li>
                    <a href="adminourteam.html">
                        <i class="fa fa-adn" aria-hidden="true"></i>
                        <span> Our Team</span>
                    </a>
                </li>
				
				<li>
                    <a href="adminadmission.html">
                       <i class="fa fa-comments-o" aria-hidden="true"></i>
                        <span>Admission</span>
                    </a>
                </li>
				<li>
                    <a href="adminfaculty.html">
                       <i class="fa fa-comments-o" aria-hidden="true"></i>
                        <span>Faculty</span>
                    </a>
                </li>
				<li>
                    <a href="admingallery.html">
                       <i class="fa fa-comments-o" aria-hidden="true"></i>
                        <span>Gallery</span>
                    </a>
                </li>
				<li>
                    <a href="adminaudition.html">
                       <i class="fa fa-comments-o" aria-hidden="true"></i>
                        <span>Auditions</span>
                    </a>
                </li>
				
				<li>
                    <a href="adminfeedback.html">
                       <i class="fa fa-registered" aria-hidden="true"></i>
                        <span>Feedback</span>
                    </a>
                </li>             
            </ul>            </div>
        <!-- sidebar menu end-->
    </div>
</aside>
<!--main content start-->

<section id="main-content">
	<section class="wrapper">
            <div class="row">
            <div class="col-md-12">
                    <section class="panel">
                        <header class="panel-heading">
                          Add Admin Profile
                        </header>
                        <div class="panel-body">
                            <div >
                            <form:form modelAttribute="addadmin" method="post" action="adminprofilesave.html" onsubmit="return FormValidation();" onchange="return FormValidation();">
                           	<div class="col-md-3">
										<form:hidden path="admin_id"/>
												<form:input path="admin_name" class="form-control" placeholder="Enter Name"  id="firstname"/>
										</div>
										<div class="col-md-3">
											<form:input path="admin_email" class="form-control"  placeholder="Enter E-mail"  id="email"/>
										</div>
										<div class="col-md-3">
											<form:input path="admin_phone" class="form-control" placeholder="Enter Phone-Number"  id="ppp"/>
										</div>
										<div class="col-md-3">
											<form:password path="admin_password" name="admin_password" class="form-control" placeholder="Enter Password"  id="pass"/>
											<input type="checkbox" id="chk" value="Show password" onchange="tick(this)" >Show password
		
										</div>
										<div class="col-md-3">
											<input type="submit" class="btn btn-info" value="ADD"
												style="margin-top: -2%" id="sub"/>
										</div>

                            
                            
                            
                            </form:form>
                               
                            </div>
                        </div>
                    </section>
            </div>
</section>
		<div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading" style="margin-top: 10%">
   Admin Profile Information
    </div>
     <div class="table-responsive">
      <table class="table table-striped b-t b-light">
        <thead>
          <tr>
            <th>Admin_name</th>
			
            <th>Admin_email </th>
            <th>Admin_phone</th>
            <th>Admin_password</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>
        <c:forEach var="adminprolist" items="${adminprolist}">
        <c:url var="adminprofileedit" value="adminprofileedit.html">
        <c:param name="admin_id" value="${adminprolist.admin_id}"></c:param>
        
        </c:url >
        <c:url var="admindelprofile" value="admindelprofile.html">
        <c:param name="admin_id" value="${adminprolist.admin_id}"></c:param>
        </c:url>
         <tr>
            <td>${adminprolist.admin_name}
			</td>
			<td>
		${adminprolist.admin_email}
			</td>
			<td>
		${adminprolist.admin_phone}
			</td>
			<td>
		${adminprolist.admin_password}
			</td>
			<td>
		 <a href="${adminprofileedit}"> <i class="fa fa-pencil" aria-hidden="true"></i></a>
		 <a href="${admindelprofile}"><i class="fa fa-trash" aria-hidden="true"></i></a>
		  </td>
		 
		   </tr>
		   </c:forEach>
    
	
        </tbody>
      </table>
    </div>
    
  </div>
</div>
 <!-- footer -->
		  <div class="footer">
			<div class="wthree-copyright">
			  <p>� 2018 Navarasa Natana Academy. All rights reserved | Design by <a href="http://appfonehub.com">Appfone Hub Private Limited.</a></p>
			</div>
		  </div>
</section>


<!--main content end-->
</section>
<!--main content end-->
</section>
<script src="adminjs/bootstrap.js"></script>
<script src="adminjs/jquery.dcjqaccordion.2.7.js"></script>
<script src="adminjs/scripts.js"></script>
<script src="adminjs/jquery.slimscroll.js"></script>
<script src="adminjs/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="js/jquery.scrollTo.js"></script>
<!-- morris JavaScript -->	
<script>
	$(document).ready(function() {
		//BOX BUTTON SHOW AND CLOSE
	   jQuery('.small-graph-box').hover(function() {
		  jQuery(this).find('.box-button').fadeIn('fast');
	   }, function() {
		  jQuery(this).find('.box-button').fadeOut('fast');
	   });
	   jQuery('.small-graph-box .box-close').click(function() {
		  jQuery(this).closest('.small-graph-box').fadeOut(200);
		  return false;
	   });
</script>
<script type="text/javascript">
function FormValidation()
{
  var fn=document.getElementById('firstname').value;
    if(fn == ""){
        //alert('Please Enter First Name');
        document.getElementById('firstname').style.borderColor = "red";
        return false;
    }else{
        document.getElementById('firstname').style.borderColor = "green";
    }
    if (/^[0-9]+$/.test(document.getElementById("firstname").value)) {
       //alert("First Name Contains Numbers!");
        document.getElementById('firstname').style.borderColor = "red";
        return false;
    }else{
        document.getElementById('firstname').style.borderColor = "green";
    }
    if(fn.length <=2){
        //alert('Your Name is To Short');
        document.getElementById('firstname').style.borderColor = "red";
        return false;
    }else{
        document.getElementById('firstname').style.borderColor = "green";
    }
    
    
    var em=document.getElementById('email').value;
    if(em=="")
 	   {
 	   document.getElementById('email').style.borderColor = "red";
        return false;
    }else{
        document.getElementById('email').style.borderColor = "green";
    }
    if(/^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$/.test(document.getElementById("email").value))
    	{
    	document.getElementById('email').style.borderColor = "green";
       
    	
    	}
    else
	   {
	   document.getElementById('email').style.borderColor = "red";
	   return false;
	   }
   
    var ph=document.getElementById('ppp').value;
    if(ph=="")
 	   {
 	   document.getElementById('ppp').style.borderColor = "red";
        return false;
    }else{
        document.getElementById('ppp').style.borderColor = "green";
    }
   if(/^[789]\d{9}$/.test(document.getElementById("ppp").value))
	   {
	   
	   document.getElementById('ppp').style.borderColor = "green";
	   }
   else
   {
   document.getElementById('ppp').style.borderColor = "red";
   return false;
   }
   
   var pass=document.getElementById('pass').value;
   if(pass=="")
	   {
	   document.getElementById('pass').style.borderColor = "red";
       return false;
   }else{
       document.getElementById('pass').style.borderColor = "green";
   }
   if(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}/.test(document.getElementById("pass").value))
	   {
	   document.getElementById('pass').style.borderColor = "green";
	   }
   else
   {
	   alert("password must contain Minimum eight characters, at least one uppercase letter, one lowercase letter, one number and one special character:")
   document.getElementById('pass').style.borderColor = "red";
   return false;
   }
	   
}


    </script>

 <script type="text/javascript">
    function tick(el) {
    	 $('#pass').attr('type',chk.checked ? 'text' : 'password');
    	}
    
    </script>
	
</body>
</html>
