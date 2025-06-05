shader_type canvas_item;

void vertex() {
    float angle = sin(TIME * .5) * 3.14159;
    vec2 direction = vec2(cos(angle), sin(angle));
    UV += direction * .05 * TIME;
}