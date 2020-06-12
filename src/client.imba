import {vbox, completed} from './styles/index.css'
import { List } from './item-list'

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

	def render
		<self.{vbox}>
			<header>
				<input[data:title] placeholder="New..." :keyup.enter.addItem>
				<button :tap.addItem> 'Add item'
			<List list=data:items>

Imba.mount <App[store]>
