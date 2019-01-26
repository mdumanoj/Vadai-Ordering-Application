<html>
	<head>
		<title>Silicon Vadai Services</title>
	</head>
	<style type="text/css">
		body {
			font-family: cambria;
			color: #008080;
		}
		h1 {
			text-align: center;
		}
		h6 {
			color: red;
		}
		.section {
			font-size: 20px;
			margin-left: 30%;
		}
		input[type='text'] {
			height: 30px;
			padding: 2%;
		}
		input[type='submit'] {
			width: 200px;
			height: 33px;
		}
	</style>
	<body>
		<header>
			<hr>
			<h1>Silicon Vadai Services</h1>
			<hr>
			<span>Welcome <%= (String)session.getAttribute("uname") %></span>
		</header>
		<div class="section">
			<h3>Give How Many Vadai Do You Want</h3>
			<h6>*Enter 0 if you don't need that type of Vadai</h6>
			<form action="com.do" method="POST">
				<table cellpadding="5">
					<tr><td>Uluntha Vadai:</td><td><input type='text' placeholder="Price: 5rs" name='uluntha'></td></tr>
					<tr><td>Aama Vadai:</td><td><input type='text' placeholder="Price: 5rs" name='aama'></td></tr>
					<tr><td>Keera Vadai:</td><td><input type='text' placeholder="Price: 6rs" name='keera'></td></tr>
					<tr><td>Masaal Vadai:</td><td><input type='text' placeholder="Price: 6rs" name='masaal'></td></tr>
					<tr><td>Paruppu Vadai:</td><td><input type='text' placeholder="Price: 5rs" name='paruppu'></td></tr>
					<tr><td>Samosa:</td><td><input type='text' placeholder="Price: 10rs" name='samosa'></td></tr>
					<tr><td>Bhajji:</td><td><input type='text' placeholder="Price: 6rs" name='bhajji'></td></tr>
					<tr><td colspan="2" align="center"><input type="submit" value="Order Now"></td></tr>
				</table>
			</form>
		</div>
	</body>
</html>