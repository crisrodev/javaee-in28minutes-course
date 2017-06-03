<%@include file="../common/header.jspf" %>
	<%@include file="../common/navigation.jspf" %>
	<div class="container">
		<p>Your New Action Item:</p>
		<form action="/add-todo.do" method="post">
			<fieldset class="form-group">
				<label>Name</label><input class="form-control" type="text" name="todo"/><br/>
			</fieldset>
			<fieldset class="form-group">
				<label>Category</label><input class="form-control" type="text" name="category"/><br/>
			</fieldset>
			
			<input class="btn btn-success" type="submit" value="Add">
		</form>
	</div>
<%@ include file="../common/footer.jspf" %>