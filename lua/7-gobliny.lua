--[[
Script for resolving a fight.
version 0.1.0
--]]

-- define global tables for our fighters
hero = {
	name = "Hero",
	hp = 21,
	damage = 4,
	attackSpeed = 5
}
goblin = {
	name = "Goblin",
	hp = 8,
	damage = 3,
	attackSpeed = 2 -- less means faster
}
-- define function to handle fights
function fight(attacker, defender)
	-- local variable to count turns
	local turn = 0
	-- run turns in a loop
	repeat
		-- increment the turn (next turn starts)
		turn = turn + 1
		-- attacker's turn is when turn number 
		-- is a multiple of attacker's attack speed
		if turn % attacker.attackSpeed == 0 then
			-- decrease defender's hp by attacker's damage
			defender.hp = defender.hp - attacker.damage
			print(attacker.name .. " attacks" )
			print(defender.name .. " has " .. defender.hp .. " hp left.")
		end
		-- defender's turn is when turn number 
		-- is a multiple of defender's attack speed
		if turn % defender.attackSpeed == 0 then
			-- decrease attacker's hp by defender's damage
			attacker.hp = attacker.hp - defender.damage
			print(defender.name .. " attacks" )
			print(attacker.name .. " has " .. attacker.hp .. " hp left.")
		end

	-- run turns until someone's hp is less or equal 0
	until attacker.hp <= 0 or defender.hp <= 0
	-- if attacker is dead
	if defender.hp <= 0 then
		-- return winner
		return attacker
	else
		-- return winner
		return defender
	end
end

winner = fight(hero, goblin)
-- print winner's name
print("the winner is " .. winner.name)