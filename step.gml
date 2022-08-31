// This code goes into the step event of the text box object

// skip dialogue + page swap
if keyboard_check_pressed (vk_space){
    if character_count < string_length (txt[current_page]){
        character_count = string_length (txt[current_page]) 
    } // The above code will skip the text type animation when the space key is pressed.
    else if current_page+1 < array_length_1d(txt){
        current_page += 1
        character_count = 0
    } // The above code will swap to the next dialog page and reset character_count to allow text type animation to restart
    else {
        instance_destroy()  
    }
}
