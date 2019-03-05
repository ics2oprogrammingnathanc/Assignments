-- Title: AnimatingImages
-- Name: Nathan Cook
-- Course: ICS2O/3C
-- This program displays images that change size, state and shape while continously 
--moving around the screen of the iPad Air. 

--hide the status bar
display.setStatusBar(display.HiddenStatusBar) 

--set image background
local backgroundImage = display.newImageRect("Images/HockeyRink0.jpg", 2048, 1536)

--create a text variable
local textObject

--display text on screen
textObject =display.newText( "Animating Images!", 500, 700, nil, 60)

--set text colour
textObject:setTextColor(0.8, 0.3, 0.9)

--character image with width and height
local HockeySticks = display.newImageRect("Images/HockeySticks.png", 250, 200)

--Create a scroll speed
local scrollSpeed = 6

--set image to be transparent
HockeySticks.alpha = 1

--set initial x and y position of HockeySticks
HockeySticks.x = 100
HockeySticks.y = 150

--Function: MoveSticks
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of the sticks
local function MoveSticks(event) 
	--add the scroll speed to the x-value of the sticks.
	HockeySticks.x = HockeySticks.x + scrollSpeed
	--change the transparency of the ship every time it moves so it fades out
	HockeySticks.alpha = HockeySticks.alpha - 0.005
	--rotate image forever
	HockeySticks.rotation = HockeySticks.rotation + 7
end

--MoveSticks will be called over and over again
Runtime:addEventListener("enterFrame", MoveSticks)

--add character image with width and height
local HockeyPlayer = display.newImageRect("Images/ilyaKovalchuck.png", 250, 350)

--create a scroll speed
local scrollSpeed2 = 5

--set image to be transparent
HockeyPlayer.alpha = 0

--set initial x and y position of HockeySticks
HockeyPlayer.x = 100
HockeyPlayer.y = 500

--function: MovePlayer
--Input: this function accepts event listener
--Output: none
--Description: This function adds the scroll spped to the y-value of HockeyPlayer
local function MovePlayer(event)
	--add scroll speed to y-value of ilya
	HockeyPlayer.x = HockeyPlayer.x + scrollSpeed2
	--change the transparency of the ship every time it moves so it fades out. 
	HockeyPlayer.alpha = HockeyPlayer.alpha + 0.004
	--change the x scale value while moving across the screen 
	HockeyPlayer.xScale = HockeyPlayer.xScale + 0.005
	--change the y scale value while moving across the screen
	HockeyPlayer.yScale = HockeyPlayer.yScale + 0.005
end

--MovePlayer will be called over and over again.
Runtime:addEventListener("enterFrame", MovePlayer)