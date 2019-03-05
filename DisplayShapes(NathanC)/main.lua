-- Title: DisplayShapes 
-- Name: Nathan Cook
-- Course: ICS2O/3C
-- This program displays 3 shapes on the iPad of diiferent colours and borders.
-- Underneath each shape is the name of it. 
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
Triangle:setFillColor(1, 1, 102/255)

--set stroke width of border
Triangle.strokeWidth = 10 

--set the colour of the border
Triangle:setStrokeColor(0.6, 0.3, 0.6)

--Write text on screen 
areaText = display.newText("Triangle", 150, 325, Arial, Textsize)

local vertices2 = { 350,350, 400,500, 550,500, 500,300}
local Quadrilateral 
local areaText2
local Textsize2 = 30 

--display the quadrilateral 
Quadrilateral = display.newPolygon( 400, 190, vertices2)

--set the colour of the Quadrilateral
Quadrilateral:setFillColor(0, 0, 1)

--set stroke width of the border
Quadrilateral.strokeWidth = 10 

--set colour of the border
Quadrilateral:setStrokeColor(0.5, 0.7, 0.5)

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
Pentagon:setStrokeColor(1, 0.4, 0) 

--Write text on screen 
areaText3 = display.newText("Pentagon", 725, 325, Arial, Textsize3)

local vertices4 = { 75,130, 250,130, 330,235, 250,340, 75,340, 9,225}
local hexagon
local areaText4
local Textsize4 = 30 

--display the Hexagon 
hexagon = display.newPolygon( 505, 500, vertices4)

--set the colour of the Hexagon
hexagon:setFillColor(0.8, 0.4, 0.7) 

--set stroke width of the hexagon
hexagon.strokeWidth = 10

--set colour of the border
hexagon:setStrokeColor(0, 1, 0.5)

--write text on screen 
areaText4 = display.newText("Hexagon", 500, 642, Arial, Textsize4) 

local Textsize5 = 60 
local Textsize6 = 30

--write title text on screen 
Textsize5 = display.newText("Shapes", 505, 710, Arial, Textsize5)

--set colour of the text
Textsize5:setTextColor(0, 0, 204/255)

-- write text on screen
Textsize6 = display.newText("By: Nathan Cook", 900, 720, Arial, Textsize6)