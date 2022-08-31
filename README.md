# GML-text-box-2d-rpg
fully working text box with text type animation and multiple lines of dialog for 2d game

This is a fully working dialog box for a 2d game made on Game Maker Studio. For this code to work, you need to create your own npc and set an event (such as key press) to create the text box object.

Once the text box object is created it uses the following mechanics:
On the create event:
It containes an array of the different dialog pages;
It declares the variables current_page (for switching between pages) and character_count (for making the text type animation)

On the step event:
Checks if the space bar is pressed. If pressed it checks if character_count is less than string length (it other words checks if text type animation is done). If text type animation is not done then character_count = string_length (meaning the text type animation is skipped and the dialog text is displayed instantly). When the space bar is pressed when the text type animation is complete (character_count == string_length) then current_page += 1 (meaning we switch to the next page) and character_count = 0 (reseting this variable will restart the text type animation for the next page); Else if there are no more pages then pressing the space bar will destroy the text box object and end the dialog;

On the draw event:
This is where we draw everything. First the text box. 
Then: 
if character_count < string_length(txt[current_page]) {
    character_count += 1
}
The above code means we add one to the character_count variable and thats how we make the text type animation;
Then we make: txt_print = string_copy(txt[current_page], 1, character_count) which gets the actual text from the array in the create event;

And then we simply draw the contents of the text box (npc name and actual dialog text);
