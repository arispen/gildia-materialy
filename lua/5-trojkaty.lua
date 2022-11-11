-- define the function
function areaOfTriangle(a, h)
	return (a * h) / 2
end

-- define variables
myTriangleWidth = 7
myTriangleHeight = 9

-- assign value returned form function to variable
result = areaOfTriangle(myTriangleWidth, myTriangleHeight)
-- print it
print(result)