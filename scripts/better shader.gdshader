shader_type canvas_item;

uniform float scroll_speed = 5;
uniform float direction_change_speed = 0.1;

vec2 get_position(float t) {
    // Combine sine waves to create a pseudo-random smooth offset path
    float x = sin(t * direction_change_speed) +
              sin(t * direction_change_speed * 0.73 + 1.5) +
              sin(t * direction_change_speed * 1.41 + 3.7);

    float y = sin(t * direction_change_speed * 1.11 + 0.5) +
              sin(t * direction_change_speed * 0.67 + 2.3) +
              sin(t * direction_change_speed * 1.21 + 4.0);

    vec2 offset = vec2(x, y) * scroll_speed * 0.33; // scale to match feel
    return offset;
}

void fragment() {
    vec2 offset = get_position(TIME);
    vec4 tex = texture(TEXTURE, UV + offset);
    COLOR = tex;
}