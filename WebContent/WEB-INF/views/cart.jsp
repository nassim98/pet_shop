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
						title="" /></span>My cart
				</div>

				<div class="feat_prod_box_details">

					<table class="cart_table">
						<tr class="cart_title">
							<td>Item pic</td>
							<td>Book name</td>
							<td>Unit price</td>
							<td>Qty</td>
							<td>Total</td>
						</tr>
				
					<tr>
							<td><a href="${pageContext.request.contextPath}/details"><img
									src="${pageContext.request.contextPath}/images/cart_thumb.gif"
									alt="" title="" border="0" class="cart_thumb" /></a></td>
							<td>Books</td>
							<td>100$</td>
							<td>1</td>
							<td>100$</td>
						</tr>
						<tr>
							<td><a href="${pageContext.request.contextPath}/details"><img
									src="${pageContext.request.contextPath}/images/cart_thumb.gif"
									alt="" title="" border="0" class="cart_thumb" /></a></td>
							<td>Books</td>
							<td>100$</td>
							<td>1</td>
							<td>100$</td>
						</tr>
						<tr>
							<td><a href="${pageContext.request.contextPath}/details"><img
									src="${pageContext.request.contextPath}/images/cart_thumb.gif"
									alt="" title="" border="0" class="cart_thumb" /></a></td>
							<td>Books</td>
							<td>100$</td>
							<td>1</td>
							<td>100$</td>
						</tr>

						<tr>
							<td colspan="4" class="cart_total"><span class="red">TOTAL
									SHIPPING:</span></td>
							<td>250$</td>
						</tr>

						<tr>
							<td colspan="4" class="cart_total"><span class="red">TOTAL:</span></td>
							<td>325$</td>
						</tr>
			

					</table>
					<a href="#" class="continue">&lt; continue</a> <a href="#"
						class="checkout">checkout &gt;</a>




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