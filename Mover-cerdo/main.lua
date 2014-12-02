
local object = display.newImageRect( "cerdito.png", 300 , 230 )

object.x = 320
object.y = 480

local object2 = display.newImageRect( "cerdito.png", 300 , 230 )

object2.x = 120
object2.y = 480

local function functionMoveObject(event)
	
	if(event.phase == "began") then
		print ("began phase")
		display.getCurrentStage( ):setFocus( event.target)
		event.target.isFocus = true
		event.target:toFront()
		event.target.markX = event.target.x
		event.target.markY = event.target.y

	elseif event.target.isFocus then
		if (event.phase == "moved") then

			print ("moved phase:".. event.x .. "#" .. event.y)
			local x = (event.x - event.target.markX) + event.target.markX
			local y = (event.y - event.target.markY) + event.target.markY
			event.target.x , event.target.y = x, y

		elseif(event.phase == "ended" or event.phase == "cancelled") then

			print("ended or cancelled phase")
			display.getCurrentStage( ):setFocus( nil )
			event.target.isFocus = false

		end
	end

	return true;
end

object:addEventListener( "touch", functionMoveObject)
object2:addEventListener( "touch", functionMoveObject)
