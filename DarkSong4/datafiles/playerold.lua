-- player.lua
function step(p)
	local spr = spr_player_stand;
	-- horizontal movement:
	local dx = gamepad_axis_value(0, gp_axislh);
	if (keyboard_check(vk_right)) then dx = dx + 1 end
	if (keyboard_check(vk_left)) then dx = dx - 1 end
	if (abs(dx) > 0.5 and p:instance_move(clamp(round(dx), -1, 1) * 5, 0, oParSolid)) then
		p.image_xscale = sign(dx);
		spr = spr_player_walk;
	end
	-- vertical speed:
	if (not p:place_meeting(p.x, p.y + 1, oParSolid)) then
		p.yspeed = p.yspeed + 0.5;
		spr = spr_player_jump;
	elseif (keyboard_check_pressed(vk_up) or gamepad_button_check(0, gp_face1)) then
		p.yspeed = -12;
	end
	-- vertical movement:
	if (not p:instance_move(0, p.yspeed, oParSolid)) then
		local dy = sign(p.yspeed);
		for i = 1, abs(p.yspeed) do
			if (not p:instance_move(0, dy, oParSolid)) then break end
		end
		p.yspeed = 0;
	end
	--
	p.sprite_index = spr;
end
