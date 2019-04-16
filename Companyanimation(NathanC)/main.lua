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

-----------------------------------------------------------------------------------
--LOCAL VARIABLES
----------------------------------------------------------------------------------
local logo
local scrollXSpeed = 7
local scrollYSpeed = -3
local scrollXSpeed2 = -8
local scrollYSpeed2 = -8

-----------------------------------------------------------------------------------------
--AUDIO
-----------------------------------------------------------------------------
local soundef = audio.loadSound("Sounds/sound8.mp3")
local soundefChannel
-- Play audio
	soundefChannel = audio.play(soundef)
----------------------------------------------------------------------------
--OBJECT CREATION
---------------------------------------------------------------------------
-- have image display
logo = display.newImageRect("Images/CompanyLogoNathanC@2x.png", 300, 300)
logo.x = 100
logo.y = 700
logo2 = display.newImageRect("Images/CompanyLogoNathanC@2x.png", 300, 300)
logo2.x = 500
logo2.y = 500
logo3 = display.newImageRect("Images/CompanyLogoNathanC@2x.png", 300, 300)
logo3.x = 1030
logo3.y = 700

------------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
--------------------------------------------------------------------------------
local function moveLogo()
	logo.x = logo.x + scrollXSpeed
	logo.y = logo.y + scrollYSpeed
	-- change transparencey of logo
	logo.alpha = logo.alpha - 0.004
	-- rotate logo
	logo.rotation = logo.rotation + 4
end

local function moveLogo2()
	logo3.x = logo3.x + scrollXSpeed2
	logo3.y = logo3.y + scrollYSpeed2
	-- change transparencey of logo
	logo3.alpha = logo3.alpha - 0.004
	-- rotate logo
	logo3.rotation = logo3.rotation + 4
end

------------------------------------------------------------------------------------------
-- Event Listeners
--------------------------------------------------------------------------------

Runtime:addEventListener("enterFrame", moveLogo)
Runtime:addEventListener("enterFrame", moveLogo2)

