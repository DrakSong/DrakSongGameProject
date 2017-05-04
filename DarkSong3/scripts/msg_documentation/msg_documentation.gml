/*
------------------------------------
Dynamic Pop-up Text Box (by matharoo)
------------------------------------

--About--
Note: Works only with GMS2

These are pop-up text boxes that show up above your object depending on the condition you set.
There are two different text boxes here:

Dynamic Text Box: This one comes with a typewriter effect, where each letter appears one-by-one.
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
	msg_dynamic("Your message here");
}
else
{
	msg_stop();
}


Note: If you want the typewriter effect to show up only once (which is the first time the player accesses the message), remove the else part.

------------------------
Static Text Box - Usage:
------------------------

Draw event:

if (condition*)
{
	msg_static("Your message here");
}


*The condition should be for when you want the message to show up. So say you want the message to show up on mouse hover:
    if (position_meeting(mouse_x, mouse_y, id))
	{
		msg_static("Access help menu");
	}
------------------
Message Box Sprite
------------------
The sprites used for the message box (spr_msg_grid & spr_msg_arrow) can be modified, if done correctly.
spr_msg_grid: The size (48x48) and the format (9 16x16 blocks, with the edges covering half of the blocks and the corners covering a quarter) should stay the same.
spr_msg_arrow: The sprite's size (16x16) must be the same as well and the origin centered.

--------------------------------------------------------------------------
No credit necessary if used in a project, but will be sure appreciated!
--------------------------------------------------------------------------
*/