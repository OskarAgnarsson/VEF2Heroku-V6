<!DOCTYPE html>
<html>
<head>
	<title>Verkefni 6</title>
</head>
<body>
% from bottle import *
% from beaker.middleware import SessionMiddleware
% bs = request.environ.get('beaker.session')
% empty = True

<h2>Karfan:</h2>

% for i in range(6):
	% if bs.get(str(i)):
		% empty = false
	% end
% end

% if empty:
	<h2>Karfan er tóm</h2>

% else:
	<tr>
		<th>Nafn Vöru</th>
		<th>Verð</th>
		<th></th>
	</tr>
	% for i in range(6):
		% if bs

</body>
</html>