<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="../includes/languages.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1252" />
<title>Pet Shop</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/style.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/lightbox.css" />

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
			<div class="left_content">
				<div class="title">
					<span class="title_icon"><img
						src="${pageContext.request.contextPath }/images/bullet1.gif"
						alt="" title="" /></span>Register
				</div>

				<div class="feat_prod_box_details">
					<p class="details">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit, sed do eiusmod tempor incididunt ut labore et
						dolore magna aliqua. Ut enim ad minim veniam, quis nostrud. Lorem
						ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
						tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
						minim veniam, quis nostrud.</p>

					<div class="contact_form">
						<div class="form_subtitle">create new account</div>
						<form name="register" action="register" method="post" >
							<div class="form_row">
								<label class="contact"><strong>Username:</strong></label> <input
									name="username" type="text" class="contact_input" />
							</div>


							<div class="form_row">
								<label class="contact"><strong>Password:</strong></label> <input
								name="password"	type="text" class="contact_input" />
							</div>

							<div class="form_row">
								<label class="contact"><strong>Email:</strong></label> <input
								name="email"	type="text" class="contact_input" />
							</div>


							<div class="form_row">
								<label class="contact"><strong>Phone:</strong></label> <input
								name="phone"	type="text" class="contact_input" />
							</div>

							<div class="form_row">
								<label class="contact"><strong>Company:</strong></label> <input
									name="company" type="text" class="contact_input" />
							</div>

							<div class="form_row">
								<label class="contact"><strong>Adrres:</strong></label> <input
								name="adress"	type="text" class="contact_input" />
							</div>

							<div class="form_row">
								<div class="terms">
									<input type="checkbox" name="terms" /> I agree to the <a
										href="#">terms &amp; conditions</a>
								</div>
							</div>


							<div class="form_row">
								<input type="submit" class="register" value="register" />
							</div>
						</form>
					</div>

				</div>
				<div class="clear"></div>
				</div>
				<!--end of left content-->

			<!-- right content-->
				<jsp:include page="../includes/right.jsp">
					<jsp:param name="s" value="${s}" />
					<jsp:param name="partners" value="${partners}" />
					<jsp:param name="categories" value="${categories}" />
				</jsp:include>
				<!-- end of right content-->

				<div class="clear"></div>
			</div>
			<!--end of center content-->



			<%@include file="../includes/footer.jsp"%>




		
	</div>
</body>
</html>