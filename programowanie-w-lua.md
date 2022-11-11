# Podstawy programowania w Lua 🌝
## W 7 krokach. 🤯

### 0. Środowisko programistyczne
Kod piszemy i uruchamiamy w replit:
https://replit.com/languages/lua

### 1. Witaj świecie

```lua
print "hello world"
```

"hello world", czyli "witaj świecie" to pierwszy program komputerowy, który musi napisać każdy początkujący programista. Jedyne co robi, to wyświetla tekst.
Tekst wypisujemy na ekranie za pomocą _funkcji_ o nazwie `print`. Tekst, czyli ciąg znaków, musimy podać w cudzysłowach.

### 2. Darmowy kalkulator

```lua
print(6 / 2 + 1 * 0)
```

Wyświetlać za pomocą print możemy nie tylko tekst, ale na przykład wynik działania matematycznego. Gdy chcemy wypisać więcej niż sam tekst, musimy _wywołać_ funkcję `print` przy użyciu nawiasów. Innym przykładem jest wypisanie połączenia ciągu znaków i liczb. W Lua łączymy je za pomocą dwóch kropek.

```lua
print("Mam " .. 12 .. " lat.")
```

### 3. Parzyste/niepatrzyste

Oprócz standardowych działań matematycznych takich jak `+ - * /`  istnieje też `%` oznaczający _modulo_, czyli resztę z dzielenia. 

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

Instrukcja warunkowa, czyli `if, then, else`  to jedno z podstawowych a zarazem najpotężniejszych narzędzi w programowaniu. 

Najpierw definiujemy _zmienną_, czyli "pojemnik" na dane. Nazwiemy ją sobie "number" (zmienne możemy nazywać dowolnie) i przypiszemy jej wartość 1346. Do drugiej zmiennej przypiszemy resztę z dzielenia przez 2. Do trzeciej zmiennej przypisujemy wynik porównania zmiennej "modulo" z 0. Zwróć uwagę na to, że `=` służy do przypisywania do zmiennych, a `==` do porównywania wartości.

Zmienna, która przechowuje wartość logiczną, zwaną też "boolean" może mieć wartość _prawda_ albo _fałsz_, czyli `true` albo `false`. 

Za pomocą `if...then` sprawdzamy, czy isEven równa się `true`. Jeżeli tak, to wypisujemy "even". Blok `else` definiuje co ma wydarzyć się w przeciwnym razie. W naszym przypadku wypiszemy wtedy "odd". Na końcu stawiamy `end` aby zamknąć naszą instrukcję warunkową.


### 4. Dziesięciu krasnoludów

Obok instrukcji warunkowych, drugim podstawowym narzędziem w programowaniu jest _pętla_. Jak sama nazwa wskazuje, pozwala ona na wykonanie czynności wiele razy, czyli w pętli.

```lua
numberOfDwarfs = 10

repeat
	print("there are " .. numberOfDwarfs .. " dwarfs in the tavern")
	-- decrease number of dwarfs by 1
	numberOfDwarfs = numberOfDwarfs - 1
	print("one dwarf has gone home")
until numberOfDwarfs == 1
```

Zdefiniujmy liczbę krasnoludów. Następnie powtarzamy wypisanie informacji o aktualnej liczbie krasnoludów w tawernie, zmniejszamy ich liczbę o jeden oraz wypisujemy, że jeden poszedł do domu. Powtarzamy, dopóki zostanie 1 krasnolud (liczba krasnoludów będzie równa 1).

### 5. Pole trójkąta

Funkcje pozwalają nam zdefiniować fragment kodu, który będziemy potem używać w wielu miejscach. Zdefinujmy funkcję do obliczania pola trójkąta.

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

Definiujemy funkcję o nazwie `areaOfTriangle` , która przyjmuje dwa "argumenty", czyli dane wejściowe. W tym wypadku podajemy długość podstawy i wysokość. Następnie wywołujemy funkcję, a to co zwróci, przypisujemy do zmiennej. Na końcu wypisujemy jej wartość.

### 6. Ekwipunek
Zaprogramujemy skrypt do obsługi ekwipunku bohatera gry komputerowej. W tym celu użyjemy zaawansowanej struktury danych o nazwie _tablica_. Tablice to takie pojemniki na dane, do których możemy schować więcej zmiennych. Można też tworzyć za ich pomocą listy.

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
Najpierw definiujemy zmienną - tablicę, która nam posłuży za ewkipunek, czyli listę przedmiotów. Następnie definiujemy każdy przedmiot jako tablicę z nazwanymi polami i przypisujemy im wartości. Wstawiamy oba przedmioty do ekwipunku. Na koniec za pomocą _print_ sprawdzamy, czy wszystko działa.

### 7. Walka z goblinem

Ostatni punkt naszego krótkiego kursu, to program, który bez problemu mógłby funkcjonować jako część kodu gry komputerowej. W pierwszych jego linijkach widzimy przykład wielowierszowego komentarza w kodzie :)

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

Definiujemy dwie globalne (dostępne wszędzie w kodzie) _tablice_ reprezentujące bohatera i goblina. Następnie definiujemy naszą główną funkcję, która rozstrzygnie pojedynek dwóch postaci. Jako argumenty przyjmuje obiekt/tablicę atakującego oraz broniącego. Definiujemy zmienną lokalną, która będzie dostępna tylko wewnątrz funkcji za pomocą słowa _local_. Posłuży nam jako licznik tur w walce (bo to walka turowa 😉). 

Następnie rozpocznynamy wykonywanie tur w pętli `repeat...until`. Za pomocą `if` oraz `%` sprawdzamy, czy jest to tura atakującego a potem czy jest to tura broniącego. Odpowiednio zmniejszamy hp danej postaci o obrażenia jego przeciwnika. Tury przetwarzamy w pętli, dopóki hp jednego z walczących nie spadnie do 0 lub mniej. Na końcu zwracamy zwycięzcę walki.

Koniec. Więcej przykładów kodu w Lua: https://learnxinyminutes.com/docs/lua/
