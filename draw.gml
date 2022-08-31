// This code goes into the draw event of the text box object

draw_self()
draw_set_font(font0)

// test typing animation bellow
if character_count < string_length(txt[current_page]) {
    character_count += 1
}
txt_print = string_copy(txt[current_page], 1, character_count)

// set color and location to print npc name
draw_set_color(c_red)
draw_text(x-100, y-50, "Mr. Smith")
 
// set color and location to print dialog text
draw_set_color(c_white)
draw_text_ext(x-135, y-37, txt_print, 13, 275)
