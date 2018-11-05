<!DOCTYPE html>
<html>
<head>
	<title>Verkefni 6</title>
</head>
<body>
	<section>
		<div>
			<h3>Jakki</h3>
			<a href="/chart/0"></a>
			<img src="/static/img01.jpg">
			<h4>Verð: 20000</h4>
		</div>
	</section>
	<!-- Cart teljari -->
	<%
	from bottle import *
	from beaker.middleware import SessionMiddleware
	bs = request.environ.get('beaker.session')
	cnt = 0
	for i in range(6):
		if bs.get(str(i)):
			cnt+=1
		end
	end
	%>
	<aside>
		( {{cnt}} )
		<a href="/chart"><img src="/static/cart.png"></a>
	</aside>
</body>
</html>