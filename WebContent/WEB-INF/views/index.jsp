<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="../includes/languages.jsp"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1252" />
<title>Pet Shop</title>
<link rel="stylesheet"
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
			<div class="left_content">

				<div class="title">
					<span class="title_icon"><img
						src="${pageContext.request.contextPath}/images/bullet1.gif" alt=""
						title="" /></span>
					<fmt:message key="featured_pets" />
				</div>

				<div class="feat_prod_box">

					<div class="prod_img">
						<a href="${pageContext.request.contextPath}/details.html"><img
							src="${pageContext.request.contextPath}/images/prod1.gif" alt=""
							title="" border="0" /></a>
					</div>

					<div class="prod_det_box">
						<div class="box_top"></div>
						<div class="box_center">
							<div class="prod_title">Product name</div>
							<p class="details">Lorem ipsum dolor sit amet, consectetur
								adipisicing elit, sed do eiusmod tempor incididunt ut labore et
								dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
								exercitation.</p>
							<a href="${pageContext.request.contextPath}/details" class="more">-
								more details -</a>
							<div class="clear"></div>
						</div>

						<div class="box_bottom"></div>
					</div>
					<div class="clear"></div>
				</div>


				<div class="feat_prod_box">

					<div class="prod_img">
						<a href="${pageContext.request.contextPath}/details"><img
							src="${pageContext.request.contextPath}/images/prod1.gif" alt=""
							title="" border="0" /></a>
					</div>

					<div class="prod_det_box">
						<div class="box_top"></div>
						<div class="box_center">
							<div class="prod_title">Product name</div>
							<p class="details">Lorem ipsum dolor sit amet, consectetur
								adipisicing elit, sed do eiusmod tempor incididunt ut labore et
								dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
								exercitation.</p>
							<a href="${pageContext.request.contextPath}/details" class="more">-
								more details -</a>
							<div class="clear"></div>
						</div>

						<div class="box_bottom"></div>
					</div>
					<div class="clear"></div>
				</div>



				<div class="title">
					<span class="title_icon"><img
						src="${pageContext.request.contextPath}/images/bullet2.gif" alt=""
						title="" /></span>New pets
				</div>

				<div class="new_products">

					<div class="new_prod_box">
						<a href="${pageContext.request.contextPath}/details">product
							name</a>
						<div class="new_prod_bg">
							<span class="new_icon"><img
								src="${pageContext.request.contextPath}/images/new_icon.gif"
								alt="" title="" /></span> <a
								href="${pageContext.request.contextPath}/details"><img
								src="${pageContext.request.contextPath}/images/thumb1.gif"
								alt="" title="" class="thumb" border="0" /></a>
						</div>
					</div>

					<div class="new_prod_box">
						<a href="${pageContext.request.contextPath}/details">product
							name</a>
						<div class="new_prod_bg">
							<span class="new_icon"><img
								src="${pageContext.request.contextPath}/images/new_icon.gif"
								alt="" title="" /></span> <a
								href="${pageContext.request.contextPath}/details"><img
								src="${pageContext.request.contextPath}/images/thumb2.gif"
								alt="" title="" class="thumb" border="0" /></a>
						</div>
					</div>

					<div class="new_prod_box">
						<a href="${pageContext.request.contextPath}/details">product
							name</a>
						<div class="new_prod_bg">
							<span class="new_icon"><img
								src="${pageContext.request.contextPath}/images/new_icon.gif"
								alt="" title="" /></span> <a
								href="${pageContext.request.contextPath}/details"><img
								src="${pageContext.request.contextPath}/images/thumb3.gif"
								alt="" title="" class="thumb" border="0" /></a>
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



				<%-- 				<%@include file="../includes/right.jsp"%> --%>

				<div class="clear"></div>
			</div>
			<!--end of center content-->


			<%@include file="../includes/footer.jsp"%>

	</div>
</body>
</html>