export tag List
	prop list

	def render
		<self>
			<ul> for i in list
					<li> i:title
