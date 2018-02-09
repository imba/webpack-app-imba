
var store = {
	title: ""
	items: [
		{title: "git clone hello-world-imba"}
		{title: "npm install"}
		{title: "npm run dev"}
		{title: "play around"}
	]
}


tag App
	def addItem
		data:items.push(title: data:title)
		data:title = ""


Imba.mount <App[store].vbox ->
	<header>
		<input model='title' placeholder="New..." :keyup.enter.addItem>
		<button :tap.addItem> 'Add item'
	<ul> for item in data:items
		<li> item:title