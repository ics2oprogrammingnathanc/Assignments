-- Title: AnimatingImages
-- Name: Nathan Cook
-- Course: ICS2O/3C
-- This program displays images that change size, state and shape while continously 
--moving around the screen of the iPad Air. 

--hide the status bar
display.setStatusBar(display.HiddenStatusBar) 

--set image background
local backgroundImage = display.newImageRect("Images/HockeyRink0.jpg", 2048, 1536)

--character image with width and height
local HockeySticks = display.newImageRect("Images/HockeySticks.png", 250, 200)

--Create a scroll speed
local scrollSpeed = 10

--set image to be transparent
HockeySticks.alpha = 0

--set initial x and y position of HockeyPlayer
HockeySticks.x = 100
HockeySticks.y = display.contentHeight/2

--Function: MoveSticks
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of the sticks
local function MoveSticks(event) 
	--add the scroll speed to the x-value of the sticks.
	HockeySticks.x = HockeySticks.x + scrollSpeed
	--change the transparency of the ship every time it moves so it fades out
	HockeySticks.alpha = HockeySticks.alpha + 0.005
end

--MoveSticks will be called over and over again
Runtime:addEventListener("enterFrame", MoveSticks)

--add character image with width and height
local ilyaKovalchuck = display.newImageRect("Images/ilya,Kovalchuck.png", 300, 300)

--create a scroll speed
local scrollSpeed2 = 15

--set image to be transparent
ilyaKovalchuck = 0

--set initial x and position of ilya,Kovalchuck
ilyaKovalchuck.x = 150
ilyaKovalchuck.y = 150

--function: MoveIlya
--Input: this function accepts event listener
--Output: none
--Description: This function adds the scroll spped to the y-value of ilya
local function MoveIlya(event)
	--add scroll speed to y-value of ilya
	ilyaKovalchuck.y = ilyaKovalchuck.y + scrollSpeed2
	--change the transparency of the ship every time it moves so it fades out. 
	ilyaKovalchuck.alpha = ilyaKovalchuck + 0.05
end

--Moveilya will be called over and over again.\
Runtime:addEventListener("enterFrame", MoveIlya)