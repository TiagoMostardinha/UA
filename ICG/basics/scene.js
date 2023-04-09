// ************************** //
// Init the 3D renderer
// ************************** //
const renderer = new THREE.WebGLRenderer();
renderer.setSize(window.innerWidth, window.innerHeight);
document.body.appendChild(renderer.domElement);


// ************************** //
// Create the 3D scene
// ************************** //
const scene = new THREE.Scene();


// ************************** //
// Add camera
// ************************** //
const camera = new THREE.PerspectiveCamera(
    75,
    window.innerWidth / window.innerHeight,
    0.1,
    1000
);
camera.rotation.x = -(Math.PI / 4);
camera.position.set(0, 8, 8);


// ************************** //
// Draw Objects
// ************************** //

// PLANE
const planeGeometry = new THREE.PlaneGeometry(15, 15);
const planeMaterial = new THREE.MeshStandardMaterial({ color: 0xffffff });
const plane = new THREE.Mesh(planeGeometry, planeMaterial);
plane.rotation.set(-0.5 * Math.PI, 0, 0);

scene.add(plane);

// C UBE
const boxGeometry = new THREE.BoxGeometry(1,2,1);
const boxMaterial = new THREE.MeshStandardMaterial({ color: 0x00ff00 });
const cube = new THREE.Mesh(boxGeometry, boxMaterial);

scene.add(cube);

// SPHERE
const sphereGeometry = new THREE.SphereGeometry(2,30,30);
const sphereMaterial = new THREE.MeshStandardMaterial(
    { color: 0xff0000,
      wireframe: false
    });
const sphere = new THREE.Mesh(sphereGeometry, sphereMaterial);
sphere.position.set(4, 0, 0);

scene.add(sphere);


// ************************** //
// Add Animation to the Objects
// ************************** //
let step = 0;
let speed = 0.01;

function animate() {
    //cube
    cube.rotation.y += 0.01;

    //sphere
    step += speed;
    sphere.position.y = 5 * Math.abs(Math.sin(step));

    renderer.render(scene, camera);
}

renderer.setAnimationLoop(animate);


// ************************** //
// Light
// ************************** //
// AMBIENT LIGHT
const ambientLight = new THREE.AmbientLight(0x333333);
scene.add(ambientLight);

// DIRECTIONAL LIGHT
const directionalLight = new THREE.DirectionalLight(0xffffff, 0.5);
directionalLight.position.set(-30, 50, 0);
scene.add(directionalLight);

// SPOTLIGHT
const spotLight = new THREE.SpotLight(0xffffff, 0.5);
spotLight.position.set(-1, 2, 0);
scene.add(spotLight);


// ************************** //
// Shadows
// ************************** //
plane.receiveShadow = true;
cube.castShadow = true;
sphere.castShadow = true;
directionalLight.castShadow = true;
directionalLight.shadow.camera.top = 10;
spotLight.castShadow = true;
renderer.shadowMap.enabled = true;

// ************************** //
// Helpers
// ************************** //
// AXES HELPER
const axesHelper = new THREE.AxesHelper(5);
scene.add(axesHelper);

// GRID HELPER
const gridHelper = new THREE.GridHelper(15,15); 
scene.add(gridHelper);

// DIRECTIONAL LIGHT HELPER
const directionalLightHelper = new THREE.DirectionalLightHelper(directionalLight, 5);
scene.add(directionalLightHelper);

//SHADOW HELPER
const shadowHelper = new THREE.CameraHelper(directionalLight.shadow.camera);
scene.add(shadowHelper);

//SPOTLIGHT HELPER
const spotLightHelper = new THREE.SpotLightHelper(spotLight);
scene.add(spotLightHelper);

// ************************** //
renderer.render(scene, camera);