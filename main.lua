-- Hide the status bar 
display.setStatusBar(display.HiddenStatusBar);

-- Variables to Determine Center of Screen 
_W = display.contentWidth / 2;
_H = display.contentHeight / 2;


-- Place background image
local background = display.newImage ("images/street.png");
background.x = _W; 
background.y = _H;


-- Place ship image
local ship = display.newImage ("images/player.png"); 
ship.x = _W;
ship.y = 80;