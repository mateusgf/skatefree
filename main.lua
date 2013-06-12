display.setStatusBar( display.HiddenStatusBar )
local physics = require 'physics'
physics.start()
physics.setGravity(0,0)

-- Variables to Determine Center of Screen 
_W = display.contentWidth / 2
_H = display.contentHeight / 2

-- Velocidade padrão do background
local speed_background = 10

-- Flag para determinar se o background deve mover
local can_move = true

-- Label Scores
local scores = 0;

-- Label Life
local life = 10;


-- streetBg
local streetBg = display.newImage( "images/street.png" )
streetBg:setReferencePoint( display.CenterLeftReferencePoint )
streetBg.x = 0
streetBg.y = 0

local streetBg2 = display.newImage( "images/street.png" )
streetBg2:setReferencePoint( display.CenterLeftReferencePoint )
streetBg2.x = 0
streetBg2.y = 480



-- Group de rampas

local rampas = display.newGroup()

local rampa1 = display.newImage('images/rampa02.png')
rampa1:setReferencePoint( display.CenterLeftReferencePoint )
rampa1.type = 'rampa'
rampa1.name = 'rampa2'
rampa1.x = 80
rampa1.y = 480
physics.addBody(rampa1, 'static')

local rampa2 = display.newImage('images/rampa01.png')
rampa2:setReferencePoint( display.CenterLeftReferencePoint )
rampa2.type = 'rampa'
rampa2.name = 'rampa2'
rampa2.x = 200
rampa2.y = 400
physics.addBody(rampa2, 'static')

local rampa3 = display.newImage('images/rampa03.png')
rampa3:setReferencePoint( display.CenterLeftReferencePoint )
rampa3.type = 'rampa'
rampa3.name = 'rampa3'
rampa3.x = 150
rampa3.y = 600
physics.addBody(rampa3, 'static')

local rampa4 = display.newImage('images/rampa02.png')
rampa4:setReferencePoint( display.CenterLeftReferencePoint )
rampa4.type = 'rampa'
rampa4.name = 'rampa4'
rampa4.x = 150
rampa4.y = 1200
physics.addBody(rampa4, 'static')

local rampa5 = display.newImage('images/rampa02.png')
rampa5:setReferencePoint( display.CenterLeftReferencePoint )
rampa5.type = 'rampa'
rampa5.name = 'rampa5'
rampa5.x = 50
rampa5.y = 1000
physics.addBody(rampa5, 'static')

local rampa6 = display.newImage('images/rampa01.png')
rampa6:setReferencePoint( display.CenterLeftReferencePoint )
rampa6.type = 'rampa'
rampa6.name = 'rampa6'
rampa6.x = 200
rampa6.y = 1700
physics.addBody(rampa6, 'static')

local rampa7 = display.newImage('images/rampa03.png')
rampa7:setReferencePoint( display.CenterLeftReferencePoint )
rampa7.type = 'rampa'
rampa7.name = 'rampa7'
rampa7.x = 50
rampa7.y = 1700
physics.addBody(rampa7, 'static')

local rampa8 = display.newImage('images/rampa01.png')
rampa8:setReferencePoint( display.CenterLeftReferencePoint )
rampa8.type = 'rampa'
rampa8.name = 'rampa8'
rampa8.x = 100
rampa8.y = 2250
physics.addBody(rampa8, 'static')

local rampa9 = display.newImage('images/rampa01.png')
rampa9:setReferencePoint( display.CenterLeftReferencePoint )
rampa9.type = 'rampa'
rampa9.name = 'rampa9'
rampa9.x = 50
rampa9.y = 2450
physics.addBody(rampa9, 'static')

local rampa10 = display.newImage('images/rampa01.png')
rampa10:setReferencePoint( display.CenterLeftReferencePoint )
rampa10.type = 'rampa'
rampa10.name = 'rampa10'
rampa10.x = 220
rampa10.y = 2500
physics.addBody(rampa10, 'static')

local rampa11 = display.newImage('images/rampa03.png')
rampa11:setReferencePoint( display.CenterLeftReferencePoint )
rampa11.type = 'rampa'
rampa11.name = 'rampa11'
rampa11.x = 50
rampa11.y = 2750
physics.addBody(rampa11, 'static')

local rampa12 = display.newImage('images/rampa02.png')
rampa12:setReferencePoint( display.CenterLeftReferencePoint )
rampa12.type = 'rampa'
rampa12.name = 'rampa12'
rampa12.x = 80
rampa12.y = 3000
physics.addBody(rampa12, 'static')


local rampa13 = display.newImage('images/rampa01.png')
rampa13:setReferencePoint( display.CenterLeftReferencePoint )
rampa13.type = 'rampa'
rampa13.name = 'rampa13'
rampa13.x = 160
rampa13.y = 2990
physics.addBody(rampa13, 'static')

local rampa14 = display.newImage('images/rampa02.png')
rampa14:setReferencePoint( display.CenterLeftReferencePoint )
rampa14.type = 'rampa'
rampa14.name = 'rampa14'
rampa14.x = 60
rampa14.y = 3500
physics.addBody(rampa14, 'static')

local rampa15 = display.newImage('images/rampa01.png')
rampa15:setReferencePoint( display.CenterLeftReferencePoint )
rampa15.type = 'rampa'
rampa15.name = 'rampa15'
rampa15.x = 120
rampa15.y = 3700
physics.addBody(rampa15, 'static')

local rampa16 = display.newImage('images/rampa03.png')
rampa16:setReferencePoint( display.CenterLeftReferencePoint )
rampa16.type = 'rampa'
rampa16.name = 'rampa16'
rampa16.x = 60
rampa16.y = 4000
physics.addBody(rampa16, 'static')

local rampa17 = display.newImage('images/rampa02.png')
rampa17:setReferencePoint( display.CenterLeftReferencePoint )
rampa17.type = 'rampa'
rampa17.name = 'rampa17'
rampa17.x = 220
rampa17.y = 4970
physics.addBody(rampa17, 'static')

local rampa18 = display.newImage('images/rampa01.png')
rampa18:setReferencePoint( display.CenterLeftReferencePoint )
rampa18.type = 'rampa'
rampa18.name = 'rampa18'
rampa18.x = 50
rampa18.y = 5000
physics.addBody(rampa18, 'static')

local rampa19 = display.newImage('images/rampa01.png')
rampa19:setReferencePoint( display.CenterLeftReferencePoint )
rampa19.type = 'rampa'
rampa19.name = 'rampa19'
rampa19.x = 110
rampa19.y = 5150
physics.addBody(rampa19, 'static')

local rampa20 = display.newImage('images/rampa03.png')
rampa20:setReferencePoint( display.CenterLeftReferencePoint )
rampa20.type = 'rampa'
rampa20.name = 'rampa20'
rampa20.x = 60
rampa20.y = 5500
physics.addBody(rampa20, 'static')

local rampa21 = display.newImage('images/rampa02.png')
rampa21:setReferencePoint( display.CenterLeftReferencePoint )
rampa21.type = 'rampa'
rampa21.name = 'rampa21'
rampa21.x = 160
rampa21.y = 4600
physics.addBody(rampa21, 'static')

local rampa22 = display.newImage('images/rampa03.png')
rampa22:setReferencePoint( display.CenterLeftReferencePoint )
rampa22.type = 'rampa'
rampa22.name = 'rampa22'
rampa22.x = 190
rampa22.y = 5900
physics.addBody(rampa22, 'static')

local rampa23 = display.newImage('images/rampa01.png')
rampa23:setReferencePoint( display.CenterLeftReferencePoint )
rampa23.type = 'rampa'
rampa23.name = 'rampa23'
rampa23.x = 60
rampa23.y = 6050
physics.addBody(rampa23, 'static')
 

rampas:insert(rampa1)
rampas:insert(rampa2)
rampas:insert(rampa3)
rampas:insert(rampa4)
rampas:insert(rampa5)
rampas:insert(rampa6)
rampas:insert(rampa7)
rampas:insert(rampa8)
rampas:insert(rampa9)
rampas:insert(rampa10)
rampas:insert(rampa11)
rampas:insert(rampa12)
rampas:insert(rampa13)
rampas:insert(rampa14)
rampas:insert(rampa15)
rampas:insert(rampa16)
rampas:insert(rampa17)
rampas:insert(rampa18)
rampas:insert(rampa19)
rampas:insert(rampa20)
rampas:insert(rampa21)
rampas:insert(rampa22)
rampas:insert(rampa23)


-- grupo de obstaculos

local obstaculos = display.newGroup()

local obstaculo1 = display.newImage('images/obstaculo01.png')
obstaculo1:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo1.type = 'obstaculo'
obstaculo1.name = 'obstaculo1'
obstaculo1.x = 50
obstaculo1.y = 1200
physics.addBody(obstaculo1, 'static')

local obstaculo2 = display.newImage('images/obstaculo02.png')
obstaculo2:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo2.type = 'obstaculo'
obstaculo2.name = 'obstaculo2'
obstaculo2.x = 100
obstaculo2.y = 1000
physics.addBody(obstaculo2, 'static')

local obstaculo3 = display.newImage('images/obstaculo01.png')
obstaculo3:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo3.type = 'obstaculo'
obstaculo3.name = 'obstaculo3'
obstaculo3.x = 200
obstaculo3.y = 1500
physics.addBody(obstaculo3, 'static')

local obstaculo4 = display.newImage('images/obstaculo02.png')
obstaculo4:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo4.type = 'obstaculo'
obstaculo4.name = 'obstaculo4'
obstaculo4.x = 100
obstaculo4.y = 1800
physics.addBody(obstaculo4, 'static')


local obstaculo5 = display.newImage('images/obstaculo02.png')
obstaculo5:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo5.type = 'obstaculo'
obstaculo5.name = 'obstaculo5'
obstaculo5.x = 100
obstaculo5.y = 2300
physics.addBody(obstaculo5, 'static')

local obstaculo6 = display.newImage('images/obstaculo02.png')
obstaculo6:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo6.type = 'obstaculo'
obstaculo6.name = 'obstaculo6'
obstaculo6.x = 50
obstaculo6.y = 2600
physics.addBody(obstaculo6, 'static')

local obstaculo7 = display.newImage('images/obstaculo01.png')
obstaculo7:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo7.type = 'obstaculo'
obstaculo7.name = 'obstaculo7'
obstaculo7.x = 210
obstaculo7.y = 2700
physics.addBody(obstaculo7, 'static')

local obstaculo8 = display.newImage('images/obstaculo01.png')
obstaculo8:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo8.type = 'obstaculo'
obstaculo8.name = 'obstaculo8'
obstaculo8.x = 160
obstaculo8.y = 3060
physics.addBody(obstaculo8, 'static')

local obstaculo9 = display.newImage('images/obstaculo02.png')
obstaculo9:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo9.type = 'obstaculo'
obstaculo9.name = 'obstaculo9'
obstaculo9.x = 70
obstaculo9.y = 3100
physics.addBody(obstaculo9, 'static')

local obstaculo10 = display.newImage('images/obstaculo03.png')
obstaculo10:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo10.type = 'obstaculo'
obstaculo10.name = 'obstaculo10'
obstaculo10.x = 100
obstaculo10.y = 3200
physics.addBody(obstaculo10, 'static')

local obstaculo11 = display.newImage('images/obstaculo03.png')
obstaculo11:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo11.type = 'obstaculo'
obstaculo11.name = 'obstaculo11'
obstaculo11.x = 50
obstaculo11.y = 3400
physics.addBody(obstaculo11, 'static')

local obstaculo12 = display.newImage('images/obstaculo01.png')
obstaculo12:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo12.type = 'obstaculo'
obstaculo12.name = 'obstaculo12'
obstaculo12.x = 200
obstaculo12.y = 3400
physics.addBody(obstaculo12, 'static')

local obstaculo13 = display.newImage('images/obstaculo01.png')
obstaculo13:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo13.type = 'obstaculo'
obstaculo13.name = 'obstaculo13'
obstaculo13.x = 190
obstaculo13.y = 3600
physics.addBody(obstaculo13, 'static')

local obstaculo14 = display.newImage('images/obstaculo02.png')
obstaculo14:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo14.type = 'obstaculo'
obstaculo14.name = 'obstaculo14'
obstaculo14.x = 40
obstaculo14.y = 3800
physics.addBody(obstaculo14, 'static')

local obstaculo15 = display.newImage('images/obstaculo01.png')
obstaculo15:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo15.type = 'obstaculo'
obstaculo15.name = 'obstaculo15'
obstaculo15.x = 200
obstaculo15.y = 3800
physics.addBody(obstaculo14, 'static')

local obstaculo16 = display.newImage('images/obstaculo04.png')
obstaculo16:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo16.type = 'obstaculo'
obstaculo16.name = 'obstaculo16'
obstaculo16.x = 120
obstaculo16.y = 3950
physics.addBody(obstaculo16, 'static')

local obstaculo17 = display.newImage('images/obstaculo05.png')
obstaculo17:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo17.type = 'obstaculo'
obstaculo17.name = 'obstaculo17'
obstaculo17.x = 180
obstaculo17.y = 4200
physics.addBody(obstaculo17, 'static')

local obstaculo18 = display.newImage('images/obstaculo06.png')
obstaculo18:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo18.type = 'obstaculo'
obstaculo18.name = 'obstaculo18'
obstaculo18.x = 150
obstaculo18.y = 4400
physics.addBody(obstaculo18, 'static')

local obstaculo19 = display.newImage('images/obstaculo06.png')
obstaculo19:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo19.type = 'obstaculo'
obstaculo19.name = 'obstaculo19'
obstaculo19.x = 50
obstaculo19.y = 4600
physics.addBody(obstaculo19, 'static')

local obstaculo20 = display.newImage('images/obstaculo07.png')
obstaculo20:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo20.type = 'obstaculo'
obstaculo20.name = 'obstaculo20'
obstaculo20.x = 80
obstaculo20.y = 4700
physics.addBody(obstaculo20, 'static')

local obstaculo21 = display.newImage('images/obstaculo10.png')
obstaculo21:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo21.type = 'obstaculo'
obstaculo21.name = 'obstaculo21'
obstaculo21.x = 150
obstaculo21.y = 4900
physics.addBody(obstaculo21, 'static')

local obstaculo22 = display.newImage('images/obstaculo10.png')
obstaculo22:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo22.type = 'obstaculo'
obstaculo22.name = 'obstaculo22'
obstaculo22.x = 200
obstaculo22.y = 5055
physics.addBody(obstaculo22, 'static')

local obstaculo23 = display.newImage('images/obstaculo05.png')
obstaculo23:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo23.type = 'obstaculo'
obstaculo23.name = 'obstaculo23'
obstaculo23.x = 50
obstaculo23.y = 5120
physics.addBody(obstaculo23, 'static')

local obstaculo24 = display.newImage('images/obstaculo05.png')
obstaculo24:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo24.type = 'obstaculo'
obstaculo24.name = 'obstaculo24'
obstaculo24.x = 75
obstaculo24.y = 5120
physics.addBody(obstaculo24, 'static')

local obstaculo25 = display.newImage('images/obstaculo04.png')
obstaculo25:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo25.type = 'obstaculo'
obstaculo25.name = 'obstaculo25'
obstaculo25.x = 200
obstaculo25.y = 5220
physics.addBody(obstaculo25, 'static')

local obstaculo26 = display.newImage('images/obstaculo05.png')
obstaculo26:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo26.type = 'obstaculo'
obstaculo26.name = 'obstaculo26'
obstaculo26.x = 50
obstaculo26.y = 5320
physics.addBody(obstaculo26, 'static')

local obstaculo27 = display.newImage('images/obstaculo05.png')
obstaculo27:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo27.type = 'obstaculo'
obstaculo27.name = 'obstaculo27'
obstaculo27.x = 60
obstaculo27.y = 5900
physics.addBody(obstaculo27, 'static')

local obstaculo28 = display.newImage('images/obstaculo07.png')
obstaculo28:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo28.type = 'obstaculo'
obstaculo28.name = 'obstaculo28'
obstaculo28.x = 130
obstaculo28.y = 6200
physics.addBody(obstaculo28, 'static')

local obstaculo29 = display.newImage('images/obstaculo10.png')
obstaculo29:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo29.type = 'obstaculo'
obstaculo29.name = 'obstaculo29'
obstaculo29.x = 40
obstaculo29.y = 6400
physics.addBody(obstaculo29, 'static')

local obstaculo30 = display.newImage('images/obstaculo04.png')
obstaculo30:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo30.type = 'obstaculo'
obstaculo30.name = 'obstaculo30'
obstaculo30.x = 210
obstaculo30.y = 6600
physics.addBody(obstaculo30, 'static')

local obstaculo31 = display.newImage('images/obstaculo02.png')
obstaculo31:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo31.type = 'obstaculo'
obstaculo31.name = 'obstaculo31'
obstaculo31.x = 110
obstaculo31.y = 6750
physics.addBody(obstaculo31, 'static')

local obstaculo32 = display.newImage('images/obstaculo03.png')
obstaculo32:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo32.type = 'obstaculo'
obstaculo32.name = 'obstaculo32'
obstaculo32.x = 40
obstaculo32.y = 6980
physics.addBody(obstaculo32, 'static')


obstaculos:insert(obstaculo1)
obstaculos:insert(obstaculo2)
obstaculos:insert(obstaculo3)
obstaculos:insert(obstaculo4)
obstaculos:insert(obstaculo5)
obstaculos:insert(obstaculo6)
obstaculos:insert(obstaculo7)
obstaculos:insert(obstaculo8)
obstaculos:insert(obstaculo9)
obstaculos:insert(obstaculo10)
obstaculos:insert(obstaculo11)
obstaculos:insert(obstaculo12)
obstaculos:insert(obstaculo13)
obstaculos:insert(obstaculo14)
obstaculos:insert(obstaculo15)
obstaculos:insert(obstaculo16)
obstaculos:insert(obstaculo17)
obstaculos:insert(obstaculo18)
obstaculos:insert(obstaculo19)
obstaculos:insert(obstaculo20)
obstaculos:insert(obstaculo21)
obstaculos:insert(obstaculo22)
obstaculos:insert(obstaculo23)
obstaculos:insert(obstaculo24)
obstaculos:insert(obstaculo25)
obstaculos:insert(obstaculo26)
obstaculos:insert(obstaculo27)
obstaculos:insert(obstaculo28)
obstaculos:insert(obstaculo29)
obstaculos:insert(obstaculo30)
obstaculos:insert(obstaculo31)
obstaculos:insert(obstaculo32)


local function move_rampa(yOffset)
	for i = 1, rampas.numChildren, 1 do
		rampas[i].y = rampas[i].y - yOffset
	end
end

local function move_obstaculo(yOffset)
	for i = 1, obstaculos.numChildren, 1 do
		obstaculos[i].y = obstaculos[i].y - yOffset
	end
end

-- A per-frame event to move the elements
local tPrevious = system.getTimer()
local function move(event, speed_background)

	local tDelta = event.time - tPrevious
	tPrevious = event.time

	-- print ("Delta: "..(tDelta))

	local yOffset = ( 0.2 * tDelta ) + speed_background


	-- move rampa
	move_rampa(yOffset)
	move_obstaculo(yOffset)


	streetBg.y = streetBg.y - yOffset
	streetBg2.y = streetBg2.y - yOffset

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


-- TABLE QUE GUARDA OS DETALHES DO SPRITE SHEET

local data_sheet = {
	width = 76,
	height = 76,
	sheetContentWidth = 228,
	sheetContentHeight = 228,
	numFrames = 9
}


-- TABLE QUE GUARDA OUTRAS TABLES COM O INTUITO DE ARMAZENAR OS MOVIMENTOS DO PERSONAGEM

local data_sprite = {
	{
		name = 'running_down_left',
		start = 1,
		count = 1,
		time = 700
	},
	{
		name = 'running_down_right',
		start = 2,
		count = 1,
		time = 700
	},
	{
		name = 'running_left',
		start = 3,
		count = 1,
		time = 700
	},
	{
		name = 'running_right',
		start = 4,
		count = 1,
		time = 700
	},
	{
		name = 'jump_left',
		frames = { 5,6,5,1},
		time = 600,
		loopCount = 1
	},
	{
		name = 'jump_right',
		frames = { 7,8,7,2},
		time = 600,
		loopCount = 1
	}
}


player_sheet = graphics.newImageSheet('images/player_sprites.png', data_sheet)
player = display.newSprite(player_sheet, data_sprite)
player.x = _W
player.y = 80
player.x_speed = 0
player.y_speed = 0
player.name = 'player'
player.direction = 'left'
player.status = 'ground'

rectShape = { 0,-5, 5,-10, 13,14, -13,14, -5,-10 }
physics.addBody(player, {isSensor = true, shape=rectShape})
player.bodyType = "dynamic"


-- Place arrows on screen
-- local upArrow = display.newImage ("images/upArrow.png")
-- upArrow.x = 70
-- upArrow.y = 387

-- local downArrow = display.newImage ("images/downArrow.png")
-- downArrow.x = 70
-- downArrow.y = 450

local leftArrow = display.newImage ("images/leftArrow.png")
leftArrow.x = 30
leftArrow.y = 420

local rightArrow = display.newImage ("images/rightArrow.png")
rightArrow.x = 110
rightArrow.y = 420


local function update( event )
	if can_move then
		move( event, speed_background )
	end
end


-- Move the player
local function movePlayer (event)
	player.x = player.x + player.x_speed
	player.y = player.y + player.y_speed
end


-- REMOVER FUNCAO ABAIXO!
local function stopPlayer (event)
	if event.phase =="ended" then
		-- player.x = 0
		-- player.y = 0
	end
end


-- Arrow events
-- function upArrow:touch(event)
-- 	if event.phase == 'began' then
-- 		can_move = false
-- 	end
-- end


-- function downArrow:touch( event )
-- 		can_move = true

-- 		if event.phase == 'began' then

-- 			-- speed_background = 10


-- 			-- TESTE JUMP
-- 			if player.direction == 'left' then
-- 				speed_background = 3
-- 				player.x_speed = 0
-- 				player:setSequence('jump_left')
-- 				player:play()
-- 			elseif player.direction == 'right' then
-- 				speed_background = 3
-- 				player.x_speed = 0
-- 				player:setSequence('jump_right')
-- 				player:play()
-- 			end

-- 		elseif event.phase == 'ended' or event.phase == 'cancelled' then
-- 			speed_background = 0


-- 			-- TESTE JUMP
-- 			if player.direction == 'left' then
-- 				speed_background = 0
-- 				player.x_speed = 0
-- 				player:setSequence('running_down_left')
-- 				player:play()
-- 			elseif player.direction == 'right' then
-- 				speed_background = 0
-- 				player.x_speed = 0
-- 				player:setSequence('running_down_right')
-- 				player:play()
-- 			end

-- 		end

-- end


function leftArrow:touch( event )
	player.direction = 'left'

	if event.phase == 'began' then
		-- can_move = false

		player.x_speed = -8
		player:setSequence('running_left')
		player:play()

	elseif event.phase == 'ended' or event.phase == 'cancelled' then
		can_move = true

		player.x_speed = 0
		player:setSequence('running_down_left')
		player:play()

	end
end


function rightArrow:touch( event )
	player.direction = 'right'

	if event.phase == 'began' then
		-- can_move = false

		player.x_speed = 8
		player:setSequence('running_right')
		player:play()

	elseif event.phase == 'ended' or event.phase == 'cancelled' then
		can_move = true

		player.x_speed = 0
		player:setSequence('running_down_right')
		player:play()

	end
end


-- Keep the player boxed in by fake walls
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

	if speed_background < 0 then
		speed_background = 0
	end
end


-- Scores
local score_text = display.newText("Scores: " .. scores, 110, 5, "Lucida Console", 14)
score_text:setTextColor(255, 0, 0)


-- Lifes
local life_text = display.newText("Life: " .. life, 20, 5, "Lucida Console", 14)
life_text:setTextColor(255, 0, 0)


local function collision(self, event)

	-- colisao com rampa
	if event.other.type == 'rampa' then
		if event.phase == "began" then
			self.bodyType = "static"
			
			print('Player: ' .. self.bodyType)

			-- o player só pula se ele estiver no chao
			if self.status == 'ground' then
				print('pula rampa')

				scores = scores+10;

				self.x_speed = 0
				if self.direction == 'left' then
					self:setSequence('jump_left')
				elseif self.direction == 'right' then
					self:setSequence('jump_right')
				end
				self:play()
			end

			self.status = 'jumping'

			score_text.text = "Scores: " .. scores

		elseif event.phase == "ended" then
			self.status = 'ground'
			print('Player: ' .. self.bodyType)
			print('volta ao chao')

			print('Scores: ' .. scores)
			

		end
	end


	-- colisao com obstaculo
	if event.other.type == 'obstaculo' then
		if event.phase == "began" then
			self.bodyType = "static"
			
			print('Player: ' .. self.bodyType)

			-- o player só colide se ele estiver no chao
			if self.status == 'ground' then
				print('colide com obstaculo')
				life = life-1;
			end

			life_text.text = "Life: " .. life

		elseif event.phase == "ended" then
			print('Player: ' .. self.bodyType)
			print('volta ao jogo')

			print('Life: ' .. life)
		end
	end
end



-- Timer
local timeLimit = 120
timeLeft = display.newText("Time: " .. timeLimit, 210, 5, "Lucida Console", 14)
timeLeft:setTextColor(255, 0, 0)


local function timerDown()
	timeLimit = timeLimit-1
	timeLeft.text = "Time: " .. timeLimit
	if timeLimit == 0 then
		print("Time Out") -- or do your code for time out
	end
end
timer.performWithDelay(1000, timerDown, timeLimit)






player.collision = collision
player:addEventListener( "collision", player )

-- Start everything moving
Runtime:addEventListener( "enterFrame", update )

-- Start movement
Runtime:addEventListener("enterFrame", movePlayer)

-- When no arrow is touched, stop player's movement
-- Runtime:addEventListener("touch", stopPlayer)

-- Fake Walls
Runtime:addEventListener("enterFrame", fakeWalls)

-- upArrow:addEventListener( 'touch', up )
-- downArrow:addEventListener( 'touch', down )
leftArrow:addEventListener( 'touch', left )
rightArrow:addEventListener( 'touch', right )