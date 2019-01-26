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
		.section {
			font-size: 20px;
			margin-left: 30%;
		}
		table {
			height: 350px;
			width: 400px;
		}
		table,th,td {
			border: 1px solid #ccc;
			border-collapse: collapse;
			text-align:center;
		}
		input[type='submit'] {
			width: 200px;
			height: 33px;
		}
	</style>
	<body>
		<% 
			int uluntha = Integer.parseInt(request.getParameter("uluntha")) * 5;
			int aama = Integer.parseInt(request.getParameter("aama")) * 5;
			int keera = Integer.parseInt(request.getParameter("keera")) * 6;
			int masaal = Integer.parseInt(request.getParameter("masaal")) * 6;
			int paruppu = Integer.parseInt(request.getParameter("paruppu")) * 5;
			int samosa = Integer.parseInt(request.getParameter("samosa")) * 10;
			int bhajji = Integer.parseInt(request.getParameter("bhajji")) * 6;
		%>
		<header>
			<hr>
			<h1>Silicon Vadai Services</h1>
			<hr>
			<span>Welcome <%= (String)session.getAttribute("uname") %></span>
		</header>
		<br>
		<div class="section">
			<h3>Your Order Summary</h3>
			<form action="silicon" method="POST">
				<table cellpadding="10">
					<tr><th>Vadai Type</th><th>Price(in rs)</th><th>Quantity</th><th>Amount</th></tr>
					<tr><td>Uluntha Vadai</td><td>5</td><td><%= uluntha/5 %></td><td><%= uluntha %></td></tr>
					<tr><td>Aama Vadai</td><td>5</td><td><%= aama/5 %></td><td><%= aama %></td></tr>
					<tr><td>Keera Vadai</td><td>6</td><td><%= keera/6 %></td><td><%= keera %></td></tr>
					<tr><td>Masaal Vadai</td><td>6</td><td><%= masaal/6 %></td><td><%= masaal %></td></tr>
					<tr><td>Paruppu Vadai</td><td>5</td><td><%= paruppu/5 %></td><td><%= paruppu %></td></tr>
					<tr><td>Samosa</td><td>5</td><td><%= samosa/10 %></td><td><%= samosa %></td></tr>
					<tr><td>Bhajji</td><td>5</td><td><%= bhajji/6 %></td><td><%= bhajji %></td></tr>
					<tr><td colspan="3">Total Amount</td><td><%= uluntha+aama+keera+masaal+paruppu+samosa+bhajji %></td></tr>
					<tr><td colspan="4"><input type="submit" value="Place Order"></td></tr>
				</table>
			</form>
		</div>
	</body>
</html>