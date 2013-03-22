display.setStatusBar( display.HiddenStatusBar )


-- Variables to Determine Center of Screen 
_W = display.contentWidth / 2;
_H = display.contentHeight / 2;



local can_move = true
-- local baseline = 280

-- streetBg
-- This is doubled so we can slide it
-- When one of the streetBg images slides offscreen, we move it all the way to the right of the next one.
local streetBg = display.newImage( "street.png" )
streetBg:setReferencePoint( display.CenterLeftReferencePoint )
streetBg.x = 0
streetBg.y = 0

local streetBg2 = display.newImage( "street.png" )
streetBg2:setReferencePoint( display.CenterLeftReferencePoint )
streetBg2.x = 0
streetBg2.y = 480


-- A per-frame event to move the elements
local tPrevious = system.getTimer()
local function move(event)
	local tDelta = event.time - tPrevious
	tPrevious = event.time

	--print ("Delta: "..(tDelta))

	local yOffset = ( 0.2 * tDelta )

	streetBg.y = streetBg.y - yOffset
	streetBg2.y = streetBg2.y - yOffset

	--print ("Teste: "..(streetBg.y + streetBg.contentHeight))
	
	if (streetBg.y + streetBg.contentHeight-234) < 0 then
		streetBg:translate( 0, 480 * 2)
	end
	if (streetBg2.y + streetBg2.contentHeight-234) < 0 then
		streetBg2:translate( 0, 480 * 2)
	end

end

local function stop_background()
	streetBg.y = 0
	streetBg2.y = 0

	streetBg.y = 0
	streetBg2.y = 0
end


-- Place player image
local player = display.newImage ("player.png"); 
player.x = _W;
player.y = 80;

-- Set up player's speed
local playerMoveX = 0;
local playerMoveY = 0;
local speed = 6;

-- Place arrows on screen
local upArrow = display.newImage ("upArrow.png");
upArrow.x = 70;
upArrow.y = 387;

local downArrow = display.newImage ("downArrow.png");
downArrow.x = 70;
downArrow.y = 450;

local leftArrow = display.newImage ("leftArrow.png");
leftArrow.x = 30;
leftArrow.y = 420;

local rightArrow = display.newImage ("rightArrow.png");
rightArrow.x = 110;
rightArrow.y = 420;

local function update( event )
	if can_move then
		move( event )
	end

end


-- Move the player
local function movePlayer (event)
	player.x = player.x + playerMoveX;
	player.y = player.y + playerMoveY;
end

local function stopPlayer (event)
	if event.phase =="ended" then
		playerMoveX = 0;
		playerMoveY = 0;
	end
end

-- Arrow events
function upArrow:touch()
	if event.phase == 'began' then
		can_move = false
	elseif event.phase == 'ended' or event.phase == 'cancelled' then
		can_move = true
	end
end

function leftArrow:touch( event )
	if event.phase == 'began' then
		--can_move = false

		playerMoveX = -speed;
		playerMoveY = 0;

	elseif event.phase == 'ended' or event.phase == 'cancelled' then
		can_move = true
	end
end


function rightArrow:touch( event )
	if event.phase == 'began' then
		--can_move = false

		playerMoveX = speed;
		playerMoveY = 0;

	elseif event.phase == 'ended' or event.phase == 'cancelled' then
		can_move = true
	end
end


-- Keep spaceplayer boxed in by fake walls
local function fakeWalls (event)
	if player.x < 35 then
		player.x = 35
	end

	if player.x > 280 then
		player.x = 280
	end

	if player.y > 430 then
		player.y = 430
	end

	if player.y < 30 then
		player.y = 30
	end

	if speed < 0 then
		speed = 0
	end
end





-- Start everything moving
Runtime:addEventListener( "enterFrame", update );

-- Start movement
Runtime:addEventListener("enterFrame", movePlayer);

-- When no arrow is touched, stop player's movement
Runtime:addEventListener("touch", stopPlayer);

Runtime:addEventListener("enterFrame", fakeWalls);

upArrow:addEventListener( 'touch', up );
leftArrow:addEventListener( 'touch', left );
rightArrow:addEventListener( 'touch', right );



