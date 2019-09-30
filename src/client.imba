var styles = require('./styles/index.css')

var store = {
	title: ""
	items: [
		{title: "git clone hello-world-imba", completed: false}
		{title: "npm install", completed: false}
		{title: "npm run dev", completed: false}
		{title: "play around", completed: false}
	]
}

tag App
	def addItem
		data:items.push(title: data:title)
		data:title = ""

	def completeItem item
		console.log "clicked,{item:completed}"
		item:completed = !item:completed
		
	def render
		<self.{styles:vbox}>
			<header>
				<input[data:title] placeholder="New..." :keyup.enter.addItem>
				<button :tap.addItem> 'Add item'
			<ul> for item in data:items
				<li .{item:completed and styles:completed} :tap.completeItem(item)> item:title

Imba.mount <App[store]>
