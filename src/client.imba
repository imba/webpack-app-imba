# index.imba
import { List } from './item-list'

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

	def render
		<self.vbox>
			<header>
				<input[data:title] placeholder="New..." :keyup.enter.addItem>
				<button :tap.addItem> 'Add item'
			<List list=data:items>


Imba.mount <App[store]>
