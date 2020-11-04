import express from 'express'
const server = express!

server.use express.static('./dist')

server.get '/' do(req,res)
	const html = <html>
		<head>
			<title> "Imba - Hello World"
			<meta charset="utf-8">
		<body>
			<script src="/client.js">
	
	return res.send html.toString

const port = process.env.PORT or 9000

server.listen(port) do
	console.log 'server is running on port ' + port
