/*
:instance_move(dx:number, dy:number, obstacle:id):bool
//
instance_create(x:number, y:number, obj:index):
instance_exists(obj:index):bool
instance_number(obj:index):
instance_position(x:number, y:number, obj:index):
instance_nearest(x:number, y:number, obj:index):
instance_furthest(x:number, y:number, obj:index):
instance_place(x:number, y:number, obj:index):
:instance_destroy()
//
:motion_set(dir:number, speed:number)
:motion_add(dir:number, speed:number)
:place_free(x:number, y:number):bool
:place_empty(x:number, y:number):bool
:place_meeting(x:number, y:number, obj:index):bool
:place_snapped(hsnap:number, vsnap:number):bool
:move_random(hsnap:number, vsnap:number)
:move_snap(hsnap:number, vsnap:number)
:move_towards_point(x:number, y:number, sp:number)
:move_contact_solid(dir:number, maxdist:number)
:move_contact_all(dir:number, maxdist:number)
:move_outside_solid(dir:number, maxdist:number)
:move_outside_all(dir:number, maxdist:number)
:move_bounce_solid(advanced:bool)
:move_bounce_all(advanced:bool)
:move_wrap(hor:bool, vert:bool, margin:number)
:distance_to_point(x:number, y:number):
:distance_to_object(obj:index):
:position_empty(x:number, y:number):bool
:position_meeting(x:number, y:number, obj:index):bool
//
:collision_point(x:number, y:number, obj:index, prec:bool, notme:bool):
:collision_rectangle(x1:number, y1:number, x2:number, y2:number, obj:index, prec, notme):
:collision_circle(x1:number, y1:number, radius, obj:index, prec, notme):
:collision_ellipse(x1:number, y1:number, x2:number, y2:number, obj:index, prec, notme):
:collision_line(x1:number, y1:number, x2:number, y2:number, obj:index, prec, notme):
*/
