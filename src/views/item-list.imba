tag item-list
	
	css .completed td:line-through

	css ul m:0 p:0
		list-style:none inside none
		fl:1 1 auto

	css li py:8px px:12px d:flex fld:row
		jc:flex-start ai:center 
		bdb: 1px solid whitesmoke

	prop data

	def completeItem item
		console.log "clicked,{item.completed}"
		item.completed = !item.completed

	def render
		<self>
			<ul> for item in data
				<li .completed=(item.completed) @click.completeItem(item)> item.title