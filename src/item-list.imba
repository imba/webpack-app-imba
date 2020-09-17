export tag List

	css .completed td: line-through
	css ul m: 0 p: 0
		list-style: none inside none
		fl: 1 1 auto
	css li p: 8px 12px d: flex fld: row
		jc: flex-start ai: center 
		bdb: 1px solid whitesmoke

	prop list

	def completeItem item
		console.log "clicked,{item.completed}"
		item.completed = !item.completed

	def render
		<self>
			<ul> for item in list
				<li .completed=(item.completed) @click.completeItem(item)> item.title
