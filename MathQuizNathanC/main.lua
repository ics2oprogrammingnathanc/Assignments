-- Title: MathQuiz
-- Name: Nathan Cook
-- Course: ICS2O/3C
-- This program asks many math related questions with over 5 different operaters. The program includes different sound effects for
-- correct and incorrect answers, as well as typed messages at the end of each game.
-- While throughout the game, keeping track of score and lives left.

-- hide status bar
display.setStatusBar(display.HiddenStatusBar)

-- sets the background colour
display.setDefault("background", 0.5, 0.7, 0.7)

-- variables for the timer 
local totalSeconds = 10
local secondsLeft = 10
local clockText
local countDownTimer

local lives = 3
local heart1
local heart2
local heart3

local questionObject
local correctObject
local numericField
local randomNumber1
local randomNumber2
local userAnswer
local correctAnswer
local incorrectObject
local correctAnswers1 
local answerCounter = 0
local numberOfCorrect
local answerObject
local randomOperator
local correctAnswers2
local timerText
local endGame
local endGameBad
local correctSound = audio.loadSound( "SoundEffects/sound37.mp3")
local incorrectSound = audio.loadSound( "SoundEffects/clearing-throat-1.wav")
local correctSoundChannel
local incorrectSoundChannel
local correctSound2 = audio.loadSound( "SoundEffects/sound7.mp3")
local incorrectSound2 = audio.loadSound( "SoundEffects/sound8.mp3")
local correctAnswers12
local incorrectSoundChannel2
local sadFace
local happyFace
local theAnswer
---------------------------------------------------
-- LOCAL FUNCTIONS
----------------------------------------------------------

local function UpdateTime()
	if 	(answerCounter >= 5) then
				timer.cancel(countDownTimer)
				endGame.isVisible = true 
				numberOfCorrect.isVisible = false
				correctSoundChannel = audio.play(correctSound)
				happyFace.isVisible = true
				
		elseif (lives <= 0) then
				timer.cancel(countDownTimer)
				endGameBad.isVisible = true
				numberOfCorrect.isVisible = false
				incorrectSoundChannel = audio.play(incorrectSound)
				sadFace.isVisible = true
		end	
	-- decrement the number of seconds
	secondsLeft = secondsLeft - 1

	-- display the number of seconds left in the clock object 
	clockText.text = secondsLeft .. ""

	if (secondsLeft == 0 ) then
		--reset the number of seconds left
		secondsLeft = totalSeconds
		lives = lives - 1 

		--** IF THERE ARE NO LIVES LEFT, PLAY A LOSE SOUND, SHOW A YOU LOSE
		-- IMAGE AND CANCEL THE TIMER REMOVE THE THIRD HEART BY MAKING IT INVISIBLE
		if(lives == 2) then
			heart3.isVisible = false
		elseif (lives == 1) then
			heart2.isVisible = false
			heart3.isVisible = false
		elseif(lives <= 0) then
			heart1.isVisible = false
			heart2.isVisible = false
			heart3.isVisible = false
		end	-- *** CALL THE FUNCTION TO ASK A NEW QUESTION

	end
end

-- functon that calls the timer 
local function StartTimer()
	-- create a countdown timer that loops infinitely
	countDownTimer = timer.performWithDelay( 1000, UpdateTime, 0)
end

local function AskQuestion()
	-- generate a random number between 1 and 2
	--** make sure to declare the variable
	randomOperator = math.random(1, 5)

	-- making certain objects and text invisible
	theAnswertitle.isVisible = false
	happyFace.isVisible = false
	sadFace.isVisible = false

	--if random operater equals 1, do addition
	if (randomOperator ==1) then

		-- generate 2 random numbers between a max. and a min. number
		randomNumber1 = math.random(1, 20)
		randomNumber2 = math.random(1, 20)

		correctAnswer = randomNumber1 + randomNumber2

		-- create question in text object
		questionObject.text = randomNumber1 .. " + " .. randomNumber2 .. " = "

	-- otherwise, if the random operater is 2, preform subtraction.
	elseif (randomOperator == 2) then

		-- generate 2 random numbers
		randomNumber1 = math.random(10, 20)
		randomNumber2 = math.random(1, 9)

		-- calculate correct answer
		correctAnswer = randomNumber1 - randomNumber2

		-- create question in text object
		questionObject.text = randomNumber1 .. " - " .. randomNumber2 .. " = "

		--if random operater is 3, preform multiplacation
		elseif (randomOperator == 3) then

			-- generate 2 random numbers
			randomNumber1 = math.random(0, 10)
			randomNumber2 = math.random(0, 10)

			-- calculate correct answer
			correctAnswer = randomNumber1 * randomNumber2

			--- create question in text object
			questionObject.text = randomNumber1 .. " x " .. randomNumber2 .. " = "

			-- if random operater is 4, perform division
			elseif (randomOperator == 4) then

				--generate 2 random numbers
				randomNumber1 = math.random(50, 100)
				randomNumber2 = math.random(1, 50)

				-- calculate correct answer
				correctAnswer = randomNumber1 / randomNumber2
				correctAnswer = math.floor(correctAnswer + 0.5)

				-- create question in text object
				questionObject.text = randomNumber1 .. " / " .. randomNumber2 .. " = "

				-- If random operater is 5, perform exponets
			    elseif (randomOperator == 5) then

			    	--generate 2 random numbers
			    	randomNumber1 = math.random(1, 5)
			    	randomNumber2 = math.random(1, 5)

			    	-- calculate correct answers
			    	correctAnswer = randomNumber1 ^ randomNumber2

			    	-- create question in text object
			    	questionObject.text = randomNumber1 .. "^" .. randomNumber2 .. " = "
	end
end


local function HideCorrect()
	correctObject.isVisible = false
	incorrectObject.isVisible = false
	theAnswer.isVisible = false
	theAnswertitle.isVisible = false
	AskQuestion()
end

local function NumericFieldListener( event )

	-- user begins editing "numericField"
	if ( event.phase == "began" ) then


	elseif (event.phase == "submitted" ) then

		-- when the answer is submitted (enter key is pressed) set user input to user's answer
		userAnswer = tonumber(event.target.text)

		-- if the users answer and the correct answer are the same:
		if (userAnswer == correctAnswer) then
			answerCounter = answerCounter + 1
			correctObject.isVisible = true
			timer.performWithDelay(1000, HideCorrect)
			numberOfCorrect.text = answerCounter
			secondsLeft = totalSeconds
			correctSoundChannel2 = audio.play(correctSound2)
			theAnswertitle.isVisible = false
		else 
			incorrectObject.isVisible = true
			theAnswer.text = correctAnswer
			theAnswertitle.isVisible = true
			timer.performWithDelay(1000, HideCorrect)
			secondsLeft = totalSeconds
			lives = lives - 1
			incorrectSoundChannel2 = audio.play(incorrectSound2)

			if(lives == 2) then
				heart3.isVisible = false
				theAnswer.isVisible = true
				theAnswertitle.isVisible = true
			elseif (lives == 1) then
				heart2.isVisible = false
				heart3.isVisible = false
				theAnswer.isVisible = true
				theAnswertitle.isVisible = true
			elseif(lives <= 0) then
				heart1.isVisible = false
				heart2.isVisible = false
				heart3.isVisible = false
				theAnswer.isVisible = true
				theAnswertitle.isVisible = true
			end
		end 
		--clear text field
		event.target.text = ""

	end

end

------------------------------------------------------------
-- OBJECT CREATION
------------------------------------------------------------

-- create the lives to display on the screen

heart1 = display.newImageRect("Images/videoHeart.png", 100, 100)
heart1.x = display.contentWidth * 7 / 8
heart1.y = display.contentHeight * 1 / 7

heart2 = display.newImageRect("Images/videoHeart.png", 100, 100)
heart2.x = display.contentWidth * 6 / 8
heart2.y = display.contentHeight * 1 / 7

heart3 = display.newImageRect("Images/videoHeart.png", 100, 100)
heart3.x = display.contentWidth * 5 / 8
heart3.y = display.contentHeight * 1 / 7

-- dislays a question and sets the colour
questionObject = display.newText( "", display.contentWidth/3, display.contentHeight/2, nil, 50 )
questionObject:setTextColor(1, 0.2, 0.4)

-- create the correct text object and make it invisible
correctObject = display.newText( "Correct!", display.contentWidth/2, display.contentHeight*2/3, nil, 65 )
correctObject:setTextColor( 0.8, 0.7, 1)
correctObject.isVisible = false

-- create the incorrect text object and make it invisible
incorrectObject = display.newText( "Incorrect :(", display.contentWidth/2, display.contentHeight*2/3, nil, 65 )
incorrectObject:setTextColor( 0.8, 0.7, 1)
incorrectObject.isVisible = false

--create numeric field
numericField = native.newTextField( display.contentWidth/2, display.contentHeight/2, 150, 80 )
numericField.inputType = "number"

-- add text for title
correctAnswers1 = display.newText( "Math Quiz!", display.contentWidth/2, display.contentHeight/3.5, nil, 65 )
correctAnswers1:setTextColor( 1, 0.1, 0.3)

-- add the count of correct answers
numberOfCorrect = display.newText( "", display.contentWidth/2, display.contentHeight/1.27, nil, 55 )
numberOfCorrect:setTextColor( 0.3, 0.3, 1)

-- add text for correct answers
correctAnswers2 = display.newText( "Correct Answers!", display.contentWidth/2, display.contentHeight/1.15, nil, 55 )
correctAnswers2:setTextColor( 0.3, 0.3, 1)

-- timer for each question
clockText = display.newText( "", 80, 700, nil, 55 )
clockText:setTextColor( 0.4, 0, 1)

-- text for timer 
timerText = display.newText( "Timer", 85, 630, nil, 60 )

--text for winner of the game 
endGame = display.newText( "Congradulations You've Won! \n  Press Ctrl + R to restart", display.contentWidth/2, display.contentHeight/1.5, nil, 55 )
endGame:setTextColor( 1, 0.1, 0.3)
endGame.isVisible = false

--text for loser of the game 
endGameBad = display.newText( "Try Again. Press Ctrl + R to restart", display.contentWidth/2, display.contentHeight/1.5, nil, 55 )
endGameBad:setTextColor( 0.3, 0.1, 1)
endGameBad.isVisible = false

--text for answer if user gets it incorrect
theAnswer = display.newText( "", display.contentWidth/1.2, display.contentHeight*2/3, nil, 55 )
theAnswer:setTextColor( 0.4, 0.2, 0.9)

-- text for correct answer
theAnswertitle = display.newText( "Answer was ", display.contentWidth/1.2, display.contentHeight*1.7/3, nil, 55 )
theAnswertitle:setTextColor( 0.4, 0.2, 0.6)

-- happy face for winning
happyFace = display.newImageRect("Images/happy Face.jfif", 225, 225)
happyFace.x = display.contentWidth * 1.7 / 8
happyFace.y = display.contentHeight * 1 / 7

-- sad face for losing
sadFace = display.newImageRect("Images/sad Face.jfif", 225, 225)
sadFace.x = display.contentWidth * 1.7 / 8
sadFace.y = display.contentHeight * 1 / 7

-- add the event listener for the numeric field
numericField:addEventListener( "userInput", NumericFieldListener)

-- call the function to ask the question
AskQuestion()
StartTimer()
-----------------------------------------------------------------------------------------