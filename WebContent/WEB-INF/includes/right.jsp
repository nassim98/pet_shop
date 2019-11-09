

<%@include file="../includes/languages.jsp"%>



<div class="right_content">

	<div class="languages_box">
		<span class="red"><fmt:message key="languages" />:</span> <a
			href="?language=en"><img
			src="${pageContext.request.contextPath}/images/gb.gif" alt=""
			title="" border="0" /></a> <a href="?language=fr"><img
			src="${pageContext.request.contextPath}/images/fr.gif" alt=""
			title="" border="0" /></a> <a href="language=de"><img
			src="${pageContext.request.contextPath}/images/de.gif" alt=""
			title="" border="0" /></a>
	</div>
	<div class="currency">
		<span class="red"><fmt:message key="currency" />: </span> <a href="#">GBP</a>
		<a href="#">EUR</a> <a href="#"><strong>USD</strong></a>
	</div>


	<div class="cart">
		<div class="title">
			<span class="title_icon"><img
				src="${pageContext.request.contextPath}/images/cart.gif" alt=""
				title="" /></span>
				<a href="${pageContext.request.contextPath}/cart"
			><fmt:message key="my_cart" /></a>
			
		</div>
		<div class="home_cart_content">
			3 x items | <span class="red">TOTAL: 100$</span>
		</div>
		

	</div>

	<div class="title">
		<span class="title_icon"><img
			src="${pageContext.request.contextPath}/images/bullet3.gif" alt=""
			title="" /></span>
		<fmt:message key="about_our_shop" />
	</div>
	<div class="about">
		<p>
			<img src="${pageContext.request.contextPath}/images/about.gif" alt=""
				title="" class="right" /> Lorem ipsum dolor sit amet, consectetur
			adipisicing elit, sed do eiusmod tempor incididunt ut labore et
			dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.
		</p>

	</div>

	<div class="right_box">

		<div class="title">
			<span class="title_icon"><img
				src="${pageContext.request.contextPath}/images/bullet4.gif" alt=""
				title="" /></span>
			<fmt:message key="promotions" />
		</div>
		<div class="new_prod_box">
			<a href="${pageContext.request.contextPath}/details">product name</a>
			<div class="new_prod_bg">
				<span class="new_icon"><img
					src="${pageContext.request.contextPath}/images/promo_icon.gif"
					alt="" title="" /></span> <a
					href="${pageContext.request.contextPath}/details"><img
					src="${pageContext.request.contextPath}/images/thumb1.gif" alt=""
					title="" class="thumb" border="0" /></a>
			</div>
		</div>

		<div class="new_prod_box">
			<a href="${pageContext.request.contextPath}/details">product name</a>
			<div class="new_prod_bg">
				<span class="new_icon"><img
					src="${pageContext.request.contextPath}/images/promo_icon.gif"
					alt="" title="" /></span> <a
					href="${pageContext.request.contextPath}/details"><img
					src="${pageContext.request.contextPath}/images/thumb2.gif" alt=""
					title="" class="thumb" border="0" /></a>
			</div>
		</div>

		<div class="new_prod_box">
			<a href="${pageContext.request.contextPath}/details">product name</a>
			<div class="new_prod_bg">
				<span class="new_icon"><img
					src="${pageContext.request.contextPath}/images/promo_icon.gif"
					alt="" title="" /></span> <a
					href="${pageContext.request.contextPath}/details"><img
					src="${pageContext.request.contextPath}/images/thumb3.gif" alt=""
					title="" class="thumb" border="0" /></a>
			</div>
		</div>

	</div>

	<div class="right_box">

		<div class="title">
			<span class="title_icon"><img
				src="${pageContext.request.contextPath}/images/bullet5.gif" alt=""
				title="" /> <fmt:message key="categories" /></span>

		</div>

		<ul class="list">
			<c:choose>
				<c:when test="${not empty categories}">
					<c:forEach var="category" items="${categories}">
						<li><a href="<c:out value="${ category.getUrl()}"></c:out>">
								<c:out value="${ category.getName()}"></c:out>
						</a></li>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<li><a href="#">Loading Categories</a></li>
				</c:otherwise>
			</c:choose>


		</ul>

		<div class="title">
			<span class="title_icon"><img
				src="${pageContext.request.contextPath}/images/bullet6.gif" alt=""
				title="" /></span>
			<fmt:message key="partners" />
		</div>

		<ul class="list">

			<c:choose>
				<c:when test="${not empty partners}">
					<c:forEach var="partner" items="${partners}">
						<li><a href="<c:out value="${ partner.getWebsite()}"></c:out>">
								<c:out value="${ partner.getName()}"></c:out>
						</a></li>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<li><a href="#">Loading Partners</a></li>
				</c:otherwise>
			</c:choose>
		</ul>

	</div>


</div>
<!--end of right content-->
