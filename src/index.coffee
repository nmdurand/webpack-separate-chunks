
component = ->
	element = document.createElement 'div'
	button1 = document.createElement 'button'
	button2 = document.createElement 'button'
	br = document.createElement 'br'

	button1.innerHTML = 'Click me to load App 1!'
	button2.innerHTML = 'Click me to load App 2!'
	element.innerHTML = 'WebPack Dynamic Import test'
	element.appendChild br
	element.appendChild button1
	element.appendChild button2

	button1.onclick = (e)->
		import(###webpackChunkName: "app1"###'app1').then (module)->
			app1 = module.default
			app1()

	button2.onclick = (e)->
		{ default: app2 } = await import(###webpackChunkName: "app2"###'app2')
		app2()

	element

document.body.appendChild component()
