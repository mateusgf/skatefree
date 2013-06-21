display.setStatusBar( display.HiddenStatusBar )
local physics = require 'physics'
physics.start()
physics.setGravity(0,0)

-- Variables to Determine Center of Screen
_W = display.contentWidth / 2
_H = display.contentHeight / 2

-- Velocidade padrão do background
local speed_background = 0
-- 4

-- Flag para determinar se o background deve mover
local can_move = true

-- Label Scores
local scores = 0;

-- Label Life
-- life padrao: 30
local life = 30;

-- Status do jogo
local status_game = 'playing'


-- streetBg
local streetBg = display.newImage( "images/street.png" )
streetBg:setReferencePoint( display.CenterLeftReferencePoint )
streetBg.x = 0
streetBg.y = 0

local streetBg2 = display.newImage( "images/street.png" )
streetBg2:setReferencePoint( display.CenterLeftReferencePoint )
streetBg2.x = 0
streetBg2.y = 480

local endline = display.newImage( "images/endline.png" )
endline:setReferencePoint( display.CenterLeftReferencePoint )
endline.type = 'endline'
endline.x = 0
endline.y = 45670
physics.addBody(endline, 'static')



-- Group de rampas

local rampas = display.newGroup()

local rampa1 = display.newImage('images/rampa02.png')
rampa1.image = 'images/rampa02.png'
rampa1:setReferencePoint( display.CenterLeftReferencePoint )
rampa1.type = 'rampa'
rampa1.name = 'rampa1'
rampa1.x = 80
rampa1.y = 480
physics.addBody(rampa1, 'static')

local rampa2 = display.newImage('images/rampa01.png')
rampa2.image = 'images/rampa01.png'
rampa2:setReferencePoint( display.CenterLeftReferencePoint )
rampa2.type = 'rampa'
rampa2.name = 'rampa2'
rampa2.x = 200
rampa2.y = 400
physics.addBody(rampa2, 'static')

local rampa3 = display.newImage('images/rampa03.png')
rampa3.image = 'images/rampa03.png'
rampa3:setReferencePoint( display.CenterLeftReferencePoint )
rampa3.type = 'rampa'
rampa3.name = 'rampa3'
rampa3.x = 150
rampa3.y = 600
physics.addBody(rampa3, 'static')

local rampa4 = display.newImage('images/rampa02.png')
rampa4.image = 'images/rampa02.png'
rampa4:setReferencePoint( display.CenterLeftReferencePoint )
rampa4.type = 'rampa'
rampa4.name = 'rampa4'
rampa4.x = 150
rampa4.y = 1200
physics.addBody(rampa4, 'static')

local rampa5 = display.newImage('images/rampa02.png')
rampa5.image = 'images/rampa02.png'
rampa5:setReferencePoint( display.CenterLeftReferencePoint )
rampa5.type = 'rampa'
rampa5.name = 'rampa5'
rampa5.x = 50
rampa5.y = 1000
physics.addBody(rampa5, 'static')

local rampa6 = display.newImage('images/rampa01.png')
rampa6.image = 'images/rampa01.png'
rampa6:setReferencePoint( display.CenterLeftReferencePoint )
rampa6.type = 'rampa'
rampa6.name = 'rampa6'
rampa6.x = 200
rampa6.y = 1700
physics.addBody(rampa6, 'static')

local rampa7 = display.newImage('images/rampa03.png')
rampa7.image = 'images/rampa03.png'
rampa7:setReferencePoint( display.CenterLeftReferencePoint )
rampa7.type = 'rampa'
rampa7.name = 'rampa7'
rampa7.x = 50
rampa7.y = 1700
physics.addBody(rampa7, 'static')

local rampa8 = display.newImage('images/rampa01.png')
rampa8.image = 'images/rampa01.png'
rampa8:setReferencePoint( display.CenterLeftReferencePoint )
rampa8.type = 'rampa'
rampa8.name = 'rampa8'
rampa8.x = 100
rampa8.y = 2250
physics.addBody(rampa8, 'static')

local rampa9 = display.newImage('images/rampa01.png')
rampa9.image = 'images/rampa01.png'
rampa9:setReferencePoint( display.CenterLeftReferencePoint )
rampa9.type = 'rampa'
rampa9.name = 'rampa9'
rampa9.x = 50
rampa9.y = 2450
physics.addBody(rampa9, 'static')

local rampa10 = display.newImage('images/rampa01.png')
rampa10.image = 'images/rampa01.png'
rampa10:setReferencePoint( display.CenterLeftReferencePoint )
rampa10.type = 'rampa'
rampa10.name = 'rampa10'
rampa10.x = 220
rampa10.y = 2500
physics.addBody(rampa10, 'static')

local rampa11 = display.newImage('images/rampa03.png')
rampa11.image = 'images/rampa03.png'
rampa11:setReferencePoint( display.CenterLeftReferencePoint )
rampa11.type = 'rampa'
rampa11.name = 'rampa11'
rampa11.x = 50
rampa11.y = 2750
physics.addBody(rampa11, 'static')

local rampa12 = display.newImage('images/rampa02.png')
rampa12.image = 'images/rampa02.png'
rampa12:setReferencePoint( display.CenterLeftReferencePoint )
rampa12.type = 'rampa'
rampa12.name = 'rampa12'
rampa12.x = 80
rampa12.y = 3000
physics.addBody(rampa12, 'static')


local rampa13 = display.newImage('images/rampa01.png')
rampa13.image = 'images/rampa01.png'
rampa13:setReferencePoint( display.CenterLeftReferencePoint )
rampa13.type = 'rampa'
rampa13.name = 'rampa13'
rampa13.x = 160
rampa13.y = 2990
physics.addBody(rampa13, 'static')

local rampa14 = display.newImage('images/rampa02.png')
rampa14.image = 'images/rampa02.png'
rampa14:setReferencePoint( display.CenterLeftReferencePoint )
rampa14.type = 'rampa'
rampa14.name = 'rampa14'
rampa14.x = 60
rampa14.y = 3500
physics.addBody(rampa14, 'static')

local rampa15 = display.newImage('images/rampa01.png')
rampa15.image = 'images/rampa01.png'
rampa15:setReferencePoint( display.CenterLeftReferencePoint )
rampa15.type = 'rampa'
rampa15.name = 'rampa15'
rampa15.x = 120
rampa15.y = 3700
physics.addBody(rampa15, 'static')

local rampa16 = display.newImage('images/rampa03.png')
rampa16.image = 'images/rampa03.png'
rampa16:setReferencePoint( display.CenterLeftReferencePoint )
rampa16.type = 'rampa'
rampa16.name = 'rampa16'
rampa16.x = 60
rampa16.y = 4000
physics.addBody(rampa16, 'static')

local rampa17 = display.newImage('images/rampa02.png')
rampa17.image = 'images/rampa02.png'
rampa17:setReferencePoint( display.CenterLeftReferencePoint )
rampa17.type = 'rampa'
rampa17.name = 'rampa17'
rampa17.x = 220
rampa17.y = 4970
physics.addBody(rampa17, 'static')

local rampa18 = display.newImage('images/rampa01.png')
rampa18.image = 'images/rampa01.png'
rampa18:setReferencePoint( display.CenterLeftReferencePoint )
rampa18.type = 'rampa'
rampa18.name = 'rampa18'
rampa18.x = 50
rampa18.y = 5000
physics.addBody(rampa18, 'static')

local rampa19 = display.newImage('images/rampa01.png')
rampa19.image = 'images/rampa01.png'
rampa19:setReferencePoint( display.CenterLeftReferencePoint )
rampa19.type = 'rampa'
rampa19.name = 'rampa19'
rampa19.x = 110
rampa19.y = 5150
physics.addBody(rampa19, 'static')

local rampa20 = display.newImage('images/rampa03.png')
rampa20.image = 'images/rampa03.png'
rampa20:setReferencePoint( display.CenterLeftReferencePoint )
rampa20.type = 'rampa'
rampa20.name = 'rampa20'
rampa20.x = 60
rampa20.y = 5500
physics.addBody(rampa20, 'static')

local rampa21 = display.newImage('images/rampa02.png')
rampa21.image = 'images/rampa02.png'
rampa21:setReferencePoint( display.CenterLeftReferencePoint )
rampa21.type = 'rampa'
rampa21.name = 'rampa21'
rampa21.x = 160
rampa21.y = 4600
physics.addBody(rampa21, 'static')

local rampa22 = display.newImage('images/rampa03.png')
rampa22.image = 'images/rampa03.png'
rampa22:setReferencePoint( display.CenterLeftReferencePoint )
rampa22.type = 'rampa'
rampa22.name = 'rampa22'
rampa22.x = 190
rampa22.y = 5900
physics.addBody(rampa22, 'static')

local rampa23 = display.newImage('images/rampa01.png')
rampa23.image = 'images/rampa01.png'
rampa23:setReferencePoint( display.CenterLeftReferencePoint )
rampa23.type = 'rampa'
rampa23.name = 'rampa23'
rampa23.x = 60
rampa23.y = 6050
physics.addBody(rampa23, 'static')


-- -----------------------------------------------------------------

local rampa24 = display.newImage('images/rampa02.png')
rampa24.image = 'images/rampa02.png'
rampa24:setReferencePoint( display.CenterLeftReferencePoint )
rampa24.type = 'rampa'
rampa24.name = 'rampa24'
rampa24.x = 80
rampa24.y = 480 + 6400
physics.addBody(rampa24, 'static')


local rampa25 = display.newImage('images/rampa01.png')
rampa25.image = 'images/rampa01.png'
rampa25:setReferencePoint( display.CenterLeftReferencePoint )
rampa25.type = 'rampa'
rampa25.name = 'rampa25'
rampa25.x = 200
rampa25.y = 400 + 6400
physics.addBody(rampa25, 'static')

local rampa26 = display.newImage('images/rampa03.png')
rampa26.image = 'images/rampa03.png'
rampa26:setReferencePoint( display.CenterLeftReferencePoint )
rampa26.type = 'rampa'
rampa26.name = 'rampa26'
rampa26.x = 150
rampa26.y = 600 + 6400
physics.addBody(rampa26, 'static')

local rampa27 = display.newImage('images/rampa02.png')
rampa27.image = 'images/rampa02.png'
rampa27:setReferencePoint( display.CenterLeftReferencePoint )
rampa27.type = 'rampa'
rampa27.name = 'rampa27'
rampa27.x = 150
rampa27.y = 1200 + 6400
physics.addBody(rampa27, 'static')

local rampa28 = display.newImage('images/rampa02.png')
rampa28.image = 'images/rampa02.png'
rampa28:setReferencePoint( display.CenterLeftReferencePoint )
rampa28.type = 'rampa'
rampa28.name = 'rampa28'
rampa28.x = 50
rampa28.y = 1000 + 6400
physics.addBody(rampa28, 'static')

local rampa29 = display.newImage('images/rampa01.png')
rampa29.image = 'images/rampa01.png'
rampa29:setReferencePoint( display.CenterLeftReferencePoint )
rampa29.type = 'rampa'
rampa29.name = 'rampa29'
rampa29.x = 200
rampa29.y = 1700 + 6400
physics.addBody(rampa29, 'static')

local rampa30 = display.newImage('images/rampa03.png')
rampa30.image = 'images/rampa03.png'
rampa30:setReferencePoint( display.CenterLeftReferencePoint )
rampa30.type = 'rampa'
rampa30.name = 'rampa30'
rampa30.x = 50
rampa30.y = 1700 + 6400
physics.addBody(rampa30, 'static')

local rampa31 = display.newImage('images/rampa01.png')
rampa31.image = 'images/rampa01.png'
rampa31:setReferencePoint( display.CenterLeftReferencePoint )
rampa31.type = 'rampa'
rampa31.name = 'rampa31'
rampa31.x = 100
rampa31.y = 2250 + 6400
physics.addBody(rampa31, 'static')

local rampa32 = display.newImage('images/rampa01.png')
rampa32.image = 'images/rampa01.png'
rampa32:setReferencePoint( display.CenterLeftReferencePoint )
rampa32.type = 'rampa'
rampa32.name = 'rampa32'
rampa32.x = 50
rampa32.y = 2450 + 6400
physics.addBody(rampa32, 'static')

local rampa33 = display.newImage('images/rampa01.png')
rampa33.image = 'images/rampa01.png'
rampa33:setReferencePoint( display.CenterLeftReferencePoint )
rampa33.type = 'rampa'
rampa33.name = 'rampa33'
rampa33.x = 220
rampa33.y = 2500 + 6400
physics.addBody(rampa33, 'static')

local rampa34 = display.newImage('images/rampa03.png')
rampa34.image = 'images/rampa03.png'
rampa34:setReferencePoint( display.CenterLeftReferencePoint )
rampa34.type = 'rampa'
rampa34.name = 'rampa34'
rampa34.x = 50
rampa34.y = 2750 + 6400
physics.addBody(rampa34, 'static')

local rampa35 = display.newImage('images/rampa02.png')
rampa35.image = 'images/rampa02.png'
rampa35:setReferencePoint( display.CenterLeftReferencePoint )
rampa35.type = 'rampa'
rampa35.name = 'rampa35'
rampa35.x = 80
rampa35.y = 3000 + 6400
physics.addBody(rampa35, 'static')


local rampa36 = display.newImage('images/rampa01.png')
rampa36.image = 'images/rampa01.png'
rampa36:setReferencePoint( display.CenterLeftReferencePoint )
rampa36.type = 'rampa'
rampa36.name = 'rampa36'
rampa36.x = 160
rampa36.y = 2990 + 6400
physics.addBody(rampa36, 'static')

local rampa37 = display.newImage('images/rampa02.png')
rampa37.image = 'images/rampa02.png'
rampa37:setReferencePoint( display.CenterLeftReferencePoint )
rampa37.type = 'rampa'
rampa37.name = 'rampa37'
rampa37.x = 60
rampa37.y = 3500 + 6400
physics.addBody(rampa37, 'static')

local rampa38 = display.newImage('images/rampa01.png')
rampa38.image = 'images/rampa01.png'
rampa38:setReferencePoint( display.CenterLeftReferencePoint )
rampa38.type = 'rampa'
rampa38.name = 'rampa38'
rampa38.x = 120
rampa38.y = 3700 + 6400
physics.addBody(rampa38, 'static')

local rampa39 = display.newImage('images/rampa03.png')
rampa39.image = 'images/rampa03.png'
rampa39:setReferencePoint( display.CenterLeftReferencePoint )
rampa39.type = 'rampa'
rampa39.name = 'rampa39'
rampa39.x = 60
rampa39.y = 4000 + 6400
physics.addBody(rampa39, 'static')

local rampa40 = display.newImage('images/rampa02.png')
rampa40.image = 'images/rampa02.png'
rampa40:setReferencePoint( display.CenterLeftReferencePoint )
rampa40.type = 'rampa'
rampa40.name = 'rampa40'
rampa40.x = 220
rampa40.y = 4970 + 6400
physics.addBody(rampa40, 'static')

local rampa41 = display.newImage('images/rampa01.png')
rampa41.image = 'images/rampa01.png'
rampa41:setReferencePoint( display.CenterLeftReferencePoint )
rampa41.type = 'rampa'
rampa41.name = 'rampa41'
rampa41.x = 50
rampa41.y = 5000 + 6400
physics.addBody(rampa41, 'static')

local rampa42 = display.newImage('images/rampa01.png')
rampa42.image = 'images/rampa01.png'
rampa42:setReferencePoint( display.CenterLeftReferencePoint )
rampa42.type = 'rampa'
rampa42.name = 'rampa42'
rampa42.x = 110
rampa42.y = 5150 + 6400
physics.addBody(rampa42, 'static')

local rampa43 = display.newImage('images/rampa03.png')
rampa43.image = 'images/rampa03.png'
rampa43:setReferencePoint( display.CenterLeftReferencePoint )
rampa43.type = 'rampa'
rampa43.name = 'rampa43'
rampa43.x = 60
rampa43.y = 5500 + 6400
physics.addBody(rampa43, 'static')

local rampa44 = display.newImage('images/rampa02.png')
rampa44.image = 'images/rampa02.png'
rampa44:setReferencePoint( display.CenterLeftReferencePoint )
rampa44.type = 'rampa'
rampa44.name = 'rampa44'
rampa44.x = 160
rampa44.y = 4600 + 6400
physics.addBody(rampa44, 'static')

local rampa45 = display.newImage('images/rampa03.png')
rampa45.image = 'images/rampa03.png'
rampa45:setReferencePoint( display.CenterLeftReferencePoint )
rampa45.type = 'rampa'
rampa45.name = 'rampa45'
rampa45.x = 190
rampa45.y = 5900 + 6400
physics.addBody(rampa45, 'static')

local rampa46 = display.newImage('images/rampa01.png')
rampa46.image = 'images/rampa01.png'
rampa46:setReferencePoint( display.CenterLeftReferencePoint )
rampa46.type = 'rampa'
rampa46.name = 'rampa46'
rampa46.x = 60
rampa46.y = 6050 + 6400
physics.addBody(rampa46, 'static')

-- -----------------------------------------------------------------




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

rampas:insert(rampa24)
rampas:insert(rampa25)
rampas:insert(rampa26)
rampas:insert(rampa27)
rampas:insert(rampa28)
rampas:insert(rampa29)
rampas:insert(rampa30)
rampas:insert(rampa31)
rampas:insert(rampa32)
rampas:insert(rampa33)
rampas:insert(rampa34)
rampas:insert(rampa35)
rampas:insert(rampa36)
rampas:insert(rampa37)
rampas:insert(rampa38)
rampas:insert(rampa39)
rampas:insert(rampa40)
rampas:insert(rampa41)
rampas:insert(rampa42)
rampas:insert(rampa43)
rampas:insert(rampa44)
rampas:insert(rampa45)
rampas:insert(rampa46)



local function multiplica_rampas(rampas)
    for i = 1, rampas.numChildren, 1 do
        local position_endline = 0;

        local rampa = display.newImage(rampas[i].image)
        rampa:setReferencePoint( display.CenterLeftReferencePoint )
        rampa.type = rampas[i].type
        rampa.name = rampas[i].name
        rampa.x = rampas[i].x
        rampa.y = rampas[i].y + 12800
        physics.addBody(rampa, 'static')

        local rampa2 = display.newImage(rampas[i].image)
        rampa2:setReferencePoint( display.CenterLeftReferencePoint )
        rampa2.type = rampas[i].type
        rampa2.name = rampas[i].name
        rampa2.x = rampas[i].x
        rampa2.y = rampas[i].y + 19200
        physics.addBody(rampa2, 'static')

        local rampa3 = display.newImage(rampas[i].image)
        rampa3:setReferencePoint( display.CenterLeftReferencePoint )
        rampa3.type = rampas[i].type
        rampa3.name = rampas[i].name
        rampa3.x = rampas[i].x
        rampa3.y = rampas[i].y + 25600
        physics.addBody(rampa3, 'static')

        local rampa4 = display.newImage(rampas[i].image)
        rampa4:setReferencePoint( display.CenterLeftReferencePoint )
        rampa4.type = rampas[i].type
        rampa4.name = rampas[i].name
        rampa4.x = rampas[i].x
        rampa4.y = rampas[i].y + 32000
        physics.addBody(rampa4, 'static')

        -- local rampa5 = display.newImage(rampas[i].image)
        -- rampa5:setReferencePoint( display.CenterLeftReferencePoint )
        -- rampa5.type = rampas[i].type
        -- rampa5.name = rampas[i].name
        -- rampa5.x = rampas[i].x
        -- rampa5.y = rampas[i].y + 38400
        -- physics.addBody(rampa5, 'static')

        -- local rampa6 = display.newImage(rampas[i].image)
        -- rampa6:setReferencePoint( display.CenterLeftReferencePoint )
        -- rampa6.type = rampas[i].type
        -- rampa6.name = rampas[i].name
        -- rampa6.x = rampas[i].x
        -- rampa6.y = rampas[i].y + 44800
        -- physics.addBody(rampa6, 'static')

        -- local rampa7 = display.newImage(rampas[i].image)
        -- rampa7:setReferencePoint( display.CenterLeftReferencePoint )
        -- rampa7.type = rampas[i].type
        -- rampa7.name = rampas[i].name
        -- rampa7.x = rampas[i].x
        -- rampa7.y = rampas[i].y + 51200
        -- physics.addBody(rampa7, 'static')

        rampas:insert(rampa)
        rampas:insert(rampa2)
        rampas:insert(rampa3)
        rampas:insert(rampa4)
        -- rampas:insert(rampa5)
        -- rampas:insert(rampa6)
        -- rampas:insert(rampa7)

        print(rampas[i].y + 51200);

    end
end

multiplica_rampas(rampas, 12800)






-- grupo de obstaculos

local obstaculos = display.newGroup()

local obstaculo1 = display.newImage('images/obstaculo01.png')
obstaculo1.image = 'images/obstaculo01.png'
obstaculo1:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo1.type = 'obstaculo'
obstaculo1.name = 'obstaculo1'
obstaculo1.x = 50
obstaculo1.y = 1200
physics.addBody(obstaculo1, 'static')

local obstaculo2 = display.newImage('images/obstaculo02.png')
obstaculo2.image = 'images/obstaculo02.png'
obstaculo2:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo2.type = 'obstaculo'
obstaculo2.name = 'obstaculo2'
obstaculo2.x = 100
obstaculo2.y = 1000
physics.addBody(obstaculo2, 'static')

local obstaculo3 = display.newImage('images/obstaculo01.png')
obstaculo3.image = 'images/obstaculo01.png'
obstaculo3:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo3.type = 'obstaculo'
obstaculo3.name = 'obstaculo3'
obstaculo3.x = 200
obstaculo3.y = 1500
physics.addBody(obstaculo3, 'static')

local obstaculo4 = display.newImage('images/obstaculo02.png')
obstaculo4.image = 'images/obstaculo02.png'
obstaculo4:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo4.type = 'obstaculo'
obstaculo4.name = 'obstaculo4'
obstaculo4.x = 100
obstaculo4.y = 1800
physics.addBody(obstaculo4, 'static')


local obstaculo5 = display.newImage('images/obstaculo02.png')
obstaculo5.image = 'images/obstaculo02.png'
obstaculo5:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo5.type = 'obstaculo'
obstaculo5.name = 'obstaculo5'
obstaculo5.x = 100
obstaculo5.y = 2300
physics.addBody(obstaculo5, 'static')

local obstaculo6 = display.newImage('images/obstaculo02.png')
obstaculo6.image = 'images/obstaculo02.png'
obstaculo6:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo6.type = 'obstaculo'
obstaculo6.name = 'obstaculo6'
obstaculo6.x = 50
obstaculo6.y = 2600
physics.addBody(obstaculo6, 'static')

local obstaculo7 = display.newImage('images/obstaculo01.png')
obstaculo7.image = 'images/obstaculo01.png'
obstaculo7:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo7.type = 'obstaculo'
obstaculo7.name = 'obstaculo7'
obstaculo7.x = 210
obstaculo7.y = 2700
physics.addBody(obstaculo7, 'static')

local obstaculo8 = display.newImage('images/obstaculo01.png')
obstaculo8.image = 'images/obstaculo01.png'
obstaculo8:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo8.type = 'obstaculo'
obstaculo8.name = 'obstaculo8'
obstaculo8.x = 160
obstaculo8.y = 3060
physics.addBody(obstaculo8, 'static')

local obstaculo9 = display.newImage('images/obstaculo02.png')
obstaculo9.image = 'images/obstaculo02.png'
obstaculo9:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo9.type = 'obstaculo'
obstaculo9.name = 'obstaculo9'
obstaculo9.x = 70
obstaculo9.y = 3100
physics.addBody(obstaculo9, 'static')

local obstaculo10 = display.newImage('images/obstaculo03.png')
obstaculo10.image = 'images/obstaculo03.png'
obstaculo10:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo10.type = 'obstaculo'
obstaculo10.name = 'obstaculo10'
obstaculo10.x = 100
obstaculo10.y = 3200
physics.addBody(obstaculo10, 'static')

local obstaculo11 = display.newImage('images/obstaculo03.png')
obstaculo11.image = 'images/obstaculo03.png'
obstaculo11:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo11.type = 'obstaculo'
obstaculo11.name = 'obstaculo11'
obstaculo11.x = 50
obstaculo11.y = 3400
physics.addBody(obstaculo11, 'static')

local obstaculo12 = display.newImage('images/obstaculo01.png')
obstaculo12.image = 'images/obstaculo01.png'
obstaculo12:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo12.type = 'obstaculo'
obstaculo12.name = 'obstaculo12'
obstaculo12.x = 200
obstaculo12.y = 3400
physics.addBody(obstaculo12, 'static')

local obstaculo13 = display.newImage('images/obstaculo01.png')
obstaculo13.image = 'images/obstaculo01.png'
obstaculo13:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo13.type = 'obstaculo'
obstaculo13.name = 'obstaculo13'
obstaculo13.x = 190
obstaculo13.y = 3600
physics.addBody(obstaculo13, 'static')

local obstaculo14 = display.newImage('images/obstaculo02.png')
obstaculo14.image = 'images/obstaculo02.png'
obstaculo14:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo14.type = 'obstaculo'
obstaculo14.name = 'obstaculo14'
obstaculo14.x = 40
obstaculo14.y = 3800
physics.addBody(obstaculo14, 'static')

local obstaculo15 = display.newImage('images/obstaculo01.png')
obstaculo15.image = 'images/obstaculo01.png'
obstaculo15:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo15.type = 'obstaculo'
obstaculo15.name = 'obstaculo15'
obstaculo15.x = 200
obstaculo15.y = 3800
physics.addBody(obstaculo14, 'static')

local obstaculo16 = display.newImage('images/obstaculo04.png')
obstaculo16.image = 'images/obstaculo04.png'
obstaculo16:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo16.type = 'obstaculo'
obstaculo16.name = 'obstaculo16'
obstaculo16.x = 120
obstaculo16.y = 3950
physics.addBody(obstaculo16, 'static')

local obstaculo17 = display.newImage('images/obstaculo05.png')
obstaculo17.image = 'images/obstaculo05.png'
obstaculo17:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo17.type = 'obstaculo'
obstaculo17.name = 'obstaculo17'
obstaculo17.x = 180
obstaculo17.y = 4200
physics.addBody(obstaculo17, 'static')

local obstaculo18 = display.newImage('images/obstaculo06.png')
obstaculo18.image = 'images/obstaculo06.png'
obstaculo18:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo18.type = 'obstaculo'
obstaculo18.name = 'obstaculo18'
obstaculo18.x = 150
obstaculo18.y = 4400
physics.addBody(obstaculo18, 'static')

local obstaculo19 = display.newImage('images/obstaculo06.png')
obstaculo19.image = 'images/obstaculo06.png'
obstaculo19:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo19.type = 'obstaculo'
obstaculo19.name = 'obstaculo19'
obstaculo19.x = 50
obstaculo19.y = 4600
physics.addBody(obstaculo19, 'static')

local obstaculo20 = display.newImage('images/obstaculo07.png')
obstaculo20.image = 'images/obstaculo07.png'
obstaculo20:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo20.type = 'obstaculo'
obstaculo20.name = 'obstaculo20'
obstaculo20.x = 80
obstaculo20.y = 4700
physics.addBody(obstaculo20, 'static')

local obstaculo21 = display.newImage('images/obstaculo10.png')
obstaculo21.image = 'images/obstaculo10.png'
obstaculo21:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo21.type = 'obstaculo'
obstaculo21.name = 'obstaculo21'
obstaculo21.x = 150
obstaculo21.y = 4900
physics.addBody(obstaculo21, 'static')

local obstaculo22 = display.newImage('images/obstaculo10.png')
obstaculo22.image = 'images/obstaculo10.png'
obstaculo22:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo22.type = 'obstaculo'
obstaculo22.name = 'obstaculo22'
obstaculo22.x = 200
obstaculo22.y = 5055
physics.addBody(obstaculo22, 'static')

local obstaculo23 = display.newImage('images/obstaculo05.png')
obstaculo23.image = 'images/obstaculo05.png'
obstaculo23:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo23.type = 'obstaculo'
obstaculo23.name = 'obstaculo23'
obstaculo23.x = 50
obstaculo23.y = 5120
physics.addBody(obstaculo23, 'static')

local obstaculo24 = display.newImage('images/obstaculo05.png')
obstaculo24.image = 'images/obstaculo05.png'
obstaculo24:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo24.type = 'obstaculo'
obstaculo24.name = 'obstaculo24'
obstaculo24.x = 75
obstaculo24.y = 5120
physics.addBody(obstaculo24, 'static')

local obstaculo25 = display.newImage('images/obstaculo04.png')
obstaculo25.image = 'images/obstaculo04.png'
obstaculo25:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo25.type = 'obstaculo'
obstaculo25.name = 'obstaculo25'
obstaculo25.x = 200
obstaculo25.y = 5220
physics.addBody(obstaculo25, 'static')

local obstaculo26 = display.newImage('images/obstaculo05.png')
obstaculo26.image = 'images/obstaculo05.png'
obstaculo26:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo26.type = 'obstaculo'
obstaculo26.name = 'obstaculo26'
obstaculo26.x = 50
obstaculo26.y = 5320
physics.addBody(obstaculo26, 'static')

local obstaculo27 = display.newImage('images/obstaculo05.png')
obstaculo27.image = 'images/obstaculo05.png'
obstaculo27:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo27.type = 'obstaculo'
obstaculo27.name = 'obstaculo27'
obstaculo27.x = 60
obstaculo27.y = 5900
physics.addBody(obstaculo27, 'static')

local obstaculo28 = display.newImage('images/obstaculo07.png')
obstaculo28.image = 'images/obstaculo07.png'
obstaculo28:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo28.type = 'obstaculo'
obstaculo28.name = 'obstaculo28'
obstaculo28.x = 130
obstaculo28.y = 6200
physics.addBody(obstaculo28, 'static')

local obstaculo29 = display.newImage('images/obstaculo10.png')
obstaculo29.image = 'images/obstaculo10.png'
obstaculo29:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo29.type = 'obstaculo'
obstaculo29.name = 'obstaculo29'
obstaculo29.x = 40
obstaculo29.y = 6400
physics.addBody(obstaculo29, 'static')

local obstaculo30 = display.newImage('images/obstaculo04.png')
obstaculo30.image = 'images/obstaculo04.png'
obstaculo30:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo30.type = 'obstaculo'
obstaculo30.name = 'obstaculo30'
obstaculo30.x = 210
obstaculo30.y = 6600
physics.addBody(obstaculo30, 'static')

local obstaculo31 = display.newImage('images/obstaculo02.png')
obstaculo31.image = 'images/obstaculo02.png'
obstaculo31:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo31.type = 'obstaculo'
obstaculo31.name = 'obstaculo31'
obstaculo31.x = 110
obstaculo31.y = 6750
physics.addBody(obstaculo31, 'static')

local obstaculo32 = display.newImage('images/obstaculo03.png')
obstaculo32.image = 'images/obstaculo03.png'
obstaculo32:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo32.type = 'obstaculo'
obstaculo32.name = 'obstaculo32'
obstaculo32.x = 40
obstaculo32.y = 6980
physics.addBody(obstaculo32, 'static')

local obstaculo33 = display.newImage('images/obstaculo01.png')
obstaculo33.image = 'images/obstaculo01.png'
obstaculo33:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo33.type = 'obstaculo'
obstaculo33.name = 'obstaculo33'
obstaculo33.x = 50
obstaculo33.y = 1200 + 6400
physics.addBody(obstaculo33, 'static')

local obstaculo34 = display.newImage('images/obstaculo02.png')
obstaculo34.image = 'images/obstaculo02.png'
obstaculo34:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo34.type = 'obstaculo'
obstaculo34.name = 'obstaculo34'
obstaculo34.x = 100
obstaculo34.y = 1000 + 6400
physics.addBody(obstaculo34, 'static')

local obstaculo35 = display.newImage('images/obstaculo01.png')
obstaculo35.image = 'images/obstaculo01.png'
obstaculo35:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo35.type = 'obstaculo'
obstaculo35.name = 'obstaculo35'
obstaculo35.x = 200
obstaculo35.y = 1500 + 6400
physics.addBody(obstaculo35, 'static')

local obstaculo36 = display.newImage('images/obstaculo02.png')
obstaculo36.image = 'images/obstaculo02.png'
obstaculo36:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo36.type = 'obstaculo'
obstaculo36.name = 'obstaculo36'
obstaculo36.x = 100
obstaculo36.y = 1800 + 6400
physics.addBody(obstaculo36, 'static')


local obstaculo37 = display.newImage('images/obstaculo02.png')
obstaculo37.image = 'images/obstaculo02.png'
obstaculo37:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo37.type = 'obstaculo'
obstaculo37.name = 'obstaculo37'
obstaculo37.x = 100
obstaculo37.y = 2300 + 6400
physics.addBody(obstaculo37, 'static')

local obstaculo38 = display.newImage('images/obstaculo02.png')
obstaculo38.image = 'images/obstaculo02.png'
obstaculo38:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo38.type = 'obstaculo'
obstaculo38.name = 'obstaculo38'
obstaculo38.x = 50
obstaculo38.y = 2600 + 6400
physics.addBody(obstaculo38, 'static')

local obstaculo390 = display.newImage('images/obstaculo01.png')
obstaculo390.image = 'images/obstaculo01.png'
obstaculo390:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo390.type = 'obstaculo'
obstaculo390.name = 'obstaculo390'
obstaculo390.x = 210
obstaculo390.y = 2700 + 6400
physics.addBody(obstaculo390, 'static')

local obstaculo39 = display.newImage('images/obstaculo01.png')
obstaculo39.image = 'images/obstaculo01.png'
obstaculo39:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo39.type = 'obstaculo'
obstaculo39.name = 'obstaculo39'
obstaculo39.x = 160
obstaculo39.y = 3060 + 6400
physics.addBody(obstaculo39, 'static')

local obstaculo40 = display.newImage('images/obstaculo02.png')
obstaculo40.image = 'images/obstaculo02.png'
obstaculo40:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo40.type = 'obstaculo'
obstaculo40.name = 'obstaculo40'
obstaculo40.x = 70
obstaculo40.y = 3100 + 6400
physics.addBody(obstaculo40, 'static')

local obstaculo41 = display.newImage('images/obstaculo03.png')
obstaculo41.image = 'images/obstaculo03.png'
obstaculo41:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo41.type = 'obstaculo'
obstaculo41.name = 'obstaculo41'
obstaculo41.x = 100
obstaculo41.y = 3200 + 6400
physics.addBody(obstaculo41, 'static')

local obstaculo42 = display.newImage('images/obstaculo03.png')
obstaculo42.image = 'images/obstaculo03.png'
obstaculo42:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo42.type = 'obstaculo'
obstaculo42.name = 'obstaculo42'
obstaculo42.x = 50
obstaculo42.y = 3400 + 6400
physics.addBody(obstaculo42, 'static')

local obstaculo43 = display.newImage('images/obstaculo01.png')
obstaculo43.image = 'images/obstaculo01.png'
obstaculo43:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo43.type = 'obstaculo'
obstaculo43.name = 'obstaculo43'
obstaculo43.x = 200
obstaculo43.y = 3400 + 6400
physics.addBody(obstaculo43, 'static')

local obstaculo44 = display.newImage('images/obstaculo01.png')
obstaculo44.image = 'images/obstaculo01.png'
obstaculo44:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo44.type = 'obstaculo'
obstaculo44.name = 'obstaculo44'
obstaculo44.x = 190
obstaculo44.y = 3600 + 6400
physics.addBody(obstaculo44, 'static')

local obstaculo45 = display.newImage('images/obstaculo02.png')
obstaculo45.image = 'images/obstaculo02.png'
obstaculo45:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo45.type = 'obstaculo'
obstaculo45.name = 'obstaculo45'
obstaculo45.x = 40
obstaculo45.y = 3800 + 6400
physics.addBody(obstaculo45, 'static')

local obstaculo46 = display.newImage('images/obstaculo01.png')
obstaculo46.image = 'images/obstaculo01.png'
obstaculo46:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo46.type = 'obstaculo'
obstaculo46.name = 'obstaculo46'
obstaculo46.x = 200
obstaculo46.y = 3800 + 6400
physics.addBody(obstaculo46, 'static')

local obstaculo47 = display.newImage('images/obstaculo04.png')
obstaculo47.image = 'images/obstaculo04.png'
obstaculo47:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo47.type = 'obstaculo'
obstaculo47.name = 'obstaculo47'
obstaculo47.x = 120
obstaculo47.y = 3950 + 6400
physics.addBody(obstaculo47, 'static')

local obstaculo48 = display.newImage('images/obstaculo05.png')
obstaculo48.image = 'images/obstaculo05.png'
obstaculo48:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo48.type = 'obstaculo'
obstaculo48.name = 'obstaculo48'
obstaculo48.x = 180
obstaculo48.y = 4200 + 6400
physics.addBody(obstaculo48, 'static')

local obstaculo49 = display.newImage('images/obstaculo06.png')
obstaculo49.image = 'images/obstaculo06.png'
obstaculo49:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo49.type = 'obstaculo'
obstaculo49.name = 'obstaculo49'
obstaculo49.x = 150
obstaculo49.y = 4400 + 6400
physics.addBody(obstaculo49, 'static')

local obstaculo50 = display.newImage('images/obstaculo06.png')
obstaculo50.image = 'images/obstaculo06.png'
obstaculo50:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo50.type = 'obstaculo'
obstaculo50.name = 'obstaculo50'
obstaculo50.x = 50
obstaculo50.y = 4600 + 6400
physics.addBody(obstaculo50, 'static')

local obstaculo51 = display.newImage('images/obstaculo07.png')
obstaculo51.image = 'images/obstaculo07.png'
obstaculo51:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo51.type = 'obstaculo'
obstaculo51.name = 'obstaculo51'
obstaculo51.x = 80
obstaculo51.y = 4700 + 6400
physics.addBody(obstaculo51, 'static')

local obstaculo52 = display.newImage('images/obstaculo10.png')
obstaculo52.image = 'images/obstaculo10.png'
obstaculo52:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo52.type = 'obstaculo'
obstaculo52.name = 'obstaculo52'
obstaculo52.x = 150
obstaculo52.y = 4900 + 6400
physics.addBody(obstaculo52, 'static')

local obstaculo53 = display.newImage('images/obstaculo10.png')
obstaculo53.image = 'images/obstaculo10.png'
obstaculo53:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo53.type = 'obstaculo'
obstaculo53.name = 'obstaculo53'
obstaculo53.x = 200
obstaculo53.y = 5055 + 6400
physics.addBody(obstaculo53, 'static')

local obstaculo54 = display.newImage('images/obstaculo05.png')
obstaculo54.image = 'images/obstaculo05.png'
obstaculo54:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo54.type = 'obstaculo'
obstaculo54.name = 'obstaculo54'
obstaculo54.x = 50
obstaculo54.y = 5120 + 6400
physics.addBody(obstaculo54, 'static')

local obstaculo55 = display.newImage('images/obstaculo05.png')
obstaculo55.image = 'images/obstaculo05.png'
obstaculo55:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo55.type = 'obstaculo'
obstaculo55.name = 'obstaculo55'
obstaculo55.x = 75
obstaculo55.y = 5120 + 6400
physics.addBody(obstaculo55, 'static')

local obstaculo56 = display.newImage('images/obstaculo04.png')
obstaculo56.image = 'images/obstaculo04.png'
obstaculo56:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo56.type = 'obstaculo'
obstaculo56.name = 'obstaculo56'
obstaculo56.x = 200
obstaculo56.y = 5220 + 6400
physics.addBody(obstaculo56, 'static')

local obstaculo57 = display.newImage('images/obstaculo05.png')
obstaculo57.image = 'images/obstaculo05.png'
obstaculo57:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo57.type = 'obstaculo'
obstaculo57.name = 'obstaculo57'
obstaculo57.x = 50
obstaculo57.y = 5320 + 6400
physics.addBody(obstaculo57, 'static')

local obstaculo58 = display.newImage('images/obstaculo05.png')
obstaculo58.image = 'images/obstaculo05.png'
obstaculo58:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo58.type = 'obstaculo'
obstaculo58.name = 'obstaculo58'
obstaculo58.x = 60
obstaculo58.y = 5900 + 6400
physics.addBody(obstaculo58, 'static')

local obstaculo59 = display.newImage('images/obstaculo07.png')
obstaculo59.image = 'images/obstaculo07.png'
obstaculo59:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo59.type = 'obstaculo'
obstaculo59.name = 'obstaculo59'
obstaculo59.x = 130
obstaculo59.y = 6200 + 6400
physics.addBody(obstaculo59, 'static')

local obstaculo60 = display.newImage('images/obstaculo10.png')
obstaculo60.image = 'images/obstaculo10.png'
obstaculo60:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo60.type = 'obstaculo'
obstaculo60.name = 'obstaculo60'
obstaculo60.x = 40
obstaculo60.y = 6400 + 6400
physics.addBody(obstaculo60, 'static')

local obstaculo61 = display.newImage('images/obstaculo04.png')
obstaculo61.image = 'images/obstaculo04.png'
obstaculo61:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo61.type = 'obstaculo'
obstaculo61.name = 'obstaculo61'
obstaculo61.x = 210
obstaculo61.y = 6600 + 6400
physics.addBody(obstaculo61, 'static')

local obstaculo62 = display.newImage('images/obstaculo02.png')
obstaculo62.image = 'images/obstaculo02.png'
obstaculo62:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo62.type = 'obstaculo'
obstaculo62.name = 'obstaculo62'
obstaculo62.x = 110
obstaculo62.y = 6750 + 6400
physics.addBody(obstaculo62, 'static')

local obstaculo63 = display.newImage('images/obstaculo03.png')
obstaculo63.image = 'images/obstaculo03.png'
obstaculo63:setReferencePoint( display.CenterLeftReferencePoint )
obstaculo63.type = 'obstaculo'
obstaculo63.name = 'obstaculo63'
obstaculo63.x = 40
obstaculo63.y = 6980 + 6400
physics.addBody(obstaculo63, 'static')


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

obstaculos:insert(obstaculo33)
obstaculos:insert(obstaculo34)
obstaculos:insert(obstaculo35)
obstaculos:insert(obstaculo36)
obstaculos:insert(obstaculo37)
obstaculos:insert(obstaculo38)
obstaculos:insert(obstaculo390)
obstaculos:insert(obstaculo39)
obstaculos:insert(obstaculo40)
obstaculos:insert(obstaculo41)
obstaculos:insert(obstaculo42)
obstaculos:insert(obstaculo43)
obstaculos:insert(obstaculo44)
obstaculos:insert(obstaculo45)
obstaculos:insert(obstaculo46)
obstaculos:insert(obstaculo47)
obstaculos:insert(obstaculo48)
obstaculos:insert(obstaculo49)
obstaculos:insert(obstaculo50)
obstaculos:insert(obstaculo51)
obstaculos:insert(obstaculo52)
obstaculos:insert(obstaculo53)
obstaculos:insert(obstaculo54)
obstaculos:insert(obstaculo55)
obstaculos:insert(obstaculo56)
obstaculos:insert(obstaculo57)
obstaculos:insert(obstaculo58)
obstaculos:insert(obstaculo59)
obstaculos:insert(obstaculo60)
obstaculos:insert(obstaculo61)
obstaculos:insert(obstaculo62)
obstaculos:insert(obstaculo63)




local function multiplica_obstaculos(obstaculos)
    for i = 1, obstaculos.numChildren, 1 do
        local obstaculo = display.newImage(obstaculos[i].image)
        obstaculo:setReferencePoint( display.CenterLeftReferencePoint )
        obstaculo.type = obstaculos[i].type
        obstaculo.name = obstaculos[i].name
        obstaculo.x = obstaculos[i].x
        obstaculo.y = obstaculos[i].y + 12800
        physics.addBody(obstaculo, 'static')

        local obstaculo2 = display.newImage(obstaculos[i].image)
        obstaculo2:setReferencePoint( display.CenterLeftReferencePoint )
        obstaculo2.type = obstaculos[i].type
        obstaculo2.name = obstaculos[i].name
        obstaculo2.x = obstaculos[i].x
        obstaculo2.y = obstaculos[i].y + 19200
        physics.addBody(obstaculo2, 'static')

        local obstaculo3 = display.newImage(obstaculos[i].image)
        obstaculo3:setReferencePoint( display.CenterLeftReferencePoint )
        obstaculo3.type = obstaculos[i].type
        obstaculo3.name = obstaculos[i].name
        obstaculo3.x = obstaculos[i].x
        obstaculo3.y = obstaculos[i].y + 25600
        physics.addBody(obstaculo3, 'static')

        local obstaculo4 = display.newImage(obstaculos[i].image)
        obstaculo4:setReferencePoint( display.CenterLeftReferencePoint )
        obstaculo4.type = obstaculos[i].type
        obstaculo4.name = obstaculos[i].name
        obstaculo4.x = obstaculos[i].x
        obstaculo4.y = obstaculos[i].y + 32000
        physics.addBody(obstaculo4, 'static')

        -- local obstaculo5 = display.newImage(obstaculos[i].image)
        -- obstaculo5:setReferencePoint( display.CenterLeftReferencePoint )
        -- obstaculo5.type = obstaculos[i].type
        -- obstaculo5.name = obstaculos[i].name
        -- obstaculo5.x = obstaculos[i].x
        -- obstaculo5.y = obstaculos[i].y + 38400
        -- physics.addBody(obstaculo5, 'static')

        -- local obstaculo6 = display.newImage(obstaculos[i].image)
        -- obstaculo6:setReferencePoint( display.CenterLeftReferencePoint )
        -- obstaculo6.type = obstaculos[i].type
        -- obstaculo6.name = obstaculos[i].name
        -- obstaculo6.x = obstaculos[i].x
        -- obstaculo6.y = obstaculos[i].y + 44800
        -- physics.addBody(obstaculo6, 'static')

        -- local obstaculo7 = display.newImage(obstaculos[i].image)
        -- obstaculo7:setReferencePoint( display.CenterLeftReferencePoint )
        -- obstaculo7.type = obstaculos[i].type
        -- obstaculo7.name = obstaculos[i].name
        -- obstaculo7.x = obstaculos[i].x
        -- obstaculo7.y = obstaculos[i].y + 51200
        -- physics.addBody(obstaculo7, 'static')

        obstaculos:insert(obstaculo)
        obstaculos:insert(obstaculo2)
        obstaculos:insert(obstaculo3)
        obstaculos:insert(obstaculo4)
        -- obstaculos:insert(obstaculo5)
        -- obstaculos:insert(obstaculo6)
        -- obstaculos:insert(obstaculo7)
    end
end

multiplica_obstaculos(obstaculos)





local function move_rampa(yOffset)
    -- move endline
    endline.y = endline.y - yOffset

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
    sheetContentHeight = 456,
    numFrames = 16
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
    },
    {
        name = 'colide',
        frames = { 10,11,13,16,1},
        time = 1200,
        loopCount = 0
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
--  if event.phase == 'began' then
--      can_move = false
--  end
-- end


-- function downArrow:touch( event )
--      can_move = true

--      if event.phase == 'began' then

--          -- speed_background = 10


--          -- TESTE JUMP
--          if player.direction == 'left' then
--              speed_background = 3
--              player.x_speed = 0
--              player:setSequence('jump_left')
--              player:play()
--          elseif player.direction == 'right' then
--              speed_background = 3
--              player.x_speed = 0
--              player:setSequence('jump_right')
--              player:play()
--          end

--      elseif event.phase == 'ended' or event.phase == 'cancelled' then
--          speed_background = 0


--          -- TESTE JUMP
--          if player.direction == 'left' then
--              speed_background = 0
--              player.x_speed = 0
--              player:setSequence('running_down_left')
--              player:play()
--          elseif player.direction == 'right' then
--              speed_background = 0
--              player.x_speed = 0
--              player:setSequence('running_down_right')
--              player:play()
--          end

--      end

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
local score_text = display.newText("Scores: " .. scores, 170, 440, "Lucida Console", 20)
score_text:setTextColor(0, 0, 0)


-- Lifes
local life_text = display.newText("Life: " .. life, 20, 5, "Lucida Console", 20)
life_text:setTextColor(0, 0, 0)


local function endgame()
    can_move = false
    if status_game == 'playing' then

        local game_win = display.newImage( "images/game-win.png" )
        game_win:setReferencePoint( display.CenterLeftReferencePoint )
        game_win.x = 0
        game_win.y = _H

        local total_scores = display.newText(scores, 235, 285, "Helvetica", 27)
        total_scores:setTextColor(0, 0, 0)

        player.isVisible = false
    end

    status_game = 'ended'
end


local function game_over()
    if status_game == 'playing' then
        can_move = false
        time = 0;

        local game_over = display.newImage( "images/game-over.png" )
        game_over:setReferencePoint( display.CenterLeftReferencePoint )
        game_over.x = 0
        game_over.y = _H

        local total_scores = display.newText(scores, 235, 285, "Helvetica", 27)
        total_scores:setTextColor(0, 0, 0)

        player.isVisible = false
    end

    status_game = 'over'
end

local function stop_moving()
    can_move = false
end


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

                speed_background = -4;

                player:setSequence('colide')
                player:play()

                life = life-1;
            end

            life_text.text = "Life: " .. life

            if life <= 0 then
                life = 0
                life_text.text = "Life: " .. life

                game_over()
            end

        elseif event.phase == "ended" then
            print('Player: ' .. self.bodyType)
            print('volta ao jogo')

            print('Life: ' .. life)

            speed_background = 0;

        end
    end



    -- colisao com linha final
    if event.other.type == 'endline' then
        if event.phase == "began" then

        elseif event.phase == "ended" then
            endgame()
        end
    end
end



local timeLeftWarning = display.newImage( "images/time-over.png" )
timeLeftWarning:setReferencePoint( display.CenterLeftReferencePoint )
timeLeftWarning.x = 12
timeLeftWarning.y = _H
timeLeftWarning.isVisible = false

function hide_time_warning()
    timeLeftWarning.isVisible = false
end



-- Timer
-- padrao para velocidade 0: 270
local timeLimit = 270
timeLeft = display.newText("Time: " .. timeLimit, 200, 5, "Lucida Console", 20)
timeLeft:setTextColor(0, 0, 0)


local function timerDown()
    if status_game == 'playing' then
        timeLimit = timeLimit-1
        timeLeft.text = "Time: " .. timeLimit

        if timeLimit < 40 then
            timeLeft:setTextColor(255, 0, 0)
            timeLeftWarning.isVisible = true

            timer.performWithDelay(1500, hide_time_warning, timeLeftWarning)
        end

        if timeLimit < 33 then
            timeLeftWarning.isVisible = false
        end

        if timeLimit == 0 then
            game_over()
            print("Time Out")
        end
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