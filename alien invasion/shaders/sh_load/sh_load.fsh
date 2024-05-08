//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_time;
uniform vec2 u_resolution;
uniform float u_gridSize;

void main() {
    vec2 grid_position = mod(gl_FragCoord.xy / u_resolution.xy * u_resolution.y, u_gridSize);
    float highlight = smoothstep(0.0, 1.5, sin(u_time + grid_position.x * 0.5) * cos(u_time + grid_position.y * 0.5));
    vec4 color = vec4(vec3(highlight), 1.0);
    gl_FragColor = color;
}