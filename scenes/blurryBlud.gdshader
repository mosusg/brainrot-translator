shader_type canvas_item;

uniform sampler2D screen_texture : hint_screen_texture;
uniform int blur_radius : hint_range(1, 32) = 8;
uniform float blur_strength : hint_range(0.1, 10.0) = 1.0;
uniform float overlay_alpha : hint_range(0.0, 1.0) = 0.5;

const int MAX_BLUR_RADIUS = 32;
const float gaussian_weights[MAX_BLUR_RADIUS] = float[MAX_BLUR_RADIUS](
    0.039940, 0.039741, 0.039149, 0.038183, 0.036869, 0.035247, 0.033361, 0.031261,
    0.029002, 0.026639, 0.024225, 0.021810, 0.019441, 0.017157, 0.014990, 0.012967,
    0.011105, 0.009416, 0.007904, 0.006569, 0.005405, 0.004403, 0.003552, 0.002836,
    0.002242, 0.001755, 0.001360, 0.001043, 0.000792, 0.000596, 0.000444, 0.000327
);

void fragment() {
    vec2 resolution = vec2(textureSize(screen_texture, 0));
    vec2 uv = SCREEN_UV;
    vec4 color = vec4(0.0);
    float total_weight = 0.0;

    // Horizontal blur pass
    for (int i = -blur_radius; i <= blur_radius; i++) {
        float offset = float(i);
        float weight = gaussian_weights[abs(i)];
        vec2 sample_uv = uv + vec2(offset / resolution.x, 0.0);
        color += texture(screen_texture, sample_uv) * weight;
        total_weight += weight;
    }

    color /= total_weight;

    // Vertical blur pass
    vec4 vert_color = vec4(0.0);
    total_weight = 0.0;

    for (int i = -blur_radius; i <= blur_radius; i++) {
        float offset = float(i);
        float weight = gaussian_weights[abs(i)];
        vec2 sample_uv = uv + vec2(0.0, offset / resolution.y);
        vert_color += texture(screen_texture, sample_uv) * weight;
        total_weight += weight;
    }

    vert_color /= total_weight;

    // Combine horizontal and vertical blurs
    vec4 final_color = (color + vert_color) * 0.5;

    // Apply overlay alpha
    COLOR = vec4(final_color.rgb, overlay_alpha);
}
