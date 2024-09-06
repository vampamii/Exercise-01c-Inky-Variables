/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Variable types: integer, float, boolean
 - Variable assignment
 - Printing variables
 - Variable checking
 
 In the assignment:
 - Add four more knots
 - Assign at least TWO new variables through player choices
 - Print at least one of the variables to the player in a passage
 - Check the value of a variable and have it do something
*/


VAR ex_name = ""
VAR drink_sips = 0

-> memory

== memory ==
While you dance with your friends in the middle of the dance floor you glimpse at a girl in the distance. She seems familiar she reminds you of your first love. What was her name again?
* [Marian]
~ ex_name = "Marian" 
-> dance_floor
* [Amalia] 
~ ex_name = "Amalia" 
-> dance_floor
* [Doris] 
~ ex_name = "Doris" 
-> dance_floor


== dance_floor ==
You made eyecontact with her for what felt like years. A ton of memories invaded you; she was your first everything. Somebody pulls your hand.
"Hey, are you okay?" 
* "Yeah, I'm sorry, I was zonning out." -> stay
* "I have to use the restroom, I'm not feeling well" -> walk_bathroom
+ [Take a sip] -> Take_a_sip

== Take_a_sip ==
~ drink_sips = drink_sips +1
You take a sip of your drink. -> dance_floor

== stay ==
Your girlfriend Laura starts dancing with you. But you can't stop thinking about {ex_name}.
* Go talk to her. -> go_ex
* Stay with Laura. -> dialogue_Laura

== dialogue_Laura ==
"Are you sure you're okay?"
"Yeah, I'm just not feeling well."
"Do you wanna go home?"
"Yeah, let's do that." -> reflection_ending


== walk_bathroom ==
You walk towards the restroom and as you hoped so, you meet with {ex_name} on your way.
* Talk to her. -> go_ex
* Ignore her and go to the bathroom. -> go_bathroom 

== go_bathroom ==
You enter the bathroom and wash your face. You realize you've drank too much, everything spins around you. How much have you been drinking?
You've had {drink_sips} sips.
You start feeling dizzy. You don't have control of your body anymore, taking you to fall on the floor and remain unconscious.
-> END


== go_ex ==
"Hey, {ex_name} how have you been?"
" Oh, hi. I've been good. It's nice seeing you!"
You realize her approach was very different from yours. You then decide to:
* Say goodbye and find your group. -> reflection_ending
* Try to continue the conversation. -> go_outside

== reflection_ending ==
Despite the good memories, you realize that {ex_name} is in the past. You have a life with Laura, but you can't get her off your mind. I guess you need more time to forget her. Will you ever be able to?
-> END

== go_outside ==
"Do you wanna meet me outside? I have something to tell you."
"Okay"

You grab her by the hand and lead her outside. It was a cold night and the moon was lighting the dark sky. 

"I'm sorry I pulled you like this. I just can't stop thinking about you."
"I know, I feel the same. I've been trying to ignore the feeling, but it almost feels impossible to do so."

You get lost in her green eyes and she starts looking at you too. You both embrace your lips in a candid kiss.

I guess you'll never forget {ex_name} after all.

-> END
















