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
			<div class="left_content">
				<div class="crumb_nav">
					<a href="index.html">home</a> &gt;&gt; product name
				</div>
				<div class="title">
					<span class="title_icon"><img src="images/bullet1.gif"
						alt="" title="" /></span>Product name
				</div>

				<div class="feat_prod_box_details">

					<div class="prod_img">
						<a href="details.html"><img src="images/prod1.gif" alt=""
							title="" border="0" /></a> <br /> <br /> <a
							href="images/big_pic.jpg" rel="lightbox"><img
							src="images/zoom.gif" alt="" title="" border="0" /></a>
					</div>

					<div class="prod_det_box">
						<div class="box_top"></div>
						<div class="box_center">
							<div class="prod_title">Details</div>
							<p class="details">
								Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
								eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
								enim ad minim veniam, quis nostrud exercitation.<br /> Lorem
								ipsum dolor sit amet, consectetur adipisicing elit, sed do
								eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
								enim ad minim veniam, quis nostrud exercitation.
							</p>
							<div class="price">
								<strong>PRICE:</strong> <span class="red">100 $</span>
							</div>
							<div class="price">
								<strong>COLORS:</strong> <span class="colors"><img
									src="images/color1.gif" alt="" title="" border="0" /></span> <span
									class="colors"><img src="images/color2.gif" alt=""
									title="" border="0" /></span> <span class="colors"><img
									src="images/color3.gif" alt="" title="" border="0" /></span>
							</div>
							<a href="details.html" class="more"><img
								src="images/order_now.gif" alt="" title="" border="0" /></a>
							<div class="clear"></div>
						</div>

						<div class="box_bottom"></div>
					</div>
					<div class="clear"></div>
				</div>


				<div id="demo" class="demolayout">

					<ul id="demo-nav" class="demolayout">
						<li><a class="active" href="#tab1">More details</a></li>
						<li><a class="" href="#tab2">Related books</a></li>
					</ul>

					<div class="tabs-container">

						<div style="display: block;" class="tab" id="tab1">
							<p class="more_details">Lorem ipsum dolor sit amet,
								consectetur adipisicing elit, sed do eiusmod tempor incididunt
								ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
								nostrud exercitation.</p>
							<ul class="list">
								<li><a href="#">Lorem ipsum dolor sit amet, consectetur
										adipisicing elit</a></li>
								<li><a href="#">Lorem ipsum dolor sit amet, consectetur
										adipisicing elit</a></li>
								<li><a href="#">Lorem ipsum dolor sit amet, consectetur
										adipisicing elit</a></li>
								<li><a href="#">Lorem ipsum dolor sit amet, consectetur
										adipisicing elit</a></li>
							</ul>
							<p class="more_details">Lorem ipsum dolor sit amet,
								consectetur adipisicing elit, sed do eiusmod tempor incididunt
								ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
								nostrud exercitation.</p>
						</div>

						<div style="display: none;" class="tab" id="tab2">
							<div class="new_prod_box">
								<a href="details.html">product name</a>
								<div class="new_prod_bg">
									<a href="details.html"><img src="images/thumb1.gif" alt=""
										title="" class="thumb" border="0" /></a>
								</div>
							</div>

							<div class="new_prod_box">
								<a href="details.html">product name</a>
								<div class="new_prod_bg">
									<a href="details.html"><img src="images/thumb2.gif" alt=""
										title="" class="thumb" border="0" /></a>
								</div>
							</div>

							<div class="new_prod_box">
								<a href="details.html">product name</a>
								<div class="new_prod_bg">
									<a href="details.html"><img src="images/thumb3.gif" alt=""
										title="" class="thumb" border="0" /></a>
								</div>
							</div>

							<div class="new_prod_box">
								<a href="details.html">product name</a>
								<div class="new_prod_bg">
									<a href="details.html"><img src="images/thumb1.gif" alt=""
										title="" class="thumb" border="0" /></a>
								</div>
							</div>

							<div class="new_prod_box">
								<a href="details.html">product name</a>
								<div class="new_prod_bg">
									<a href="details.html"><img src="images/thumb2.gif" alt=""
										title="" class="thumb" border="0" /></a>
								</div>
							</div>

							<div class="new_prod_box">
								<a href="details.html">product name</a>
								<div class="new_prod_bg">
									<a href="details.html"><img src="images/thumb3.gif" alt=""
										title="" class="thumb" border="0" /></a>
								</div>
							</div>



							<div class="clear"></div>
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


	
		<script type="text/javascript">
			var tabber1 = new Yetii({
				id : 'demo'
			});
		</script>
		</div>
</body>

</html>