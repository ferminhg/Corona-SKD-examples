display.setStatusBar( display.HiddenStatusBar )

director = require ("director")

local mainGroup = display.newGroup()

local function main()
	mainGroup:insert(director.directorView)
	director:changeScene('s1')
	return true
end

main()
