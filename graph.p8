pico-8 cartridge // http://www.pico-8.com
version 29
__lua__

function _update()
	
end

function player_draw(s)
	if abs(s.vx) > 0.1 or abs(s.vy) > 0.1 then
		spr(flr(s.t/4)%5+1,s.x-4,s.y-4,1,1,s.vx < 0)
	else spr(1,s.x-4,s.y-4,1,1,s.vx < 0)
	end
end

function slime_draw(s)
	if abs(s.vx) > 0.1 or abs(s.vy) > 0.1 then
		spr(flr(s.t/7)%3+6,s.x-4,s.y-4,1,1,s.vx < 0)
	end
	be_tangible(s)
end

function slime_update(s)
	local delta_x = player.x - s.x
	local delta_y = player.y - s.y
	local motion_angle = atan2(delta_y,delta_x)
	s.vx += sin(motion_angle)*0.2
	s.vy += cos(motion_angle)*0.2
	be_tangible(s)
	push_others(s)
	enemy_hurt(s)
end

function skelet_draw(s)
	if abs(s.vx) > 0.1 or abs(s.vy) > 0.1 then
		spr(flr(s.t/7)%3+9,s.x-4,s.y-4,1,1,s.vx < 0)
	end
	be_tangible(s)
end

function skelet_update(s)
	local delta_x = player.x - s.x
	local delta_y = player.y - s.y
	local motion_angle = atan2(delta_y,delta_x)
	s.vx += sin(motion_angle)*0.2
	s.vy += cos(motion_angle)*0.2
	be_tangible(s)
	push_others(s)
	enemy_hurt(s)
end

function vaper_draw(s)
	if abs(s.vx) > 0.1 or abs(s.vy) > 0.1 then
		spr(flr(s.t/7)%3+9,s.x-4,s.y-4,1,1,s.vx < 0)
	end
	be_tangible(s)
end

function vaper_update(s)
	local delta_x = player.x - s.x
	local delta_y = player.y - s.y
	local motion_angle = atan2(delta_y,delta_x)
	s.vx += sin(motion_angle)*0.2
	s.vy += cos(motion_angle)*0.2
	be_tangible(s)
	push_others(s)
	enemy_hurt(s)
end

function oreshki_draw(s)
	if abs(s.vx) > 0.1 or abs(s.vy) > 0.1 then
		spr(flr(s.t/7)%3+9,s.x-4,s.y-4,1,1,s.vx < 0)
	end
	be_tangible(s)
end

function oreshki_update(s)
	local delta_x = player.x - s.x
	local delta_y = player.y - s.y
	local motion_angle = atan2(delta_y,delta_x)
	s.vx += sin(motion_angle)*0.2
	s.vy += cos(motion_angle)*0.2
	be_tangible(s)
	push_others(s)
	enemy_hurt(s)
end

function potato_draw(s)
	if abs(s.vx) > 0.1 or abs(s.vy) > 0.1 then
		spr(flr(s.t/7)%3+9,s.x-4,s.y-4,1,1,s.vx < 0)
	end
	be_tangible(s)
end

function potato_update(s)
	local delta_x = player.x - s.x
	local delta_y = player.y - s.y
	local motion_angle = atan2(delta_y,delta_x)
	s.vx += sin(motion_angle)*0.2
	s.vy += cos(motion_angle)*0.2
	be_tangible(s)
	push_others(s)
	enemy_hurt(s)
end

function chair_draw(s)
	if abs(s.vx) > 0.1 or abs(s.vy) > 0.1 then
		spr(flr(s.t/7)%3+9,s.x-4,s.y-4,1,1,s.vx < 0)
	end
	be_tangible(s)
end

function chair_update(s)
	local delta_x = player.x - s.x
	local delta_y = player.y - s.y
	local motion_angle = atan2(delta_y,delta_x)
	s.vx += sin(motion_angle)*0.2
	s.vy += cos(motion_angle)*0.2
	be_tangible(s)
	push_others(s)
	enemy_hurt(s)
end

function pepper_update(s)
	local delta_x = player.x - s.x
	local delta_y = player.y - s.y
	local motion_angle = atan2(delta_y,delta_x)
	s.vx += sin(motion_angle)*0.2
	s.vy += cos(motion_angle)*0.2
	be_tangible(s)
	push_others(s)
	enemy_hurt(s)
end

function pepper_draw(s)
	if abs(s.vx) > 0.1 or abs(s.vy) > 0.1 then
		spr(flr(s.t/7)%3+9,s.x-4,s.y-4,1,1,s.vx < 0)
	end
	be_tangible(s)
end

function bird_update(s)
	local delta_x = player.x - s.x
	local delta_y = player.y - s.y
	local motion_angle = atan2(delta_y,delta_x)
	s.vx += sin(motion_angle)*0.2
	s.vy += cos(motion_angle)*0.2
	be_tangible(s)
	push_others(s)
	enemy_hurt(s)
end

function bird_draw(s)
	if abs(s.vx) > 0.1 or abs(s.vy) > 0.1 then
		spr(flr(s.t/7)%3+9,s.x-4,s.y-4,1,1,s.vx < 0)
	end
	be_tangible(s)
end

spawn(15,15,slime_update,slime_draw,1)
spawn(12,12,skelet_update,skelet_draw,1)



__gfx__

__map__
0001010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0001010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000100000001000000000001010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000010100010101000101010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000010202020101010101010001010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000010200010101010101010001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000020201020201010101000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000202020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
