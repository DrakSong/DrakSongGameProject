function step(q)
	--
	local t = (q.time or 0) + 1;
	q.time = t;
	q.image_angle = cos(t / 40) * 5 - 15;
	--
	q.of_interest.x = q.x;
	q.of_interest.y = q.ystart + sin(t / 40) * 7;
	--
	q.image_blend = merge_color(
		make_color_rgb(255, 255, 255),
		make_color_rgb(255, 220, 200),
		0.5 + 0.5 * cos(t / 12));
	-- 
	q.x = q.xstart;
	q.y = q.ystart + sin(t / 40) * 3;
	if (q.active ~= nil) then
		q.of_interest.x = q.x - sign(obj_player.x - q.x) * 3;
		local at = q.active;
		q.active = at + 1;
		local z;
		if (at <= 15) then
			z = 1 + sin(math.pi * at / 15) * 0.3;
			q.image_xscale = z;
			q.image_yscale = z;
		end
		if (at >= 8) then
			local e = q.splash;
			if (e == nil) then
				e = instance_create(q.x, q.y, obj_blank);
				e.sprite_index = spr_splash;
				q.splash = e;
			end
			z = 0.1 + (at - 8) * 0.05;
			e.image_xscale = z;
			e.image_yscale = z;
			e.image_alpha = clamp(1 - (at - 10) / 20, 0, 1);
		end
	else
		q.image_xscale = 1;
		q.image_yscale = 1;
		if (q:place_meeting(q.x, q.y, obj_player)) then
			q.active = 0;
			local sign = instance_nearest(q.xstart, q.ystart, obj_sign);
			if (sign.x ~= q.xstart or sign.y ~= q.ystart) then
				sign = instance_create(q.xstart, q.ystart, obj_sign);
			end
			sign.visible = false;
			sign.text = "Congratulations on finishing the demo!"
				.. "#You can continue trying things out here,"
				.. "#or get the actual extension from itch.io"
				.. "#or GameMaker Marketplace (F2 to open)"
		end
	end
end
obj_star.active = nil;