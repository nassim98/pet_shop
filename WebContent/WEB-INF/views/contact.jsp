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
						src="${pageContext.request.contextPath}/images/bullet1.gif" alt=""
						title="" /></span>Contact Us
				</div>

				<div class="feat_prod_box_details">
					<p class="details">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit, sed do eiusmod tempor incididunt ut labore et
						dolore magna aliqua. Ut enim ad minim veniam, quis nostrud. Lorem
						ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
						tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
						minim veniam, quis nostrud.</p>

					<div class="contact_form">
						<div class="form_subtitle">all fields are requierd</div>
						<div class="form_row">
							<label class="contact"><strong>Name:</strong></label> <input
								type="text" class="contact_input" />
						</div>

						<div class="form_row">
							<label class="contact"><strong>Email:</strong></label> <input
								type="text" class="contact_input" />
						</div>


						<div class="form_row">
							<label class="contact"><strong>Phone:</strong></label> <input
								type="text" class="contact_input" />
						</div>

						<div class="form_row">
							<label class="contact"><strong>Company:</strong></label> <input
								type="text" class="contact_input" />
						</div>


						<div class="form_row">
							<label class="contact"><strong>Message:</strong></label>
							<textarea class="contact_textarea"></textarea>
						</div>


						<div class="form_row">
							<a href="#" class="contact">send</a>
						</div>
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