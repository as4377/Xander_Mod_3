--==========  ALL  ==========
--Format: key-value structured list, with one entry storing information for each entity
xm_all_entities_to_impose = {}

--==========  PRODUCTION  ==========
local xm_production_entities = {}

xm_production_entities["extraction-machine"] = {
	{
		type = "offshore-pump",
		name = "offshore-pump"
	},
	{
		type = "mining-drill",
		name = "burner-mining-drill"
	},
	{
		type = "mining-drill",
		name = "electric-mining-drill"
	},
	{
		type = "mining-drill",
		name = "pumpjack"
	},
	{
		type = "assembling-machine",
		name = "ore-processor-0",
		parent_type = "assembling-machine",
		parent_name = "assembling-machine-1",
		crafting_categories = {"washing"},
		crafting_speed = 0.5,
		ingredient_count = 2,
		next_upgrade = "ore-processor-1",
		energy_source = {type = "burner", fuel_categories = {"crude", "chemical"}, effectivity = 1, fuel_inventory_size = 1, emissions_per_minute = 0.5, smoke = data.raw["mining-drill"]["burner-mining-drill"].energy_source.smoke},
		energy_usage = "50kW",
		animation = {layers = { {
			filename = "__xander-mod-graphics-1__/graphics/entity/production/extraction-machine/ore-processor-0.png",
			priority = "high",
			width = 100,
			height = 94,
			frame_count = 1,
			hr_version = {
				filename = "__xander-mod-graphics-1__/graphics/entity/production/extraction-machine/ore-processor-0-hr.png",
				priority = "high",
				width = 200,
				height = 188,
				frame_count = 1,
				scale = 0.5
			}
		} }},
		fast_replaceable_group = "ore-processor"
	},
	{
		type = "assembling-machine",
		name = "ore-processor-1",
		parent_type = "assembling-machine",
		parent_name = "assembling-machine-1",
		crafting_categories = {"washing"},
		crafting_speed = 1,
		ingredient_count = 3,
		next_upgrade = "ore-processor-2",
		emissions_per_minute = 1,
		energy_usage = "70kW",
		animation = {layers = { {
			filename = "__xander-mod-graphics-1__/graphics/entity/production/extraction-machine/ore-processor-1.png",
			priority = "high",
			width = 100,
			height = 92,
			frame_count = 1,
			hr_version = {
				filename = "__xander-mod-graphics-1__/graphics/entity/production/extraction-machine/ore-processor-1-hr.png",
				priority = "high",
				width = 200,
				height = 184,
				frame_count = 1,
				scale = 0.5
			}
		} }},
		fast_replaceable_group = "ore-processor"
	},
	{
		type = "assembling-machine",
		name = "ore-processor-2",
		parent_type = "assembling-machine",
		parent_name = "assembling-machine-2",
		crafting_categories = {"washing"},--, "advanced-washing"
		crafting_speed = 1.5,
		ingredient_count = 4,
		next_upgrade = "ore-processor-2",--3
		emissions_per_minute = 1.5,
		energy_usage = "120kW",
		animation = {layers = { {
			filename = "__xander-mod-graphics-1__/graphics/entity/production/extraction-machine/ore-processor-2.png",
			priority = "high",
			width = 100,
			height = 136,
			frame_count = 1,
			hr_version = {
				filename = "__xander-mod-graphics-1__/graphics/entity/production/extraction-machine/ore-processor-2-hr.png",
				priority = "high",
				width = 200,
				height = 272,
				frame_count = 1,
				scale = 0.5
			}
		} }},
		fast_replaceable_group = "ore-processor"
	}
}

xm_production_entities["smelting-machine"] = {
	{
		type = "assembling-machine",
		name = "xm-furnace-stone",
		parent_type = "furnace",
		parent_name = "stone-furnace",
		crafting_categories = {"kiln"},
		energy_usage = "250kW",
		crafting_speed = 0.5,
		emissions_per_minute = 0.5,
		ingredient_count = 2,
		next_upgrade = "xm-furnace-brick",
		graphics_from = {"__base__/graphics/entity/stone-furnace/stone-furnace.png", "__base__/graphics/entity/stone-furnace/hr-stone-furnace.png"},
		graphics_to = {"__xander-mod-graphics-1__/graphics/entity/production/smelting-machine/xm-furnace-stone.png", "__xander-mod-graphics-1__/graphics/entity/production/smelting-machine/xm-furnace-stone-hr.png"}
	},
	{
		type = "assembling-machine",
		name = "xm-furnace-brick",
		parent_type = "furnace",
		parent_name = "stone-furnace",
		crafting_categories = {"kiln", "smelting"},
		energy_usage = "500kW",
		crafting_speed = 1,
		emissions_per_minute = 1,
		fuel_category = "chemical",
		ingredient_count = 3,
		next_upgrade = "xm-furnace-steel",
		graphics_from = {"__base__/graphics/entity/stone-furnace/stone-furnace.png", "__base__/graphics/entity/stone-furnace/hr-stone-furnace.png"},
		graphics_to = {"__xander-mod-graphics-1__/graphics/entity/production/smelting-machine/xm-furnace-brick.png", "__xander-mod-graphics-1__/graphics/entity/production/smelting-machine/xm-furnace-brick-hr.png"}
	},
	{
		type = "assembling-machine",
		name = "xm-furnace-steel",
		parent_type = "furnace",
		parent_name = "steel-furnace",
		crafting_categories = {"smelting", "refining"},
		energy_usage = "1MW",
		crafting_speed = 1.5,
		emissions_per_minute = 2,
		fuel_category = "chemical",
		ingredient_count = 4
	},
	{
		type = "assembling-machine",
		name = "xm-furnace-electric",
		parent_type = "furnace",
		parent_name = "electric-furnace",
		crafting_categories = {"refining", "refining-electric"},
		energy_usage = "1MW",
		emissions_per_minute = 0.5,
		crafting_speed = 2,
		ingredient_count = 5
	},
	{
		type = "furnace",
		name = "stone-furnace"
	},
	{
		type = "furnace",
		name = "steel-furnace"
	},
	{
		type = "furnace",
		name = "electric-furnace"
	}
}

xm_production_entities["chemical-machine"] = {
	{
		type = "assembling-machine",
		name = "chemical-plant"
	},
	{
		type = "assembling-machine",
		name = "electrolyzer-1",
		parent_type = "assembling-machine",
		parent_name = "chemical-plant",
		crafting_categories = {"electrolysis"},
		emissions_per_minute = 0.75,
		crafting_speed = 0.75,
		animation = {layers = { {
			filename = "__xander-mod-graphics-1__/graphics/entity/production/chemical-machine/electrolyzer-1.png",
			priority = "high",
			width = 100,
			height = 105,
			frame_count = 1,
			hr_version = {
				filename = "__xander-mod-graphics-1__/graphics/entity/production/chemical-machine/electrolyzer-1-hr.png",
				priority = "high",
				width = 200,
				height = 210,
				frame_count = 1,
				scale = 0.5
			}
		} }},
		fast_replaceable_group = "electrolyzer"
	},
	{
		type = "assembling-machine",
		name = "oil-refinery"
	},
	{
		type = "assembling-machine",
		name = "centrifuge"
	}
}

xm_production_entities["production-machine"] = {
	{
		type = "assembling-machine",
		name = "machine-tool-0",
		parent_type = "assembling-machine",
		parent_name = "assembling-machine-1",
		next_upgrade = "machine-tool-1",
		crafting_categories = {"basic-machine"},
		crafting_speed = 0.5,
		ingredient_count = 2,
		energy_source = {type = "burner", fuel_categories = {"crude", "chemical"}, effectivity = 1, fuel_inventory_size = 1, emissions_per_minute = 0.5, smoke = data.raw["mining-drill"]["burner-mining-drill"].energy_source.smoke},
		energy_usage = "60kW",
		animation = {layers = { {
			filename = "__xander-mod-graphics-1__/graphics/entity/production/production-machine/machine-tool-0.png",
			priority = "high",
			width = 100,
			height = 90,
			frame_count = 1,
			hr_version = {
				filename = "__xander-mod-graphics-1__/graphics/entity/production/production-machine/machine-tool-0-hr.png",
				priority = "high",
				width = 200,
				height = 180,
				frame_count = 1,
				scale = 0.5
			}
		} }},
		fast_replaceable_group = "machine-tool"
	},
	{
		type = "assembling-machine",
		name = "machine-tool-1",
		parent_type = "assembling-machine",
		parent_name = "assembling-machine-1",
		next_upgrade = "machine-tool-2",
		crafting_categories = {"basic-machine", "machine"},
		crafting_speed = 0.75,
		ingredient_count = 2,
		emissions_per_minute = 0.75,
		energy_usage = "80kW",
		animation = {layers = { {
			filename = "__xander-mod-graphics-1__/graphics/entity/production/production-machine/machine-tool-1.png",
			priority = "high",
			width = 100,
			height = 130,
			frame_count = 1,
			hr_version = {
				filename = "__xander-mod-graphics-1__/graphics/entity/production/production-machine/machine-tool-1-hr.png",
				priority = "high",
				width = 200,
				height = 260,
				frame_count = 1,
				scale = 0.5
			}
		} }},
		fast_replaceable_group = "machine-tool"
	},
	{
		type = "assembling-machine",
		name = "machine-tool-2",
		parent_type = "assembling-machine",
		parent_name = "assembling-machine-2",
		next_upgrade = "machine-tool-2",--3
		crafting_categories = {"machine"},--, "advanced-machine"
		crafting_speed = 1.5,
		ingredient_count = 4,
		emissions_per_minute = 1.5,
		energy_usage = "160kW",
		animation = {layers = { {
			filename = "__xander-mod-graphics-1__/graphics/entity/production/production-machine/machine-tool-2.png",
			priority = "high",
			width = 100,
			height = 128,
			frame_count = 1,
			hr_version = {
				filename = "__xander-mod-graphics-1__/graphics/entity/production/production-machine/machine-tool-2-hr.png",
				priority = "high",
				width = 200,
				height = 256,
				frame_count = 1,
				scale = 0.5
			}
		} }},
		fast_replaceable_group = "machine-tool"
	},
	{
		type = "assembling-machine",
		name = "assembling-machine-0",
		parent_type = "assembling-machine",
		parent_name = "assembling-machine-1",
		next_upgrade = "assembling-machine-1",
		crafting_categories = {"basic-crafting", "crafting"},
		crafting_speed = 0.5,
		ingredient_count = 2,
		energy_source = {type = "burner", fuel_categories = {"crude", "chemical"}, effectivity = 1, fuel_inventory_size = 1, emissions_per_minute = 0.5, smoke = data.raw["mining-drill"]["burner-mining-drill"].energy_source.smoke},
		energy_usage = "60kW",
		graphics_from = {"__base__/graphics/entity/assembling-machine-1/assembling-machine-1.png", "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1.png"},
		graphics_to = {"__xander-mod-graphics-1__/graphics/entity/production/production-machine/assembling-machine-0.png", "__xander-mod-graphics-1__/graphics/entity/production/production-machine/assembling-machine-0-hr.png"}
	},
	{
		type = "assembling-machine",
		name = "assembling-machine-1"
	},
	{
		type = "assembling-machine",
		name = "assembling-machine-2"
	},
	{
		type = "assembling-machine",
		name = "assembling-machine-3"
	},
	{
		type = "lab",
		name = "lab-burner",
		parent_type = "lab",
		parent_name = "lab",
		next_upgrade = "lab",
		researching_speed = 0.5,
		energy_source = {type = "burner", fuel_categories = {"crude", "chemical"}, effectivity = 1, fuel_inventory_size = 1, emissions_per_minute = 0.5, smoke = data.raw["mining-drill"]["burner-mining-drill"].energy_source.smoke},
		energy_usage = "40kW",
		inputs = {"crude-science-pack", "automation-science-pack"},
		graphics_from = {"__base__/graphics/entity/lab/lab.png", "__base__/graphics/entity/lab/hr-lab.png"},
		graphics_to = {"__base__/graphics/entity/lab/lab-red.png", "__base__/graphics/entity/lab/hr-lab-red.png"}
	}
}

xm_all_entities_to_impose["production"] = xm_production_entities

--==========  LOGISTICS  ==========
local xm_logistics_entities = {}

xm_logistics_entities["belt"] = {
	{
		type = "transport-belt",
		name = "crude-transport-belt",
		parent_type = "transport-belt",
		parent_name = "transport-belt",
		next_upgrade = "transport-belt",
		speed = 0.015625,--1/64, half of the 1/32 for the base transport-belt
		graphics_from = {"__base__/graphics/entity/transport-belt/transport-belt.png", "__base__/graphics/entity/transport-belt/hr-transport-belt.png"},
		graphics_to = {"__xander-mod-graphics-1__/graphics/entity/logistics/belt/crude-transport-belt.png", "__xander-mod-graphics-1__/graphics/entity/logistics/belt/crude-transport-belt-hr.png"}
	},
	{
		type = "transport-belt",
		name = "transport-belt"
	},
	{
		type = "transport-belt",
		name = "fast-transport-belt"
	},
	{
		type = "transport-belt",
		name = "express-transport-belt"
	},
	{
		type = "underground-belt",
		name = "crude-underground-belt",
		parent_type = "underground-belt",
		parent_name = "underground-belt",
		max_distance = 3,
		next_upgrade = "underground-belt",
		speed = 0.015625,--1/64, half of the 1/32 for the base transport-belt
		graphics_from = {"__base__/graphics/entity/underground-belt/underground-belt-structure.png", "__base__/graphics/entity/underground-belt/hr-underground-belt-structure.png"},
		graphics_to = {"__xander-mod-graphics-1__/graphics/entity/logistics/belt/crude-underground-belt.png", "__xander-mod-graphics-1__/graphics/entity/logistics/belt/crude-underground-belt-hr.png"}
	},
	{
		type = "underground-belt",
		name = "underground-belt"
	},
	{
		type = "underground-belt",
		name = "fast-underground-belt"
	},
	{
		type = "underground-belt",
		name = "express-underground-belt"
	},
	{
		type = "splitter",
		name = "crude-splitter",
		parent_type = "splitter",
		parent_name = "splitter",
		structure_animation_speed_coefficient = 0.35,
		next_upgrade = "splitter",
		speed = 0.015625,--1/64, half of the 1/32 for the base transport-belt
		graphics_from = {
			"__base__/graphics/entity/splitter/splitter-north.png",
			"__base__/graphics/entity/splitter/hr-splitter-north.png",
			"__base__/graphics/entity/splitter/splitter-east.png",
			"__base__/graphics/entity/splitter/hr-splitter-east.png",
			"__base__/graphics/entity/splitter/splitter-south.png",
			"__base__/graphics/entity/splitter/hr-splitter-south.png",
			"__base__/graphics/entity/splitter/splitter-west.png",
			"__base__/graphics/entity/splitter/hr-splitter-west.png"
		},
		graphics_to = {
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/crude-splitter-north.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/crude-splitter-north-hr.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/crude-splitter-east.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/crude-splitter-east-hr.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/crude-splitter-south.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/crude-splitter-south-hr.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/crude-splitter-west.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/belt/crude-splitter-west-hr.png",
		}
	},
	{
		type = "splitter",
		name = "splitter"
	},
	{
		type = "splitter",
		name = "fast-splitter"
	},
	{
		type = "splitter",
		name = "express-splitter"
	},
}

xm_logistics_entities["inserter"] = {
	{
		type = "inserter",
		name = "long-fast-inserter",
		parent_type = "inserter",
		parent_name = "long-handed-inserter",
		extension_speed = 0.07,
		rotation_speed = 0.04,
		energy_per_movement = "7KJ",
		energy_per_rotation = "7KJ",
		graphics_from = {
			"__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-base.png",
			"__base__/graphics/entity/long-handed-inserter/hr-long-handed-inserter-hand-base.png",
			"__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-closed.png",
			"__base__/graphics/entity/long-handed-inserter/hr-long-handed-inserter-hand-closed.png",
			"__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-open.png",
			"__base__/graphics/entity/long-handed-inserter/hr-long-handed-inserter-hand-open.png",
			"__base__/graphics/entity/long-handed-inserter/long-handed-inserter-platform.png",
			"__base__/graphics/entity/long-handed-inserter/hr-long-handed-inserter-platform.png"
		},
		graphics_to = {
			"__xander-mod-graphics-1__/graphics/entity/logistics/inserter/long-fast-base.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/inserter/long-fast-base-hr.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/inserter/long-fast-closed.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/inserter/long-fast-closed-hr.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/inserter/long-fast-open.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/inserter/long-fast-open-hr.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/inserter/long-fast-platform.png",
			"__xander-mod-graphics-1__/graphics/entity/logistics/inserter/long-fast-platform-hr.png"
		}
	}
}

xm_all_entities_to_impose["logistics"] = xm_logistics_entities

--==========  COMBAT  ==========
local xm_combat_entities = {}

xm_all_entities_to_impose["combat"] = xm_combat_entities