#version 460

in vec3 inPosition;

out vec3 outNormal;
out vec2 outUV;

void main() {
    gl_Position = vec4(inPosition, 1.0);
    outNormal = inNormal;
    outUV = inUV;
}