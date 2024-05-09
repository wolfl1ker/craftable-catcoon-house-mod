--**CURENT VERSION: 1.1

PrefabFiles = {
	"catcoonden",
}

Assets = {
	Asset("ATLAS", "images/catcoonden.xml"), --1.3 v
}

--Strings and Recipes;
STRINGS = GLOBAL.STRINGS
RECIPETABS = GLOBAL.RECIPETABS
Recipe = GLOBAL.Recipe
Ingredient = GLOBAL.Ingredient
TECH = GLOBAL.TECH
TUNING = GLOBAL.TUNING

TUNING.GH_CATCOON_SPAWNS =  GetModConfigData("Spawns - Dozens (x10)")*10+GetModConfigData("Spawns - Units (x1)") --// GH_ for no errors with other mods for catcoons 
STRINGS.RECIPE_DESC.CATCOONDEN = "Build the Catcoon house!"
STRINGS.NAMES.CATCOONDEN = "Home of the Catcoons"
GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.CATCOONDEN = "There is Catcoons!"

-- Next code is for better Recipe Container
--// GH_ for no errors with other mods for catcoons 
TUNING.GH_CATCOON_ROPES =  GetModConfigData("Ropes") or 0
TUNING.GH_CATCOON_LOGS = GetModConfigData("Logs") or 0
TUNING.GH_CATCOON_BEFALOWOOL = GetModConfigData("Beefalo Wools") or 0
TUNING.GH_CATCOON_COONTAIL = GetModConfigData("Coontail") or 0
TUNING.GH_CATCOON_FISH = GetModConfigData("Fish") or 0

-- MAKING RECIPE PROPER!!!

local catcoon_ingredients = {}
local function addIngredientToRec(name, amount)
    table.insert(catcoon_ingredients, Ingredient(name, amount))
end

if TUNING.GH_CATCOON_LOGS > 0 then
    addIngredientToRec("log", TUNING.GH_CATCOON_LOGS)
else
    addIngredientToRec("log", 1)
end

if TUNING.GH_CATCOON_ROPES > 0 then
    addIngredientToRec("rope", TUNING.GH_CATCOON_ROPES)
end

if TUNING.GH_CATCOON_BEFALOWOOL > 0 then
    addIngredientToRec("beefalowool", TUNING.GH_CATCOON_BEFALOWOOL)
end

if TUNING.GH_CATCOON_COONTAIL > 0 then
    addIngredientToRec("coontail", TUNING.GH_CATCOON_COONTAIL)
end

if TUNING.GH_CATCOON_FISH > 0 then
    addIngredientToRec("fish", TUNING.GH_CATCOON_FISH)
end

local catcoonden = GLOBAL.Recipe("catcoonden", catcoon_ingredients, RECIPETABS.TOWN, TECH.NONE, "homesign_placer")
catcoonden.atlas = "images/catcoonden.xml"	
-- ** END OF MAKING RECIPE PROPER!
