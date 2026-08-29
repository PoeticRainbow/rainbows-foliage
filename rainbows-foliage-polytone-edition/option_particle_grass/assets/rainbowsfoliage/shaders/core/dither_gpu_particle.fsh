#version 330

#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <polytone:gpu_particle.glsl>

uniform sampler2D Sampler0;

in float sphericalVertexDistance;
in float cylindricalVertexDistance;
in vec2 texCoord0;
in vec4 vertexColor;

out vec4 fragColor;

const int bayerPattern[16] = int[16](
    0, 8, 2, 10,
    12, 4, 14, 6,
    3, 11, 1, 9,
    15, 7, 13, 5
);

float bayerDither(ivec2 coord) {
    int x = coord.x & 3;
    int y = coord.y & 3;
    int index = y * 4 + x;
    return (float(bayerPattern[index]) + 0.5) / 16.0;
}

void main() {
    vec4 color = texture(Sampler0, texCoord0) * vertexColor * ColorModulator;

    if (color.a < AlphaCutoff) {
        discard;
    }

    if (color.a < 0.99) {
        float dither = bayerDither(ivec2(gl_FragCoord.xy));
        color.a *= dither;
    }

    if (color.a < AlphaCutoff) {
        discard;
    }

    fragColor = apply_fog(color, sphericalVertexDistance, cylindricalVertexDistance, FogEnvironmentalStart, FogEnvironmentalEnd, FogRenderDistanceStart, FogRenderDistanceEnd, FogColor);
}
