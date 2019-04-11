-- Title: WhackAMole
-- Name: Your Name
-- Course: ICS2O/3C
-- This program displays my company logo on the screen spining
-- with sound effects as well. 
-------------------------------------
--Hide status bar
display.setStatusBar(display.HiddenStatusBar)

--set background colour
display.setDefault("background", 0.4, 0.7, 0.5)

local logo

-- have image display
logo = display.newImageRect("Images/CompanyLogoNathanC@2x.png", 300, 300)
logo.x = 500
logo.y = 500
