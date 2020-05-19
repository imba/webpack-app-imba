export tag List
	prop list

	def render
		<self>
			<ul> for item in list
					<li .{item:completed and completed} :tap.completeItem(item)> item:title
