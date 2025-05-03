#version 460

layout(location = 0) out vec4 outColor;

in vec3 outNormal;
in vec2 outUV;

void main() {
    outColor = vec4(1.0, 0.0, 0.0, 1.0);
}