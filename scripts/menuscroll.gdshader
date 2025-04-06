shader_type canvas_item;



uniform float scroll_speed = 0.05;
uniform float direction_change_speed = 0.5;

vec2 get_direction(float t) {
    // Generate a smooth pseudo-random angle
    float angle = (
        sin(t * direction_change_speed) +
        sin(t * direction_change_speed * 1.37 + 2.0) +
        sin(t * direction_change_speed * 0.73 + 4.5)
    ) * 1.0;

    return vec2(cos(angle), sin(angle));
}

vec2 get_position(float t) {
    // Integrate the direction over time using small time steps
    // This simulates movement along a smooth random path

    float dt = 0.1; // Step size for integration
    int steps = int(t / dt);
    float remainder = mod(t, dt);

    vec2 pos = vec2(0.0);
    for (int i = 0; i < steps; i++) {
        float sample_t = float(i) * dt;
        vec2 dir = get_direction(sample_t);
        pos += dir * scroll_speed * dt;
    }

    // Add the final fractional step
    vec2 final_dir = get_direction(t);
    pos += final_dir * scroll_speed * remainder;

    return pos;
}

void fragment() {
    vec2 offset = get_position(TIME);
    vec4 tex = texture(TEXTURE, UV + offset);
    COLOR = tex;
}