numberOfDwarfs = 10

repeat
	print("there are " .. numberOfDwarfs .. " dwarfs in the tavern")
	-- decrease number of dwarfs by 1
	numberOfDwarfs = numberOfDwarfs - 1
	print("one dwarf has gone home")
until numberOfDwarfs == 1