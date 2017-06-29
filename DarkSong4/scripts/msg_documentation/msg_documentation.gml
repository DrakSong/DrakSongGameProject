/*
------------------------------------
Dynamic Pop-up Text Box (by matharoo)
------------------------------------

--About--

These are pop-up text boxes that show up above your object depending on the condition you set.
There are three different text boxes here:

Dynamic Text Box: This one comes with a typewriter effect, where each letter appears one-by-one.
Multi-Dynamic Text Box: Same as the first one, but takes an array containing multiple messages that appear one-by-one when you press a key.
Static Text Box: Without typewriter effect, text comes up instantly.

The scripts are commented. Feel free to tweak them.

--Usage--
Use these scripts in the Draw event of the object you want to show the message above.
Functions like draw_set_font(), draw_set_color() etc. may be used to change the appearance, but changing the text alignment would only mess things up.
The correct alignments for these scripts are:

Horizontal: Left
Vertical: Top

If your text alignment is different**, use this code in the same Draw event as the script call, and before it:
draw_set_halign(fa_left);
draw_set_valign(fa_top);

**You can know that it's your text alignment causing a problem when the text appears out of the box.

-------------------------
Dynamic Text Box - Usage:
-------------------------

Draw event:

if (condition*)
{
	msg_dynamic("Your message here", speed_key_optional);
}
else
{
	msg_stop();
}

speed_key_optional: As it says, this argument is completely optional. It is used to speed up the text. So say if you want to speed it up
					when you hold Shift, type "vk_shift" into the argument. You can also use ord().

Note: If you want the typewriter effect to show up only once (which is the first time the player opens the message), remove the else part.

-------------------------
Multi-Dynamic Text Box - Usage:
-------------------------

Draw event:

if (condition*)
{
	msg_dynamic_multi(array, key);
}
else
{
	msg_stop();
}

array: It should be a simple array with more than one message in it. Just type the array name without any [square brackets].
condition: It is the key that moves the dialogue to the next message in the array (if there is one), only when the current message has
			been completely shown. So say if you want to move to the next message on pressing enter, type "vk_enter" into
			that argument. This key will also be used to speed up the text when you hold it. You can also use ord().

------------------------
Static Text Box - Usage:
------------------------

Draw event:

if (condition*)
{
	msg_static("Your message here");
}

-----
Note:
-----

*The condition should be for when you want the message to show up. So say you want the message to show up on mouse hover:
    if (position_meeting(mouse_x, mouse_y, id))
	{
		msg_static("Access help menu");
	}
------------------
Message Box Sprite
------------------
The sprites used for the message box (spr_msg_grid, spr_msg_arrow & spr_msg_more) can be modified, if done correctly.
spr_msg_grid: The size (48x48) and the format (9 16x16 blocks, with the edges covering half of the blocks and the corners covering a quarter) should stay the same.
spr_msg_arrow: The sprite's size (16x16) must be the same as well and the origin centered.
spr_msg_more: It's a 16x16 sprite that shows up on the bottom-right corner of the text box when you have to press a button to go to the next message.
				The first 8x8 block (top-left) of the sprite will appear inside the text box.

--------------------------------------------------------------------------
No credit necessary if used in a project, but will sure be appreciated!
--------------------------------------------------------------------------
*/