module( ..., package.seeall )

function new()
	localGroup = display.newGroup()

	display.setStatusBar( display.HiddenStatusBar )

	local function pageRight(event)
		if event.phase == 'ended' then
			--cambia pagina hacia delante
			director:changeScene('s3', "moveFromRight")
		end
		return true
	end

	local function pageLeft(event)
		if event.phase == 'ended' then
			--cambia pagina hacia atras
			director:changeScene('s1', "moveFromLeft")
		end
		return true
	end

	local bkg = display.newImageRect( "escena2.jpg", 1024, 768 )
	bkg.x = 512
	bkg.y = 384

	local arrowR = display.newImageRect( "arrow.png", 50, 50)
	arrowR.x = 974
	arrowR.y = 726

	local arrowL = display.newImageRect( "arrow.png", 50, 50)
	arrowL.x = 54
	arrowL.y = 726
	arrowL.xScale = -1

	arrowR:addEventListener( "touch", pageRight )
	arrowL:addEventListener( "touch", pageLeft )

	localGroup:insert(bkg)
	localGroup:insert(arrowR)
	localGroup:insert(arrowL)

	return localGroup

end