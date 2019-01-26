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
		section {
			font-size: 20px;
			margin-left: 30%;
		}
	</style>
	<body>
		<header>
			<hr>
			<h1>Silicon Vadai Services</h1>
			<hr>
			<span>Welcome <%= (String)session.getAttribute("uname") %></span>
		</header>
		<section>
			<h3>Your Order Placed Successfully. . .!<br><br>Select Your Choice.</h3>
			<ul>
				<li><a href="home.jsp">Place Another Order</a></li>
				<li><a href="index.html">Logout</a></li>
			</ul>
		</section>
	</body>
</html>