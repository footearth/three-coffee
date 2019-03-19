import THREE from 'three-coffee.core'
import Renderer from './Renderer'

{
	renderer
	onTick
	scene
	camera
} = Renderer()

view = renderer.domElement
window.onload = =>
	document.body.appendChild view

animate = =>

	requestAnimationFrame animate
	onTick()

do animate
