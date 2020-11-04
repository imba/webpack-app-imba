# including some global styles here
global css html
	w:100% h:100% m:0 ff:sans

	body w:100% h:100% m:0

	button -webkit-appearance: none
		bg:blue5 @hover:blue6
		fs:sm c:white
		d:flex ja:center
		px:4 py:2 rd:sm bd:0px
		mx:2 fl:0 0 auto

	header
		flex: 0 0 auto
		display: hflex
		justify-content: flex-start
		align-items: stretch
		padding: 10px 6px
		background: #e8e8e8

	input d:block px:4 bg:transparent
		bd:none fs:inherit w:50px
		fl:1 1 auto
