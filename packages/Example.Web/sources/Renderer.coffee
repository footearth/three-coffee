import THREE, { Renderer as THREE_Render } from 'three-coffee.core'
import BookDemo from 'three-coffee.example.bookdemo'

drawProgram = ({
  width
  height
}) =>
  # await do =>

  scene = new THREE.Scene()

  camera = new THREE.PerspectiveCamera(
    75
    width / height
    0.1
    1000
  )

  renderer = new THREE_Render.web()

  renderer.setSize(
    width
    height
  )
  renderer.setClearColor 0xffffff

  # axes
  axes = new THREE.AxesHelper 20
  scene.add axes
  ########

  { onTick } = BookDemo {
    scene
    camera
    renderer
  }

  {
    onTick
    renderer
    scene
    camera
  }

export default =>

  try
    drawProgram
      width: window.innerWidth
      height: window.innerHeight
  catch e
    console.log e
