inputLeft = keyboard_check(vk_left);
inputRight = keyboard_check(vk_right);
inputUp = keyboard_check(vk_up);
inputDown = keyboard_check(vk_down);
inputWalk = keyboard_check(vk_control);
inputRun = keyboard_check(vk_shift);

//ALTER SPEED
if(inputWalk or inputRun){
	spd = abs((inputWalk*walkSpeed) - (inputRun*runSpeed));
}
else {
	spd = normalSpeed;
}

moveX = 0;
moveY = 0;

moveY = (inputDown - inputUp) * spd;
if(moveY == 0){
	moveX = (inputRight - inputLeft) * spd;
}

//Horizontal Collision
if(moveX != 0){
	if(place_meeting(x+moveX, y, objectCollisionTest))
	{
		repeat(abs(moveX))
		{
			if(!place_meeting(x+sign(moveX), y, objectCollisionTest))
			{ x += sign(moveX); }
			else {
				break; }
		}
		moveX = 0;
	}
}

//Vertical Collision
if(moveY != 0) {
	
	if(place_meeting(x, y+moveY, objectCollisionTest))
	{
		repeat(abs(moveY))
		{
			if(!place_meeting(x, y+sign(moveY), objectCollisionTest))
			{ y += sign(moveY); }
			else {
				break; }
		}
		moveY = 0;
	}
}

x += moveX;
y += moveY;