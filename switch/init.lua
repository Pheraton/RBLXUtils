--[[
	A Switch-simulated class to replace long boring if statements.
	
	While this simulated class tries to be performant as much as possible, which does it perfectly, 
	It is just a syntax sugar, which means you won't gain any performance gains from using it
	
	Based on our benchmarking, this implemention is only slower slighty from if-statements. The benchmarking results will be documented soon.
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
