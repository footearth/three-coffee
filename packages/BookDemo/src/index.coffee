import THREE from 'three-coffee.core'

export default ({
  scene
  camera
  renderer
}) =>

  plane = do =>
    i = do =>
      g = new THREE.PlaneGeometry 20, 60
      m = new THREE.MeshLambertMaterial
        color: 0xcccccc
      new THREE.Mesh g, m
    i.rotation.x = -0.5*Math.PI
    i.position.x = 10
    i.position.y = 0
    i.position.z = 0
    i.receiveShadow = true
    i

  cube = do =>
    i = do =>
      g = new THREE.CubeGeometry 4, 4, 4
      m = new THREE.MeshLambertMaterial
        color: 0xff0000
        # wireframe: true
      new THREE.Mesh g, m
    i.position.x = 10
    i.position.y = 2
    i.position.z = 2 + 15
    i.castShadow = true
    i

  sphere = do =>
    i = do =>
      g = new THREE.SphereGeometry 4, 20, 20
      m = new THREE.MeshLambertMaterial
        color: 0x7777ff
        # wireframe: true
      new THREE.Mesh g, m
    i.position.x = 10
    i.position.y = 4
    i.position.z = -10
    i.castShadow = true
    i

  scene.add plane
  scene.add cube
  scene.add sphere

  renderer.shadowMap.enabled = true
  renderer.shadowMap.type = THREE.PCFSoftShadowMap

  spotLight = do =>
    s = do =>
      new THREE.SpotLight 0xffffff
    s.position.set 0, 40, 40
    s.castShadow = true

    # s.shadow.camera.near = 0.5
    # s.shadow.camera.far = 80

    s.shadow.mapSize.width = 2048
    s.shadow.mapSize.height = 2048

    s

  spotLightHelper = do =>
    new THREE.CameraHelper spotLight.shadow.camera

  scene.add spotLight
  scene.add spotLightHelper

  position = 40

  camera.position.x =
  camera.position.z =
  camera.position.y = position

  onTick: =>

    camera.lookAt scene.position

    renderer.render scene, camera
