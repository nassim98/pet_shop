

<div class="header">
	<div class="logo">
		<a href="index.html"><img
			src="${pageContext.request.contextPath}/images/logo.gif" alt=""
			title="" border="0" /></a>
	</div>
	<div id="menu">
		<ul>
			<li><a href="${pageContext.request.contextPath}/index"><fmt:message key="header.home" /></a></li>
			<li><a href="${pageContext.request.contextPath}/aboutus"><fmt:message key="header.aboutus" /></a></li>
			<li><a href="${pageContext.request.contextPath}/category"><fmt:message key="header.pets" /></a></li>
			<li><a href="${pageContext.request.contextPath}/specials"><fmt:message key="header.sepecial_pets" /></a></li>
			
			<c:choose>
				<c:when test="${sessionScope.login}" >
					<li><a href="${pageContext.request.contextPath}/myaccount"><fmt:message key="header.myAccount" /></a></li>
				</c:when>
				<c:when test="${!sessionScope.login}" >
				<li><a href="${pageContext.request.contextPath}/myaccount"><fmt:message key="header.myAccount" /></a></li>
					<li><a href="${pageContext.request.contextPath}/register"><fmt:message key="header.register" /></a></li>
				</c:when>
			</c:choose>
			
			
			
			<li><a href="${pageContext.request.contextPath}/details"><fmt:message key="header.prices" /></a></li>
			<li><a href="${pageContext.request.contextPath}/contact"><fmt:message key="header.contact" /></a></li>
		</ul>
	</div>
</div>

