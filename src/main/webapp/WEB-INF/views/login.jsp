<%@include file="../common/header.jspf" %>
	<%@include file="../common/navigation.jspf" %>
	<div class="container">
		<p style="color:red">${errorMessage}</p>
		<form action="/login.do" method="post">
			Name: <input type="text" name="name">
			Password: <input type="password" name="password">
			<input type="submit" value="login"> 
		</form>
	</div>
<%@ include file="../common/footer.jspf" %>