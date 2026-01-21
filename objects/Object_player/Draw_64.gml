if (show_popup)
{
    draw_set_color(c_green);
    draw_rectangle(20, 20, 350, 80, false);

    draw_set_color(c_white);
    draw_text(40, 35, "LEVEL UP!");
    draw_text(40, 55, "Level " + string(player_level) + string("shooting speed is ") + string(shoot_delay));
}
