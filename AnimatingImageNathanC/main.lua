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
local HockeySticks = display.newImageRect("Images/HockeySticks.png", 300, 350)

--set image to be transparent
HockeySticks.alpha = 1

--set initial x and y position of HockeyPlayer
HockeySticks.x = 0
HockeySticks.y = display.contentHeight/2


