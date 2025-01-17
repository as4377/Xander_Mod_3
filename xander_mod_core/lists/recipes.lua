--==========  ALL  ==========
--Format: name, category, time, enabled at start, ingredients lsit, results list
xm_all_recipes_to_impose = {}




--==========  MATERIAL  ==========
local xm_material_recipes = {}

xm_material_recipes["raw-material"] = {
	{"raw-iron-0", "smelting", 27, false, {{"iron-ore", 6}, {"limestone", 1}}, {{"raw-iron", 9}}},
	{"raw-iron-1", "refining-electric", 36, false, {{"iron-ore", 6}, {"coke", 3}, {"limestone", 1}}, {{"raw-iron", 12}}},
	--{"raw-iron-2", "refining-electric", 4, false, {{"conc-hematite", 1}, {type = "fluid", name = "carbon-monoxide", amount = 10}}, {{"raw-iron", 1}, {type = "fluid", name = "carbon-dioxide", amount = 10}}},
}

xm_material_recipes["concentrate"] = {
	{"gravel", "washing", 1, false, {{"stone", 1}}, {{"gravel", 1}}},
	{"limestone-0", "washing", 2, false, {{"stone", 4}}, {{"limestone", 3}}},
	{"magnesite", "washing", 4, false, {{"stone", 3}, {type = "fluid", name = "water", amount = 10}}, {{"magnesite", 1}}},
	{"sand-0", "washing", 1, false, {{"sand-heavy", 1}, {type = "fluid", name = "water", amount = 10}}, {{"sand", 1}}},
	{"clay-0", "hand", 0.5, true, {{"laterite", 1}}, {{"clay", 1}}},--1
	{"clay-1", "washing", 1, false, {{"laterite", 1}, {type = "fluid", name = "water", amount = 20}}, {{"clay", 1}}},
	{"kaolin", "chemistry", 2, false, {{"clay", 2}, {type = "fluid", name = "steam", amount = 5}}, {{"kaolin", 1}}},
	{"conc-bauxite", "washing", 2, false, {{"laterite", 2}, {type = "fluid", name = "water", amount = 20}}, {{"conc-bauxite", 1}}},
	{"conc-fluorite-0", "washing", 12, false, {{"phosphorite", 12}, {type = "fluid", name = "water", amount = 20}}, {{"conc-fluorite", 6}}},
	--{"conc-fluorite-1", "washing", 12, false, {{"phosphorite", 12}, {"surfactant", 1}, {type = "fluid", name = "water", amount = 20}}, {{"conc-fluorite", 12}}},
	{"conc-scheelite-0", "washing", 6, false, {{"skarn", 4}, {type = "fluid", name = "water", amount = 40}}, {{"conc-scheelite", 1}}},
	--{"conc-scheelite-1", "washing", 8, false, {{"skarn", 4}, {"surfactant", 1}, {type = "fluid", name = "water", amount = 40}}, {{"conc-scheelite", 2}}},
	{"conc-millerite-0", "washing", 4, false, {{"igneous-sulfide", 3}, {type = "fluid", name = "water", amount = 30}}, {{"conc-millerite", 1}}},
	--{"conc-millerite-1", "washing", 8, false, {{"igneous-sulfide", 4}, {"surfactant", 1}, {type = "fluid", name = "water", amount = 40}}, {{"conc-millerite", 4}}}
}

xm_material_recipes["oxide"] = {
	--{"aluminum-hydroxide", "chemistry", 4, false, {{"conc-bauxite", 1}, {"sodium-hydroxide", 2}, {type = "fluid", name = "water", amount = 20}}, {{"aluminum-hydroxide", 2}}},
	--{"nickel-oxide", "refining-electric", 4, false, {{"conc-millerite", 1}, {type = "fluid", name = "oxygen", amount = 10}}, {{"nickel-oxide", 2}, {type = "fluid", name = "sulfur-dioxide", amount = 10}}},
	{"tungsten-oxide", "chemistry", 3, false, {{"conc-scheelite", 1}, {type = "fluid", name = "sulfuric-acid", amount = 10}}, {{"tungsten-oxide", 1}}}
}

xm_material_recipes["ingot"] = {
	--{"aluminum", "refining-electric", 60, false, {{"aluminum-hydroxide", 12}, {"cryolite", 1}, {"graphite", 6}}, {{"aluminum", 12}, {type = "fluid", name = "carbon-dioxide", amount = 60}}},
	{"nickel-0", "refining", 5, false, {{"conc-millerite", 1}}, {{"nickel", 1}}},
	--{"nickel-1", "chemistry", 2, false, {{"oxide-nickel", 1}, {type = "fluid", name = "carbon-monoxide", amount = 12}}, {{"nickel", 1}, {type = "fluid", name = "carbon-monoxide", amount = 8}}},
	{"tin-0", "smelting", 4, true, {{"skarn", 2}}, {{"tin", 1}}},
	{"tin-1", "refining", 24, false, {{"skarn", 12}, {"sodium-carbonate", 1}}, {{"tin", 8}}},--evaporites
	{"tungsten", "refining-electric", 2, false, {{"tungsten-oxide", 1}, {type = "fluid", name = "hydrogen", amount = 30}}, {{"tungsten", 1}}},
	{"lead-0", "smelting", 4, true, {{"massive-sulfide", 2}}, {{"lead", 1}}},
	{"lead-1", "refining", 24, false, {{"massive-sulfide", 12}, {"sodium-carbonate", 1}}, {{"lead", 8}}},--evaporites
	{"solder-0", "smelting", 5, false, {{"tin", 3}, {"lead", 2}}, {{"solder", 5}}}
}

xm_material_recipes["stock"] = {
	{"iron-plate", "smelting", 6, true, {{"iron-ore", 1}}, {{"iron-plate", 1}}},--1
	{"iron-plate-1", "smelting", 2, false, {{"raw-iron", 1}}, {{"iron-plate", 1}}},
	{"stock-cast-iron-0", "smelting", 4, true, {{"iron-ore", 1}}, {{"stock-cast-iron", 1}}},--1
	{"stock-cast-iron-1", "smelting", 1, false, {{"raw-iron", 1}}, {{"stock-cast-iron", 1}}},
	--{"stock-cast-iron-2", "refining-electric", 12, false, {{"raw-iron", 7}, {"silicon", 1}}, {{"stock-cast-iron", 8}}},
	{"steel-plate", "smelting", 8, false, {{"iron-plate", 4}}, {{"steel-plate", 1}}},--4
	{"steel-plate-1", "refining", 24, false, {{"raw-iron", 18}, {"clay", 1}}, {{"steel-plate", 6}}},--3 --> final version = 2
	{"steel-plate-2", "refining-electric", 18, false, {{"raw-iron", 12}, {"magnesite", 1}, {type = "fluid", name = "oxygen", amount = 12}}, {{"steel-plate", 6}}},--2
	{"stock-alloy-0", "refining-electric", 12, false, {{"steel-plate", 2}, {"tungsten", 1}, {"nickel", 1}}, {{"stock-alloy", 3}}},--2
	--{"stock-stainless", "refining-electric", 12, false, {{"steel-plate", 2}, {"chromium", 1}, {"nickel", 1}}, {"stock-stainless", 3}}--2
	
	{"copper-plate", "smelting", 4, true, {{"copper-ore", 1}}, {{"copper-plate", 1}}},--1
	{"copper-plate-1", "refining", 36, false, {{"copper-ore", 6}, {"limestone", 1}}, {{"copper-plate", 9}}},
	{"stock-bronze-0", "kiln", 20, true, {{"copper-ore", 5}, {"skarn", 2}}, {{"stock-bronze", 4}}},--1.5
	{"stock-bronze-1", "smelting", 16, false, {{"copper-plate", 8}, {"tin", 1}}, {{"stock-bronze", 8}}},--1.125
	--{"stock-bronze-2", "refining-electric", 8, false, {{"copper-plate", 6}, {"nickel", 1}, {"aluminum", 1}}, {{"stock-bronze", 8}}},--1
	{"stock-cupronickel", "refining", 10, false, {{"copper-plate", 3}, {"nickel", 2}}, {{"stock-cupronickel", 5}}},--1
	--{"stock-duralumin", "refining", 20, false, {{"aluminum", 19}, {"copper-plate", 1}}, {{"stock-duralumin", 20}}},--1
	--{"stock-titanium", "refining", 20, false, {{"titanium", 19}, {"aluminum", 1}}, {{"stock-titanium", 20}}},--1
	--{"silicon-boule", "refining-electric", 24, false, {{"silicon", 6}, {"boron-oxide", 1}, {"phosphorus-oxide", 1}, {type = "fluid", name = "hydrogen-chloride", amount = 20}}, {{"silicon-boule", 2}}},--4
}

xm_material_recipes["nonmetal"] = {
	{"coke", "smelting", 8, false, {{"coal", 4}}, {{"coke", 9}}},--1
	{"sulfur-0", "chemistry", 1, false, {{"evaporites", 1}, {type = "fluid", name = "steam", amount = 5}}, {{"sulfur", 1}}},--1
	{"graphite-0", "washing", 2, false, {{"stone", 3}, {type = "fluid", name = "sulfuric-acid", amount = 5}}, {{"graphite", 1}}}--1
}

xm_material_recipes["terrain"] = {
	{"landfill", "washing", 3, false, {{"stone", 12}, {"gravel", 6}}, {{"landfill", 1}}},--18
	{"cement", "refining", 9, false, {{"limestone", 2}, {"sand", 1}}, {{"cement", 3}}},--1
	{"concrete", "crafting-with-fluid", 10, false, {{"gravel", 5}, {"cement", 4}, {"steel-rod", 2}, {type = "fluid", name = "water", amount = 20}}, {{"concrete", 10}}},--1
	{"refined-concrete", "crafting-with-fluid", 15, false, {{"gravel", 3}, {"fiber-glass", 2}, {"cement", 4}, {"steel-rod", 4}, {type = "fluid", name = "water", amount = 10}}, {{"refined-concrete", 5}}}--2
}

xm_material_recipes["ceramic"] = {
	{"brick-clay-0", "kiln", 3, true, {{"clay", 1}}, {{"brick-clay", 1}}},--1
	{"brick-clay-1", "refining", 4, false, {{"clay", 1}, {"kaolin", 1}}, {{"brick-clay", 2}}},--1
	{"brick-magnesia", "refining", 4, false, {{"magnesite", 1}, {"graphite", 1}}, {{"brick-magnesia", 1}}},--2
	
	{"glass-0", "smelting", 24, false, {{"sand", 6}, {"potash", 1}, {"limestone", 1}}, {{"glass", 6}}},--1.333(1/72)
	{"glass-1", "refining", 24, false, {{"sand", 6}, {"sodium-carbonate", 1}, {"limestone", 1}}, {{"glass", 8}}},--1
	{"fiber-glass", "refining", 2, false, {{"glass", 1}}, {{"fiber-glass", 2}}},--0.5
	{"porcelain", "refining", 12, false, {{"kaolin", 1}, {"sand", 1}}, {{"porcelain", 2}}}--2
}

xm_material_recipes["salt"] = {
	{"potash", "kiln", 3, false, {{"charcoal", 1}}, {{"potash", 3}}},
	{"saltpeter", "washing", 2, false, {{"evaporites", 3}, {type = "fluid", name = "water", amount = 10}}, {{"saltpeter", 2}}},--1
	{"sodium-carbonate", "washing", 4, false, {{"evaporites", 2}, {type = "fluid", name = "water", amount = 30}}, {{"sodium-carbonate", 1}}},--1
	--{"cryolite-0", "chemistry", 6, false, {{"conc-fluorite", 3}, {"sodium-hydroxide", 3}, {"aluminum-hydroxide", 1}, {type = "fluid", name = "sulfuric-acid", amount = 30}}, {{type = "fluid", name = "hydrogen-fluoride", amount = 6}}},--2
	--{"cryolite", "chemistry", 6, false, {{"sodium-hydroxide", 3}, {"aluminum-hydroxide", 1}, {type = "fluid", name = "hydrogen-fluoride", amount = 60}}, {{type = "fluid", name = "hydrogen-fluoride", amount = 6}}},--2
}

xm_material_recipes["organic"] = {
	{"charcoal", "kiln", 4, true, {{"wood", 2}}, {{"charcoal", 8}}},--(1/4)
	{"resin", "kiln", 2, false, {{"wood", 1}}, {{"resin", 4}}},--(1/4)
	{"rubber-raw", "basic-machine", 8, false, {{"wood", 1}}, {{"rubber-raw", 12}}},--(1/12)
	{"rubber-sbr", "chemistry", 9, false, {{type = "fluid", name = "light-oil", amount = 10}, {type = "fluid", name = "petroleum-gas", amount = 20}}, {{"rubber-sbr", 3}}},--1
	
	{"phenol-0", "chemistry", 2, false, {{"coal", 1}, {type = "fluid", name = "water", amount = 10}}, {{"phenol", 1}}},--1
	--{"surfactant-0", "chemistry", 2, false, {{"sulfur", 1}, {type = "fluid", name = "heavy-oil", amount = 10}}, {{"surfactant", 2}}}--1
}

xm_material_recipes["polymer"] = {
	{"rubber-vulcanized-0", "chemistry", 5, false, {{"rubber-raw", 3}, {"sulfur", 1}}, {{"rubber-vulcanized", 4}}},--0.25(1/16)
	{"rubber-vulcanized-1", "chemistry", 3, false, {{"rubber-sbr", 4}, {"sulfur", 1}, {"graphite", 1}}, {{"rubber-vulcanized", 6}}},--1
	--{"plastic-pellets", "chemistry", 2, false, {{type = "fluid", name = "petroleum-gas", amount = 20}}, {{"plastic-pellets", 1}}},--1
	--{"plastic-bar", "machine", 1, false, {{"plastic-pellets", 1}}, {{"plastic-bar", 1}}}--1
}

xm_material_recipes["energetic"] = {
	{"powder-black-0", "basic-machine", 4, false, {{"charcoal", 1}, {"evaporites", 4}}, {{"powder-black", 4}}},--1(1/24)
	{"powder-black-1", "machine", 6, false, {{"coal", 1}, {"sulfur", 1}, {"saltpeter", 6}}, {{"powder-black", 8}}},--1
	--{"powder-smokeless-0", "machine", 6, false, {{"explosives", 3}, {type = "fluid", name = "heavy-oil", amount = 10}}, {{"powder-smokeless", 4}}},--1
	{"explosives", "chemistry", 6, false, {{type = "fluid", name = "light-oil", amount = 10}, {type = "fluid", name = "nitric-acid", amount = 30}}, {{"explosives", 2}}}--2
}

xm_all_recipes_to_impose["material"] = xm_material_recipes




--==========  FLUID  ==========
local xm_fluid_recipes = {}

xm_fluid_recipes["fluid-element"] = {
	{"distillation-air", "oil-processing", 25, false, {}, {{type = "fluid", name = "nitrogen", amount = 40}, {type = "fluid", name = "oxygen", amount = 10}}}
}

xm_fluid_recipes["fluid-hydrogenated"] = {
	{"ammonia", "chemistry", 12, false, {{type = "fluid", name = "nitrogen", amount = 10}, {type = "fluid", name = "hydrogen", amount = 30}}, {{type = "fluid", name = "ammonia", amount = 40}}},--1
	--{"hydrogen-fluoride", "chemistry", 2, false, {{"conc-fluorite", 1}, {type = "fluid", name = "sulfuric-acid", amount = 10}}, {{type = "fluid", name = "hydrogen-fluoride", amount = 20}}},--1
	--{"hydrogen-chloride", "chemistry", 2, false, {{type = "fluid", name = "hydrogen", amount = 10}, {type = "fluid", name = "chlorine", amount = 10}}, {{type = "fluid", name = "hydrogen-chloride", amount = 20}}},--1
}

xm_fluid_recipes["fluid"] = {
	{"distillation-water", "oil-processing", 5, false, {{type = "fluid", name = "water", amount = 50}}, {{type = "fluid", name = "water-brine", amount = 10, fluidbox_index = 1}, {type = "fluid", name = "water-distilled", amount = 40, fluidbox_index = 2}}},
	{"sulfuric-acid", "chemistry", 4, false, {{"sulfur", 1}, {"saltpeter", 2}, {type = "fluid", name = "water", amount = 20}}, {{type = "fluid", name = "sulfuric-acid", amount = 10}}},--1
	{"nitric-acid-0", "chemistry", 4, false, {{"saltpeter", 2}, {type = "fluid", name = "sulfuric-acid", amount = 10}}, {{type = "fluid", name = "nitric-acid", amount = 20}}},--1
	{"electrolysis-acid", "electrolysis", 12, false, {{type = "fluid", name = "water", amount = 60}, {type = "fluid", name = "sulfuric-acid", amount = 1}}, {{type = "fluid", name = "hydrogen", amount = 40}, {type = "fluid", name = "oxygen", amount = 20}}},
	--{"electrolysis-base", "electrolysis", 12, false, {{type = "fluid", name = "water-distilled", amount = 1200}, {"sodium-hydroxide", 1}}, {{type = "fluid", name = "hydrogen", amount = 800}, {type = "fluid", name = "oxygen", amount = 400}}},
	{"electrolysis-brine", "electrolysis", 12, false, {{type = "fluid", name = "water-brine", amount = 20}}, {{"sodium-hydroxide", 1}, {type = "fluid", name = "hydrogen", amount = 10}, {type = "fluid", name = "chlorine", amount = 10}}},
	--{"hydrochloric-acid-0", "chemistry", 1, false, {{type = "fluid", name = "water-brine", amount = 20}, {type = "fluid", name = "sulfuric-acid", amount = 10}}, {{type = "fluid", name = "hydrochloric-acid", amount = 20}}},--1
}

xm_fluid_recipes["fluid-hydrocarbon"] = {
	{"basic-oil-processing", "oil-processing", 10, false, {{type = "fluid", name = "crude-oil", amount = 100}}, {{type = "fluid", name = "heavy-oil", amount = 30, fluidbox_index = 1}, {type = "fluid", name = "light-oil", amount = 40, fluidbox_index = 2}, {type = "fluid", name = "petroleum-gas", amount = 30, fluidbox_index = 3}}}
}

xm_fluid_recipes["fluid-organic"] = {
	{"formaldehyde", "chemistry", 2, false, {{"coke", 1}, {type = "fluid", name = "steam", amount = 10}}, {{type = "fluid", name = "formaldehyde", amount = 10}}},
	{"uncured-phenolic", "chemistry", 1, false, {{"phenol", 1}, {type = "fluid", name = "formaldehyde", amount = 10}, {type = "fluid", name = "water", amount = 10}}, {{type = "fluid", name = "uncured-phenolic", amount = 20}}}--1
}

xm_all_recipes_to_impose["fluids"] = xm_fluid_recipes




--==========  INTERMEDIATE PRODUCTS  ==========
local xm_intermediate_products_recipes = {}

xm_intermediate_products_recipes["mechanical"] = {
	{"iron-stick", "basic-machine", 1, true, {{"iron-plate", 1}}, {{"iron-stick", 2}}},--0.5
	{"steel-rod", "machine", 1, false, {{"steel-plate", 1}}, {{"steel-rod", 4}}},--0.5
	{"iron-gear-wheel", "basic-machine", 2, true, {{"stock-cast-iron", 2}}, {{"iron-gear-wheel", 1}}},--2
	{"iron-gear-1", "machine", 2, false, {{"stock-cast-iron", 2}}, {{"iron-gear-wheel", 1}}},--2
	{"parts-steel", "machine", 7.5, false, {{"steel-plate", 2}, {"stock-bronze", 1}}, {{"parts-steel", 5}}},--1
	--{"parts-alloy", "machine", 8, false, {{"stock-alloy", 3}, {"rubber-vulcanized", 1}, {type = "fluid", name = "lubricant", amount = 10}}, {{"parts-alloy", 2}}},--4
	--{"parts-ceramic", "machine", 5, false, {{"stock-alloy", 1}, {"silicon-nitride", 8}, {"plastic-bar", 1}, {type = "fluid", name = "lubricant", amount = 10}}, {{"parts-ceramic", 2}}},--6
}

xm_intermediate_products_recipes["electrical"] = {
	{"copper-cable", "basic-machine", 1, false, {{"copper-plate", 1}}, {{"copper-cable", 1}}},--1
	{"copper-cable-1", "machine", 0.5, false, {{"copper-plate", 1}, {type = "fluid", name = "uncured-phenolic", amount = 1}}, {{"copper-cable", 2}}},--0.55 ~= 0.5
	{"coil-1-0", "basic-crafting", 1.5, false, {{"iron-stick", 1}, {"copper-cable", 3}}, {{"coil-1", 1}}},--2
	{"coil-1-1", "crafting", 1, false, {{"steel-rod", 1}, {"copper-cable", 3}}, {{"coil-1", 1}}},--2
	{"coil-2-0", "crafting", 1.5, false, {{"steel-rod", 2}, {"copper-cable", 4}}, {{"coil-2", 1}}},--3
	{"wire-solder-0", "basic-machine", 3, false, {{"solder", 3}, {"resin", 1}}, {{"wire-solder", 6}}},--0.5(1/24)
	{"wire-solder-1", "machine", 2, false, {{"solder", 2}, {"phenol", 1}}, {{"wire-solder", 4}}},--0.5
	--{"wire-gold", "machine", 1, false, {{"gold", 1}}, {{"wire-gold", 2}}},--0.5
	{"battery", "crafting-with-fluid", 6, false, {{"lead", 2}, {"glass", 1}, {type = "fluid", name = "sulfuric-acid", amount = 10}}, {{"battery", 2}}},--2
}

xm_intermediate_products_recipes["data"] = {
	{"laminate-1", "machine", 1, false, {{"copper-plate", 1}, {"fiber-glass", 1}, {type = "fluid", name = "uncured-phenolic", amount = 5}}, {{"laminate-1", 2}}},--1
	--{"laminate-2", "machine", 1, false, {{"copper-plate", 2}, {"fiber-glass", 1}, {type = "fluid", name = "uncured-epoxy", amount = 5}}, {{"laminate-2", 1}}},--3
	--XX{"blank-3-0", "electrolysis", 6, false, {{"blank-2", 2}, {"gold", 1}, {type = "fluid", name = "hydrochloric-acid", amount = 10}}, {{"blank-3", 2}}},--4
	{"board-1-0", "basic-machine", 2, false, {{"wood", 1}, {"copper-cable", 12}}, {{"board-1", 4}}},--1.5(1/4)
	{"board-1-1", "machine", 3, false, {{"steel-plate", 1}, {"copper-cable", 4}, {"porcelain", 1}}, {{"board-1", 4}}},--1.25
	{"board-1-2", "chemistry", 0.75, false, {{"laminate-1", 1}, {type = "fluid", name = "sufuric-acid", amount = 2}}, {{"board-1", 1}}},--1.2 ~= 1
	{"board-2-0", "electrolysis", 1, false, {{"laminate-1", 1}, {"solder", 1}, {type = "fluid", name = "nitric-acid", amount = 3}}, {{"board-2", 1}}},--3.3 ~= 3
	--{"board-3-0", "electrolysis", 3, false, {{"laminate-2", 2}, {"nickel", 1}, {"gold", 1}, {type = "fluid", name = "chlorine", amount = 8}}, {{"board-3", 2}}},--4.4 ~= 4
	--XX{"board-4-0", "machine", 3, false, {{"board-3", 2}, {"plastic-bar", 1}, {type = "fluid", name = "uncured-epoxy", amount = 10}}, {{"board-4", 1}}},--10
	--{"wafer-0", "machine", 2, false, {{"silicon-boule", 1}, {type = "fluid", name = "sulfuric-acid", amount = 4}}, {{"wafer-0", 2}}},--2.2 ~= 2
	--{"wafer-1", "advanced-chemistry", 16, false, {{"wafer-0", 3}, {"copper-plate", 1}, {"tungsten", 1}, {type = "fluid", name = "uncured-epoxy", amount = 5}, {type = "fluid", name = "nitric-acid", amount = 10}}, {{"wafer-1", 4}}},--2
	--{"wafer-2", "advanced-chemistry", 16, false, {{"wafer-0", 3}, {"titanium", 1}, {"chromium", 1}, {"sodium-hydroxide", 1}, {type = "fluid", name = "nitrogen", amount = 10}, {type = "fluid", name = "hydrogen-fluoride", amount = 4}}, {{"wafer-2", 1}}},--8.4 ~= 8
	{"components-1-0", "basic-crafting", 1.5, false, {{"coil-1", 1}, {"coke", 1}, {"glass", 1}}, {{"components-1", 1}}},--4 --> 2.5
	{"components-1-1", "crafting-with-fluid", 2, false, {{"coil-1", 1}, {"graphite", 2}, {type = "fluid", name = "uncured-phenolic", amount = 10}}, {{"components-1", 2}}},--2.5
	{"components-2-0", "crafting", 3, false, {{"copper-cable", 3}, {"tungsten", 1}, {"glass", 1}}, {{"components-2", 1}}},--3.5
	--{"components-2-1", "crafting", 2, false, {{"aluminum", 1}, {"wafer-1", 1}, {type = "fluid", name = "uncured-epoxy", amount = 5}}, {{"components-2", 1}}},--3.5
	--{"components-3-1", "crafting", 3, false, {{"copper-plate", 3}, {"wafer-2", 1}, {"wire-gold", 2}, {"plastic-pellets", 2}}, {{"components-2", 2}}},--14
	{"electronic-circuit", "crafting", 2, false, {{"board-1", 1}, {"components-1", 1}, {"wire-solder", 1}}, {{"electronic-circuit", 1}}},--5.5(1/4) --> 4
	{"advanced-circuit", "crafting", 6, false, {{"board-2", 1}, {"components-1", 1}, {"components-2", 1}, {"wire-solder", 2}}, {{"advanced-circuit", 1}}},--10 (3 + 2.5 + 3.5 + 1)
	--{"processing-unit", "advanced-crafting", 12, false, {{"board-3", 2}, {"components-1", 4}, {"components-2", 4}, {"components-3", 2}, {"wire-solder", 8}}, {{"advanced-circuit", 1}}},--64
}

xm_intermediate_products_recipes["intermediate-product"] = {
	{"piston-unit-0", "basic-crafting", 3, true, {{"pipe", 2}, {"iron-stick", 2}, {"stock-bronze", 1}}, {{"piston-unit", 2}}},--2
	{"piston-unit-1", "crafting", 1.5, false, {{"pipe", 1}, {"parts-steel", 1}}, {{"piston-unit", 1}}},--2
	{"mechanical-steam-engine", "crafting", 1, true, {{"piston-unit", 2}, {"iron-gear-wheel", 1}, {"stock-cast-iron", 2}}, {{"mechanical-steam-engine", 1}}},--8
	{"engine-unit", "crafting", 12, false, {{"piston-unit", 2}, {"iron-gear-wheel", 1}, {"parts-steel", 2}, {"rubber-vulcanized", 2}}, {{"engine-unit", 2}}},--5
	{"electric-engine-unit", "crafting", 3, false, {{"coil-1", 1}, {"glass", 2}, {"stock-bronze", 2}}, {{"electric-engine-unit", 1}}},--6(1/72) --> 4
	{"motor-1-1", "crafting", 2, false, {{"coil-1", 1}, {"rubber-vulcanized", 1}, {"iron-gear-wheel", 1}}, {{"electric-engine-unit", 1}}},--4
	{"motor-2-0", "crafting", 3, false, {{"coil-2", 1}, {"rubber-vulcanized", 1}, {"parts-steel", 1}}, {{"motor-2", 1}}}--6
}
xm_intermediate_products_recipes["science-pack"] = {
	{"crude-science-pack", "basic-crafting", 2, true, {{"stone-brick", 1}, {"stock-bronze", 1}}, {{"crude-science-pack", 1}}},--2
	{"automation-science-pack", "crafting", 4, false, {{"iron-gear-wheel", 1}, {"coil-1", 1}}, {{"automation-science-pack", 1}}},--4(1/16)
	{"logistic-science-pack", "crafting", 6, false, {{"transport-belt", 1}, {"inserter", 1}}, {{"logistic-science-pack", 1}}}--8
}

xm_all_recipes_to_impose["intermediate-products"] = xm_intermediate_products_recipes




--==========  PRODUCTION  ==========
local xm_production_recipes = {}

xm_production_recipes["tool"] = {
	{"repair-pack", "crafting", 2, false, {{"iron-gear-wheel", 1}, {"steel-plate", 1}, {"electronic-circuit", 2}}, {{"repair-pack", 1}}}--12
}

xm_production_recipes["energy"] = {
	{"boiler", "crafting", 1, true, {{"xm-furnace-brick", 1}, {"pipe", 4}}, {{"boiler", 1}}},--16
	{"steam-engine", "crafting", 1, false, {{"mechanical-steam-engine", 3}, {"electric-engine-unit", 3}}, {{"steam-engine", 1}}},--36
	{"small-lamp", "crafting", 1, false, {{"stock-cast-iron", 1}, {"glass", 2}, {"graphite", 2}, {"copper-cable", 2}}, {{"small-lamp", 1}}}--6(1/72) --> 6
}

xm_production_recipes["extraction-machine"] = {
	{"offshore-pump", "basic-crafting", 0.5, true, {{"mechanical-steam-engine", 1}, {"stone-brick", 4}, {"copper-plate", 8}}, {{"offshore-pump", 1}}},--20
	{"offshore-pump-1", "crafting", 0.5, false, {{"pump", 1}, {"brick-clay", 8}, {"stock-bronze", 8}}, {{"offshore-pump", 1}}},--24
	{"burner-mining-drill", "basic-crafting", 1, true, {{"boiler", 1}, {"mechanical-steam-engine", 1}, {"iron-plate", 4}}, {{"burner-mining-drill", 2}}},--16
	{"electric-mining-drill", "crafting", 2, false, {{"electric-engine-unit", 2}, {"iron-gear-wheel", 4}, {"steel-plate", 4}, {"electronic-circuit", 1}}, {{"electric-mining-drill", 1}}},--28
	{"pumpjack", "crafting", 5, false, {{"electric-engine-unit", 3}, {"iron-gear-wheel", 4}, {"pipe", 16}, {"steel-plate", 8}, {"electronic-circuit", 2}}, {{"pumpjack", 1}}},--60
	{"ore-processor-0", "basic-crafting", 1, false, {{"boiler", 1}, {"mechanical-steam-engine", 1}, {"stone-brick", 8}, {"stock-bronze", 4}}, {{"ore-processor-0", 2}}},--18
	{"ore-processor-1", "crafting", 1.5, false, {{"pump", 1}, {"iron-gear-wheel", 4}, {"steel-plate", 2}, {"electronic-circuit", 1}}, {{"ore-processor-1", 1}}},--24
	{"ore-processor-2", "crafting", 3, false, {{"ore-processor-1", 1}, {"motor-2", 1}, {"parts-steel", 8}, {"stock-alloy", 6}, {"advanced-circuit", 1}}, {{"ore-processor-2", 1}}}--60
}

xm_production_recipes["smelting-machine"] = {
	{"xm-furnace-stone", "basic-crafting", 1, true, {{"stone-brick", 5}}, {{"xm-furnace-stone", 1}}},--5
	{"xm-furnace-brick", "crafting", 2, true, {{"brick-clay", 8}, {"stock-bronze", 4}}, {{"xm-furnace-brick", 1}}},--12
	{"xm-furnace-steel", "crafting", 4, false, {{"brick-clay", 12}, {"steel-plate", 4}, {"pipe", 4}}, {{"xm-furnace-steel", 1}}},--24
	{"xm-furnace-electric", "advanced-crafting", 4, false, {{"coil-2", 6}, {"brick-magnesia", 20}, {"graphite", 20}, {"stock-cupronickel", 18}, {"xm-furnace-steel", 1}}, {{"xm-furnace-electric", 1}}}--96
}

xm_production_recipes["chemical-machine"] = {
	{"chemical-plant", "crafting", 3, false, {{"pump", 2}, {"copper-cable", 8}, {"glass", 8}, {"steel-plate", 2}}, {{"chemical-plant", 1}}},--32
	--{"reactor-2", "crafting", 4, false, {{"pump-2", 2}, {"xm-furnace-steel", 8}, {"porcelain", 8}, {"stock-cupronickel", 8}, {"advanced-circuit", 1}}, {{"reactor-2", 1}}},--64?
	{"electrolyzer-1", "crafting", 4, false, {{"pump", 1}, {"coil-1", 2}, {"lead", 8}, {"glass", 4}}, {{"electrolyzer-1", 1}}},--24
	--{"electrolyzer-2", "crafting", 6, false, {{"pump-2", 1}, {"coil-2", 2}, {"ingot-platinum", 1}, {"plastic-bar", 1}, {"advanced-circuit", 1}}, {{"electrolyzer-2", 1}}},--48?
	{"oil-refinery", "crafting", 8, false, {{"chemical-plant", 1}, {"xm-furnace-steel", 1}, {"pump", 3}, {"pipe", 32}, {"electronic-circuit", 8}}, {{"oil-refinery", 1}}}--144
}

xm_production_recipes["production-machine"] = {
	{"machine-tool-0", "basic-crafting", 1, false, {{"boiler", 1}, {"mechanical-steam-engine", 1}, {"stone-brick", 4}, {"stock-cast-iron", 8}}, {{"machine-tool-0", 2}}},--18
	{"machine-tool-1", "crafting", 1, false, {{"electric-engine-unit", 2}, {"steel-plate", 2}, {"iron-gear-wheel", 4}, {"electronic-circuit", 1}}, {{"machine-tool-1", 1}}},--24
	{"machine-tool-2", "crafting", 2, false, {{"machine-tool-1", 1}, {"motor-2", 2}, {"stock-alloy", 8}, {"parts-steel", 10}, {"advanced-circuit", 1}}, {{"machine-tool-2", 1}}},--72
	--{"machine-tool-3", "advanced-crafting"}
	{"assembling-machine-0", "basic-crafting", 1, false, {{"boiler", 1}, {"mechanical-steam-engine", 1}, {"burner-inserter", 2}, {"iron-gear-wheel", 4}}, {{"assembling-machine-0", 2}}},--18
	{"assembling-machine-1", "crafting", 2, false, {{"electric-engine-unit", 1}, {"inserter", 1}, {"iron-gear-wheel", 3}, {"electronic-circuit", 3}}, {{"assembling-machine-1", 1}}},--28
	{"assembling-machine-2", "crafting", 4, false, {{"assembling-machine-1", 1}, {"fast-inserter", 1}, {"motor-2", 2}, {"parts-steel", 8}, {"advanced-circuit", 2}}, {{"assembling-machine-2", 1}}},--80
	--{"assembling-machine-3", "advanced-crafting", 6, false, {{"assembling-machine-2", 2}}, {{"assembling-machine-3", 1}}},--n = ?
	--assembling-machine-4  --stack filter inserter
	{"lab-burner", "basic-crafting", 1, true, {{"boiler", 1}, {"mechanical-steam-engine", 1}, {"crude-transport-belt", 8}, {"copper-plate", 4}}, {{"lab-burner", 1}}},--36
	{"lab", "crafting", 2, false, {{"electric-engine-unit", 2}, {"steel-plate", 4}, {"iron-gear-wheel", 4}, {"transport-belt", 6}, {"electronic-circuit", 3}}, {{"lab", 1}}}--48
}

xm_all_recipes_to_impose["production"] = xm_production_recipes




--==========  LOGISTICS  ==========
local xm_logistics_recipes = {}

xm_logistics_recipes["energy-pipe-distribution"] = {
	{"pipe", "basic-machine", 0.5, true, {{"iron-plate", 1}}, {{"pipe", 1}}},--1
	{"pipe-1", "machine", 0.5, false, {{"steel-plate", 1}}, {{"pipe", 2}}},--1
	{"pipe-to-ground", "crafting", 1, true, {{"pipe", 10}, {"stock-cast-iron", 6}}, {{"pipe-to-ground", 2}}},--16 per pair
	{"storage-tank", "crafting", 3, false, {{"steel-plate", 10}, {"pipe", 12}}, {{"storage-tank", 1}}},--32
	{"pump", "crafting", 1, false, {{"electric-engine-unit", 1}, {"piston-unit", 2}, {"iron-gear-wheel", 1}, {"stock-bronze", 2}}, {{"pump", 1}}},--12
	{"pump-1", "crafting", 1, false, {{"electric-engine-unit", 1}, {"piston-unit", 1}, {"rubber-vulcanized", 2}}, {{"pump", 1}}},--8
	{"small-electric-pole", "basic-crafting", 1, false, {{"wood", 1}, {"glass", 2}, {"copper-cable", 4}}, {{"small-electric-pole", 4}}},--1(13/48)
	{"medium-electric-pole", "crafting", 1, false, {{"steel-plate", 3}, {"steel-rod", 4}, {"porcelain", 1}, {"copper-cable", 4}}, {{"medium-electric-pole", 1}}},--12
	{"big-electric-pole", "crafting", 2, false, {{"steel-plate", 8}, {"steel-rod", 8}, {"porcelain", 3}, {"copper-cable", 12}}, {{"big-electric-pole", 1}}}--32
}

xm_logistics_recipes["belt"] = {
	{"crude-transport-belt", "basic-crafting", 1, true, {{"iron-plate", 2}, {"iron-gear-wheel", 1}}, {{"crude-transport-belt", 4}}},--1
	{"transport-belt", "crafting", 2, false, {{"steel-plate", 2}, {"iron-gear-wheel", 1}, {"stock-bronze", 2}}, {{"transport-belt", 4}}},--2
	{"fast-transport-belt", "crafting", 1.5, false, {{"transport-belt", 1}, {"parts-steel", 4}, {"rubber-vulcanized", 2}}, {{"fast-transport-belt", 1}}},--8
	{"crude-underground-belt", "basic-crafting", 1, true, {{"crude-transport-belt", 4}, {"stone-brick", 4}}, {{"crude-underground-belt", 2}}},--8 per pair
	{"underground-belt", "crafting", 1, false, {{"transport-belt", 6}, {"brick-clay", 4}, {"stock-bronze", 4}}, {{"underground-belt", 2}}},--20 per pair
	{"fast-underground-belt", "crafting", 3, false, {{"underground-belt", 2}, {"fast-transport-belt", 8}, {"concrete", 8}, {"steel-plate", 4}}, {{"fast-underground-belt", 2}}},--100 per pair
	{"crude-splitter", "basic-crafting", 1, true, {{"crude-transport-belt", 3}, {"iron-gear-wheel", 1}, {"stock-bronze", 1}}, {{"crude-splitter", 1}}},--6
	{"splitter", "crafting", 1, false, {{"transport-belt", 4}, {"iron-gear-wheel", 4}, {"stock-bronze", 4}}, {{"splitter", 1}}},--20
	{"fast-splitter", "crafting", 3, false, {{"splitter", 1}, {"fast-transport-belt", 4}, {"parts-steel", 8}, {"electronic-circuit", 3}}, {{"fast-splitter", 1}}},--72
}

xm_logistics_recipes["inserter"] = {
	{"burner-inserter", "basic-crafting", 0.5, true, {{"piston-unit", 1}, {"iron-gear-wheel", 1}}, {{"burner-inserter", 1}}},--4
	{"inserter", "basic-crafting", 1, false, {{"electric-engine-unit", 1}, {"iron-gear-wheel", 1}, {"copper-plate", 3}}, {{"inserter", 1}}},--9
	{"inserter-1", "crafting", 2, false, {{"electric-engine-unit", 1}, {"iron-gear-wheel", 2}, {"electronic-circuit", 1}}, {{"inserter", 2}}},--6
	{"long-handed-inserter", "crafting", 0.5, false, {{"inserter", 1}, {"iron-gear-wheel", 1}, {"steel-plate", 1}}, {{"long-handed-inserter", 1}}},--10
	{"fast-inserter", "crafting", 1, false, {{"inserter", 1}, {"parts-steel", 2}, {"electronic-circuit", 1}}, {{"fast-inserter", 1}}},--12
	{"long-fast-inserter", "crafting", 0.5, false, {{"fast-inserter", 1}, {"steel-plate", 2}}, {{"long-fast-inserter", 1}}},--16
	{"filter-inserter", "crafting", 0.5, false, {{"fast-inserter", 1}, {"electronic-circuit", 3}}, {{"filter-inserter", 1}}}--24
}

xm_logistics_recipes["transport"] = {
	{"rail", "crafting", 0.5, false, {{"gravel", 2}, {"iron-stick", 2}, {"steel-plate", 1}}, {{"rail", 1}}},--5
	--{"rail-1", "advanced-crafting", 0.5, false, {{"gravel", 2}, {"concrete", 1}, {"steel-plate", 2}}, {{"rail", 2}}},--4
	{"locomotive", "crafting", 8, false, {{"boiler", 1}, {"piston-unit", 8}, {"iron-gear-wheel", 12}, {"pipe", 28}, {"steel-plate", 12}, {"electronic-circuit", 3}}, {{"locomotive", 1}}},--120
	{"cargo-wagon", "crafting", 4, false, {{"iron-gear-wheel", 8}, {"parts-steel", 12}, {"steel-plate", 16}}, {{"cargo-wagon", 1}}},--60
	{"fluid-wagon", "crafting", 4, false, {{"iron-gear-wheel", 6}, {"parts-steel", 12}, {"steel-plate", 4}, {"storage-tank", 1}}, {{"fluid-wagon", 1}}},--64
	{"rail-signal", "crafting", 1, false, {{"electronic-circuit", 1}, {"small-lamp", 1}}, {{"rail-signal", 2}}},--8
	{"rail-chain-signal", "crafting", 1, false, {{"electronic-circuit", 1}, {"small-lamp", 1}}, {{"rail-chain-signal", 2}}},--8
	{"train-stop", "crafting", 2, false, {{"stock-cast-iron", 10}, {"steel-rod", 16}, {"parts-steel", 6}, {"electronic-circuit", 3}}, {{"train-stop", 1}}},--36
	{"car", "crafting", 4, false, {{"engine-unit", 8}, {"iron-gear-wheel", 8}, {"steel-plate", 20}, {"rubber-vulcanized", 8}, {"glass", 8}, {"electronic-circuit", 2}}, {{"car", 1}}},--120
}

xm_all_recipes_to_impose["logistics"] = xm_logistics_recipes




--==========  COMBAT  ==========
local xm_combat_recipes = {}

xm_combat_recipes["gun"] = {
	{"pistol", "basic-crafting", 2, false, {{"iron-plate", 8}, {"stock-bronze", 4}}, {{"pistol", 1}}},--12
	{"submachine-gun", "crafting", 10, false, {{"steel-plate", 8}, {"iron-gear-wheel", 6}, {"stock-bronze", 8}}, {{"submachine-gun", 1}}},--36
	{"shotgun", "crafting", 10, false, {{"steel-plate", 6}, {"iron-gear-wheel", 4}, {"stock-bronze", 16}}, {{"shotgun", 1}}}--36
}

xm_combat_recipes["ammo"] = {
	{"firearm-magazine", "crafting", 1, false, {{"stock-bronze", 1}, {"lead", 1}, {"powder-black", 1}}, {{"firearm-magazine", 1}}},--3(1/24) -> 3
	{"piercing-rounds-magazine", "crafting", 3, false, {{"stock-bronze", 3}, {"steel-plate", 3}, {"powder-black", 3}}, {{"piercing-rounds-magazine", 1}}},--12
	{"shotgun-shell", "crafting", 3, false, {{"stock-bronze", 1}, {"lead", 2}, {"powder-black", 1}}, {{"shotgun-shell", 1}}}--4(1/24) -> 4
}

xm_combat_recipes["capsule"] = {
	{"grenade", "crafting", 8, false, {{"stock-cast-iron", 8}, {"powder-black", 8}}, {{"grenade", 1}}}--16
}

xm_combat_recipes["armor"] = {
	{"light-armor", "basic-crafting", 4, false, {{"iron-plate", 36}}, {{"light-armor", 1}}},--36
	{"heavy-armor", "crafting", 4, false, {{"steel-plate", 90}, {"stock-bronze", 60}}, {{"heavy-armor", 1}}}--240
}

xm_combat_recipes["defensive-structure"] = {
	{"gun-turret", "crafting", 8, false, {{"iron-plate", 10}, {"iron-gear-wheel", 15}, {"stock-bronze", 10}}, {{"gun-turret", 1}}},--50
	{"radar", "crafting", 1, false, {{"steel-plate", 4}, {"iron-gear-wheel", 4}, {"copper-cable", 16}, {"electronic-circuit", 2}}, {{"radar", 1}}}--32
}

xm_all_recipes_to_impose["combat"] = xm_combat_recipes