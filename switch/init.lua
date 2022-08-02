--[[
	A Switch-simulated class to replace long boring if statements.
	
	While this simulated class tries to be performant as much as possible, which does it perfectly, 
	It is just a syntax sugar, which means you won't gain any performance gains from using it
	Use Switch only for debugging and testing purposes.
]]


return function(input  : any) : {[any] : () -> {any?}}
	return function(Cases : {[any] : () -> {any?}})
		local Exist = Cases[input]

		if Exist then
			Exist()
		else
			Cases["default"](input)
		end
	end
end
