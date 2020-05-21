export tag List
	prop list

	def completeItem item
		console.log "clicked,{item:completed}"
		item:completed = !item:completed

	def render
		<self>
			<ul> for item in list
				<li .completed=(item:completed) :tap.completeItem(item)> item:title
