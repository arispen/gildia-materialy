# Podstawy programowania w Lua 馃対
## W 7 krokach. 馃く

### 0. 艢rodowisko programistyczne
Kod piszemy i uruchamiamy w replit:
https://replit.com/languages/lua

### 1. Witaj 艣wiecie

```lua
print "hello world"
```

"hello world", czyli "witaj 艣wiecie" to pierwszy program komputerowy, kt贸ry musi napisa膰 ka偶dy pocz膮tkuj膮cy programista. Jedyne co robi, to wy艣wietla tekst.
Tekst wypisujemy na ekranie za pomoc膮 _funkcji_ o nazwie `print`. Tekst, czyli ci膮g znak贸w, musimy poda膰 w cudzys艂owach.

### 2. Darmowy kalkulator

```lua
print(6 / 2 + 1 * 0)
```

Wy艣wietla膰 za pomoc膮 print mo偶emy nie tylko tekst, ale na przyk艂ad wynik dzia艂ania matematycznego. Gdy chcemy wypisa膰 wi臋cej ni偶 sam tekst, musimy _wywo艂a膰_ funkcj臋 `print` przy u偶yciu nawias贸w. Innym przyk艂adem jest wypisanie po艂膮czenia ci膮gu znak贸w i liczb. W Lua 艂膮czymy je za pomoc膮 dw贸ch kropek.

```lua
print("Mam " .. 12 .. " lat.")
```

### 3. Parzyste/niepatrzyste

Opr贸cz standardowych dzia艂a艅 matematycznych takich jak `+ - * /`  istnieje te偶 `%` oznaczaj膮cy _modulo_, czyli reszt臋 z dzielenia. 

```lua
number = 1346
-- % is modulo operator 
modulo = number % 2
isEven = modulo == 0
if isEven == true then
	print("even")
else
	print("odd")
end
```

Instrukcja warunkowa, czyli `if, then, else`  to jedno z podstawowych a zarazem najpot臋偶niejszych narz臋dzi w programowaniu. 

Najpierw definiujemy _zmienn膮_, czyli "pojemnik" na dane. Nazwiemy j膮 sobie "number" (zmienne mo偶emy nazywa膰 dowolnie) i przypiszemy jej warto艣膰 1346. Do drugiej zmiennej przypiszemy reszt臋 z dzielenia przez 2. Do trzeciej zmiennej przypisujemy wynik por贸wnania zmiennej "modulo" z 0. Zwr贸膰 uwag臋 na to, 偶e `=` s艂u偶y do przypisywania do zmiennych, a `==` do por贸wnywania warto艣ci.

Zmienna, kt贸ra przechowuje warto艣膰 logiczn膮, zwan膮 te偶 "boolean" mo偶e mie膰 warto艣膰 _prawda_ albo _fa艂sz_, czyli `true` albo `false`. 

Za pomoc膮 `if...then` sprawdzamy, czy isEven r贸wna si臋 `true`. Je偶eli tak, to wypisujemy "even". Blok `else` definiuje co ma wydarzy膰 si臋 w przeciwnym razie. W naszym przypadku wypiszemy wtedy "odd". Na ko艅cu stawiamy `end` aby zamkn膮膰 nasz膮 instrukcj臋 warunkow膮.


### 4. Dziesi臋ciu krasnolud贸w

Obok instrukcji warunkowych, drugim podstawowym narz臋dziem w programowaniu jest _p臋tla_. Jak sama nazwa wskazuje, pozwala ona na wykonanie czynno艣ci wiele razy, czyli w p臋tli.

```lua
numberOfDwarfs = 10

repeat
	print("there are " .. numberOfDwarfs .. " dwarfs in the tavern")
	-- decrease number of dwarfs by 1
	numberOfDwarfs = numberOfDwarfs - 1
	print("one dwarf has gone home")
until numberOfDwarfs == 1
```

Zdefiniujmy liczb臋 krasnolud贸w. Nast臋pnie powtarzamy wypisanie informacji o aktualnej liczbie krasnolud贸w w tawernie, zmniejszamy ich liczb臋 o jeden oraz wypisujemy, 偶e jeden poszed艂 do domu. Powtarzamy, dop贸ki zostanie 1 krasnolud (liczba krasnolud贸w b臋dzie r贸wna 1).

### 5. Pole tr贸jk膮ta

Funkcje pozwalaj膮 nam zdefiniowa膰 fragment kodu, kt贸ry b臋dziemy potem u偶ywa膰 w wielu miejscach. Zdefinujmy funkcj臋 do obliczania pola tr贸jk膮ta.

```lua
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

```

Definiujemy funkcj臋 o nazwie `areaOfTriangle` , kt贸ra przyjmuje dwa "argumenty", czyli dane wej艣ciowe. W tym wypadku podajemy d艂ugo艣膰 podstawy i wysoko艣膰. Nast臋pnie wywo艂ujemy funkcj臋, a to co zwr贸ci, przypisujemy do zmiennej. Na ko艅cu wypisujemy jej warto艣膰.

### 6. Ekwipunek
Zaprogramujemy skrypt do obs艂ugi ekwipunku bohatera gry komputerowej. W tym celu u偶yjemy zaawansowanej struktury danych o nazwie _tablica_. Tablice to takie pojemniki na dane, do kt贸rych mo偶emy schowa膰 wi臋cej zmiennych. Mo偶na te偶 tworzy膰 za ich pomoc膮 listy.

```lua
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

```
Najpierw definiujemy zmienn膮 - tablic臋, kt贸ra nam pos艂u偶y za ewkipunek, czyli list臋 przedmiot贸w. Nast臋pnie definiujemy ka偶dy przedmiot jako tablic臋 z nazwanymi polami i przypisujemy im warto艣ci. Wstawiamy oba przedmioty do ekwipunku. Na koniec za pomoc膮 _print_ sprawdzamy, czy wszystko dzia艂a.

### 7. Walka z goblinem

Ostatni punkt naszego kr贸tkiego kursu, to program, kt贸ry bez problemu m贸g艂by funkcjonowa膰 jako cz臋艣膰 kodu gry komputerowej. W pierwszych jego linijkach widzimy przyk艂ad wielowierszowego komentarza w kodzie :)

```lua
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
```

Definiujemy dwie globalne (dost臋pne wsz臋dzie w kodzie) _tablice_ reprezentuj膮ce bohatera i goblina. Nast臋pnie definiujemy nasz膮 g艂贸wn膮 funkcj臋, kt贸ra rozstrzygnie pojedynek dw贸ch postaci. Jako argumenty przyjmuje obiekt/tablic臋 atakuj膮cego oraz broni膮cego. Definiujemy zmienn膮 lokaln膮, kt贸ra b臋dzie dost臋pna tylko wewn膮trz funkcji za pomoc膮 s艂owa _local_. Pos艂u偶y nam jako licznik tur w walce (bo to walka turowa 馃槈). 

Nast臋pnie rozpocznynamy wykonywanie tur w p臋tli `repeat...until`. Za pomoc膮 `if` oraz `%` sprawdzamy, czy jest to tura atakuj膮cego a potem czy jest to tura broni膮cego. Odpowiednio zmniejszamy hp danej postaci o obra偶enia jego przeciwnika. Tury przetwarzamy w p臋tli, dop贸ki hp jednego z walcz膮cych nie spadnie do 0 lub mniej. Na ko艅cu zwracamy zwyci臋zc臋 walki.

Koniec. Wi臋cej przyk艂ad贸w kodu w Lua: https://learnxinyminutes.com/docs/lua/
