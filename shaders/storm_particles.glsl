async function loadShaderSource(url) {
    const response = await fetch(url);
    if (!response.ok) {
        console.error(`Failed to load shader: ${url}`);
    }
    return await response.text();
}

// Inside the main setup function:
async function initWeatherVisualizer() {
    // Fetch your custom shader file
    const customFragSource = await loadShaderSource('./shaders/storm_particles.glsl');
    
    // Pass it to the WebGL compiler (using the compile steps from the previous message)
    // const customShader = compileShader(gl, gl.FRAGMENT_SHADER, customFragSource);
}
