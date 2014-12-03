module( ..., package.seeall )

function new()
	localGroup = display.newGroup()

	display.setStatusBar( display.HiddenStatusBar )

	_W = display.contentWidth
	_H = display.contentHeight

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

	local bkg = display.newImageRect( "escena2.jpg",  _W, _H )
	bkg.x = _W/2
	bkg.y = _H/2

	local arrowR = display.newImageRect( "arrow.png", 50, 50)
	arrowR.x = _W - 50
	arrowR.y = _H - 50

	local arrowL = display.newImageRect( "arrow.png", 50, 50)
	arrowL.x = 54
	arrowL.y = _H - 50
	arrowL.xScale = -1

	arrowR:addEventListener( "touch", pageRight )
	arrowL:addEventListener( "touch", pageLeft )

	localGroup:insert(bkg)
	localGroup:insert(arrowR)
	localGroup:insert(arrowL)

	return localGroup

end