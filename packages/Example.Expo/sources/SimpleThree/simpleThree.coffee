import THREE, { Renderer as THREE_Render } from 'three-coffee.core'
import BookDemo from 'three-coffee.example.bookdemo'

drawProgram = ({
  gl
  width
  height
}) =>
  await do =>

  scene = new THREE.Scene()

  camera = new THREE.PerspectiveCamera(
    75
    width / height
    0.1
    1000
  )

  renderer = new THREE_Render.expo {
    gl
  }

  renderer.setSize(
    width * 2
    height * 2
  )
  renderer.setClearColor 0xffffff

  # axes
  axes = new THREE.AxesHelper 20
  scene.add axes
  ########

  BookDemo {
    scene
    camera
    renderer
  }

export default ({
  gl
  width
  height
}) =>

  try
    await drawProgram {
      gl
      width
      height
    }
  catch e
    console.log e
