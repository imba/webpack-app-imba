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

css header, footer
	flex: 0 0 auto;
	display: flex;
	flex-direction: row;
	justify-content: flex-start;
	align-items: center;
	padding: 10px 6px;
	background: #e8e8e8;

css .vbox d: flex fld: column jc: center ai: stretch

tag App

	css button -webkit-appearance: none
		bg: #4a95eb bg@hover: #3a8eef fs: 13px d: flex
		ai: center jc: center bd: 0px
		p: 2px 10px rd: 2px c: white
		m: 0px 4px fl: 0 0 auto h: 24px
	css input d: block p: 0px 12px bg: transparent
		bd: none fs: inherit w: 50px h: 24px
		fl: 1 1 auto

	def addItem
		data.items.push(title: $title.value)
		$title.value = ""

	def render
		<self.{vbox}>
			<header>
				<input$title placeholder="New..." @keyup.enter.addItem()>
				<button @click.addItem()> 'Add item'
			<List list=data.items>

imba.mount <App data=store>
