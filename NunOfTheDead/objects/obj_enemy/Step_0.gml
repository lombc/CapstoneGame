// Set depth to negative y.
// This will cause instances to draw from
// top to bottom.
depth = -y;

// Set direction towards the hero.
//direction = point_direction(x, y, obj_hero.x, obj_hero.y);

mp_linear_step_object(obj_hero.x, obj_hero.y, 0.5, obj_wall);

// If horizontal speed is NOT 0.
if(hspeed != 0)
{
	// Set our xscale to the sign of hspeed
	// (can only be -1 or 1 at this point).
	image_xscale = -sign(hspeed);
	image_yscale = 1;
}

// Handles collision with wall objects
if(place_meeting(x + hspeed, y, obj_wall))
{
	hspeed = 0;
}

if(place_meeting(x, y + vspeed, obj_wall))
{
	vspeed = 0;
}

