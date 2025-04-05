shader_type canvas_item;

uniform float scroll_speed = 0.05;
uniform float direction_change_speed = 0.5;

void vertex() {
    float angle = sin(TIME * direction_change_speed) * 3.14159;
    vec2 direction = vec2(cos(angle), sin(angle));
    UV += direction * scroll_speed * TIME;
}