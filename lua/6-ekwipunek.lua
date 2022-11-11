-- define table for inventory (list of items)
inventory = {}

-- define item as table
item1 = {
	-- and assign values to properties
	name = "Magic Armor",
	itemType = "armor",
	defense = 10
}
-- and another item
item2 = {
	name = "Magic Sword",
	itemType = "weapon",
	damage = 5
}
-- insert items to inventory
table.insert(inventory, item1)
table.insert(inventory, item2)
--print items in inventory and their properties
print(inventory[1]["name"], inventory[1]["itemType"], inventory[1]["defense"])
print(inventory[2]["name"], inventory[2]["itemType"], inventory[2]["damage"])