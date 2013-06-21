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

local saindo = display.newImage('images/bg-exit.png')
    saindo.x = screen_width*0.5
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