kkk-- Title: DisplayShapes 
-- Name: Nathan Cook
-- Course: ICS2O/3C
-- This program displays 3 shapes on the iPad of diiferent colours and borders. Underneath each
-- shape is the name of it. 


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
