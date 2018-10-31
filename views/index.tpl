<!DOCTYPE html>
<html>
<head>
	<title>Verkefni 6</title>
</head>
<body>
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
</body>
</html>