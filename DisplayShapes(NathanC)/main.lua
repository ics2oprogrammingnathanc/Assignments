-- Title: DisplayShapes 
-- Name: Nathan Cook
-- Course: ICS2O/3C
-- This program displays 3 shapes on the iPad of diiferent colours and borders. Underneath each
-- shape is the name of it. 
--
-----------------------------------------------------------------------------------------

--remove status bar
display.setStatusBar(display.HiddenStatusBar)

-- set background colour 
display.setDefault("background", 200/255, 95/255, 100/255)

local vertices = { 0,150, 0,0, 100,100 }
local Triangle 
local areaText
local Textsize = 30

--display triangle 
Triangle = display.newPolygon( 150, 200, vertices)

--set colour of Triangle
Triangle:setFillColor(0.5, 0.4, 0.7)

--set stroke width of border
Triangle.strokeWidth = 10 

--set the colour of the border
Triangle:setStrokeColor(0, 0, 0)

--Write text on screen 
areaText = display.newText("Triangle", 150, 325, Arial, Textsize)

local vertices2 = { 350,350, 400,500, 550,500, 500,300}
local Quadrilateral 
local areaText2
local Textsize2 = 30 

--display the quadrilateral 
Quadrilateral = display.newPolygon( 400, 190, vertices2)

--set the colour of the Quadrilateral
Quadrilateral:setFillColor(0.5, 0.4, 0.7)

--set stroke width of the border
Quadrilateral.strokeWidth = 10 

--set colour of the border
Quadrilateral:setStrokeColor(0, 0, 0)

--Write text on screen
areaText2 = display.newText("Quadrilateral", 425, 325, Arial, Textsize2)

local vertices3 = { 350,350, 400,500, 525,500, 590,350, 470,275}
local Pentagon 
local areaText3
local Textsize3 = 30 

--display the pentagon
Pentagon = display.newPolygon( 725, 170, vertices3)

--set the colour of the Pentagon
Pentagon:setFillColor(0.5, 0.4, 0.7) 

--set stroke width of the Pentagon
Pentagon.strokeWidth = 10 

--set colour of the border
Pentagon:setStrokeColor(0, 0, 0) 

--Write text on screen 
areaText3 = display.newText("Pentagon", 725, 325, Arial, Textsize3)