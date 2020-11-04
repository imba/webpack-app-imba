import './styles'
import './views/item-list'

const store = {
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
		data.items.push(title: $title.value)
		$title.value = ""

	def render
		<self[d:vflex jc:center ai:stretch]>
			<header>
				<input$title placeholder="New..." @keyup.enter=addItem>
				<button @click=addItem> 'Add item'
			<item-list data=data.items>

imba.mount <App data=store>
