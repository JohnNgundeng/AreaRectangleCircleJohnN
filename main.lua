-- Title: AreaOfRectangleAndCircle
-- Name: John N
-- Course: ICS2O/3C
-- This program displays a rectangle and has a text object that calculates its area and displays it.
-- Then I added a circle and another text object that calculates its area and displays it.

-- Create my local variables
local myCircle
local areaofCircle
local Pi = 3.14
local Radius = 40 
local areaText
local textSize = 50
local myRectangle
local widthOfRectangle = 175
local heightOfRectangle = 100
local areaOfRectangle 
local CircleText 

-- set the background colour of my screen.Rememberthat colors are between 0 and 1.
display.setDefault("background",117/255, 40/255, 180/255)

-- to remove status bar
display.setStatusBar(display.HiddenStatusBar)

-- draw the rectangle that is half the width and height of the screen size
myRectangle = display.newRect(0, 0, widthOfRectangle, heightOfRectangle)

-- anchor the rectangle in the top left corner of the screen and set its (x,y) position
myRectangle.anchorX = 0 
myRectangle.anchorY = 0
myRectangle.x = 5 
myRectangle.y = -13

-- set the width of the border 
myRectangle.strokeWidth = 15

-- set the colour of the rectangle
myRectangle:setFillColor(0.8, 0.1, 0.1)

-- set the colour of the border
myRectangle:setStrokeColor(0, 0, 1)

-- calculate the area
areaOfRectangle = widthOfRectangle * heightOfRectangle

-- write the area on the screen. Take into consideration the size of the font when 
-- positioning it on the screen
areaText = display.newText("The area of this rectangle with a width of \n" .. 
	widthOfRectangle .." and a height of " .. heightOfRectangle .. " is " ..
	areaOfRectangle ..  "pixels^2.", 0, 1, Arial, 20)

-- anchor the text and set its (x,y) position
areaText.anchorX = 0
areaText.anchorY = 0
areaText.x = 10
areaText.y = 115

-- set the colour of the newtext
areaText:setTextColor(1, 1, 0)

-- draw the Circle 
myCircle = display.newCircle ( 50 ,215,Radius)

-- set the width of the border 
myCircle.strokeWidth = 10

-- set the color of the circle 
myCircle:setFillColor( 0, 0, 1)

 -- set the color of the border
myCircle:setStrokeColor(0.8, 0.1,0.1)

-- calculate the area of the circle 
 areaofCircle = Radius * Radius * Pi  

-- write the area on screen. note font size and positioning 
cAreaText = display.newText (" The area of this circle with a radius of \n" .. 
	Radius .." is " .. areaofCircle .. "pixels².", 180, 290, Arial, 20 )

--  sets color of the text 
cAreaText:setTextColor(1,1,0)


-- setting sound variables 
local Sound1 = audio.loadSound("Sounds/breeze.mp3")
local backgroundMusic

-- setting background music 
backgroundMusic = audio.play(Sound1)