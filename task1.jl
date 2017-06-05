#sum of numbers from a string
function strValSum()
	str = readline()
	sum = 0
	
@time for i = 1:endof(str)-2
		sum += parse(Int, str[i])
	  end
	
	println("Result: $(sum)")
end

strValSum()

readline()