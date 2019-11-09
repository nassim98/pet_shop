<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="../includes/languages.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1252" />
<title>Pet Shop</title>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/lightbox.css"
	type="text/css" media="screen" />

<script src="${pageContext.request.contextPath}/js/prototype.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/js/scriptaculous.js?load=effects"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/lightbox.js"
	type="text/javascript"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/java.js"></script>
</head>
<body>
	<div id="wrap">

		<%@include file="../includes/header.jsp"%>

	
		<div class="center_content">
		<c:if test="${!sessionScope.login}">
			<div class="left_content">
				<div class="title">
					<span class="title_icon"><img src="images/bullet1.gif"
						alt="" title="" /></span>My account
				</div>

				<div class="feat_prod_box_details">
					<p class="details">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit, sed do eiusmod tempor incididunt ut labore et
						dolore magna aliqua. Ut enim ad minim veniam, quis nostrud. Lorem
						ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
						tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
						minim veniam, quis nostrud.</p>

					<div class="contact_form">
						<div class="form_subtitle">login into your account</div>
						<form name="register" action="myaccount" method="post">
							<div class="form_row">
								<label class="contact"><strong>Username:</strong></label> <input
									name="username" class="username" type="text" class="contact_input" />
							</div>


							<div class="form_row">
								<label class="contact"><strong>Password:</strong></label> <input
								name="password"	class="password" type="text" class="contact_input" />
							</div>

							<div class="form_row">
								<div class="terms">
									<input  type="checkbox" name="terms" /> Remember me
								</div>
							</div>


							<div class="form_row">
								<input type="submit" class="register" value="login" />
							</div>

						</form>

					</div>

				</div>
				<div class="clear"></div>
			</div></c:if>
				<!--end of left content-->

				
				
			
			
			<c:if test="${sessionScope.login}">
			<div class="left_content">
		<div class="title">
					<span class="title_icon"><img src=""
						alt="" title="" /></span>Profile Informations
				</div>
	<div class="profileInformations clear" >
	<p>	<label class="prod_title" >Username:</label> <c:out value="${sessionScope.user.name}"></c:out> </p>
	<p><label class="prod_title">Email:</label><c:out value="${sessionScope.user.email}"></c:out> </p>
	<p><label class="prod_title">Phone:</label><c:out value="${sessionScope.user.phone}"></c:out> </p>
	<p><label class="prod_title">Adress:</label><c:out value="${sessionScope.user.adress}"></c:out> </p>
	<p><label class="prod_title">Company:</label><c:out value="${sessionScope.user.company}"></c:out> </p>
	
	<div></div>
	
	<form method="get" action="myaccount" >
		<div class="form_row">
				<input type="submit" class="register" value="logout" name="logout" />
		</div>
	</form>
	
	</div>
	
		<div class="clear"></div>
			</div><!--end of left content-->
		
		
	</c:if>
	<jsp:include page="../includes/right.jsp">
					<jsp:param name="s" value="${s}" />
					<jsp:param name="partners" value="${partners}" />
					<jsp:param name="categories" value="${categories}" />
				</jsp:include>
	
		<div class="clear"></div>
       </div><!--end of center content-->


			<%@include file="../includes/footer.jsp"%>



		
		
		
		
		
		
	</div>
</body>
</html>