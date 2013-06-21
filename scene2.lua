
display.setStatusBar( display.HiddenStatusBar )
local storyboard = require( "storyboard" )
local scene = storyboard.newScene()

function scene:createScene( event )
    local group = self.view
end

function scene:enterScene( event )


local screen_width = display.contentWidth
local screen_height = display.contentHeight
local center_x = display.contentCenterX
local center_y = display.contentCenterY


local group = self.view

    local img2 = display.newImage('images/bg-menu.png')
    img2.x = screen_width*0.5

    local start = display.newImage('images/bg-iniciar-jogo.png', 0, 0)
    start.x = center_x
    start.y = center_y*0.95

    local sair = display.newImage('images/bt-sair-jogo.png', 0, 0)
    sair.x = center_x
    sair.y = center_y*1.18

    -- local creditos = display.newImage('credits.png', 0, 0)
    -- creditos.x = center_x
    -- creditos.y = center_y*1.25

    function tapStart(event)
        storyboard.gotoScene( "scene1", "fade" )
    end

    function tapExit(event)
        storyboard.gotoScene( "exit", "fade")
    end

    -- function tapCredits(event)
    -- storyboard.gotoScene( "creditos")
    -- end

    sair:addEventListener('tap', tapExit)
    start:addEventListener('tap', tapStart)
    -- creditos:addEventListener('tap', tapCredits)

    storyboard.purgeScene( storyboard.getPrevious() )

end

function scene:exitScene( event )
    local group = self.view
end


function scene:destroyScene( event )
    local group = self.view
end


scene:addEventListener( "createScene", scene )
scene:addEventListener( "enterScene", scene )
scene:addEventListener( "exitScene", scene )
scene:addEventListener( "destroyScene", scene )

return scene