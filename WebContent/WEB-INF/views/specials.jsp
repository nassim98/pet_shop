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
						title="" /></span>Special gifts
				</div>

				<div class="feat_prod_box">

					<div class="prod_img">
						<a href="${pageContext.request.contextPath}/details"><img
							src="${pageContext.request.contextPath}/images/prod1.gif" alt=""
							title="" border="0" /></a>
					</div>

					<div class="prod_det_box">
						<span class="special_icon"><img
							src="${pageContext.request.contextPath}/images/special_icon.gif"
							alt="" title="" /></span>
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
							src="${pageContext.request.contextPath}/images/prod2.gif" alt=""
							title="" border="0" /></a>
					</div>

					<div class="prod_det_box">
						<span class="special_icon"><img
							src="${pageContext.request.contextPath}/images/special_icon.gif"
							alt="" title="" /></span>
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
							src="${pageContext.request.contextPath}images/prod1.gif" alt=""
							title="" border="0" /></a>
					</div>

					<div class="prod_det_box">
						<span class="special_icon"><img
							src="${pageContext.request.contextPath}images/special_icon.gif"
							alt="" title="" /></span>
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
							src="${pageContext.request.contextPath}/images/prod2.gif" alt=""
							title="" border="0" /></a>
					</div>

					<div class="prod_det_box">
						<span class="special_icon"><img
							src="${pageContext.request.contextPath}/images/special_icon.gif"
							alt="" title="" /></span>
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

				<div class="pagination">
					<span class="disabled"></span><span class="current">1</span><a
						href="#?page=2">2</a><a href="#?page=3">3</a>…<a
						href="#?page=199">10</a><a href="#?page=200">11</a><a
						href="#?page=2">>></a>
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