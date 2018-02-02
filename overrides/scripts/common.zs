import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

/*
=====TEMPLATES=====
var null = null;
recipes.remove(null);
recipes.addShaped("null", null, [
  [null, null, null],
  [null, null, null],
  [null, null, null]
]);
recipes.addShapedMirrored("null", null, [
  [null, null, null],
  [null, null, null],
  [null, null, null]
]);
recipes.addShapeless("null", null, [
  null
]);
*/

print("Loading Common Changes...");

//=====Resolve recipe conflicts=====
val ToBeRemoved = [
  <chiselsandbits:wrench_wood>, <actuallyadditions:item_helm_emerald>, <actuallyadditions:item_chest_emerald>,
  <actuallyadditions:item_pants_emerald>, <actuallyadditions:item_boots_emerald>, <actuallyadditions:item_sword_emerald>,
  <actuallyadditions:item_pickaxe_emerald>, <actuallyadditions:item_axe_emerald>, <actuallyadditions:item_shovel_emerald>,
  <actuallyadditions:item_hoe_emerald>, <cyclicmagic:emerald_sword>, <cyclicmagic:emerald_pickaxe>, <cyclicmagic:emerald_axe>,
  <cyclicmagic:emerald_spade>, <cyclicmagic:emerald_hoe>, <actuallyadditions:item_helm_obsidian>,
  <actuallyadditions:item_chest_obsidian>, <actuallyadditions:item_pants_obsidian>, <actuallyadditions:item_boots_obsidian>,
  <actuallyadditions:item_sword_obsidian>, <actuallyadditions:item_pickaxe_obsidian>, <actuallyadditions:item_axe_obsidian>,
  <actuallyadditions:item_shovel_obsidian>, <actuallyadditions:item_hoe_obsidian>, <mekanismtools:steelhelmet>,
  <mekanismtools:steelchestplate>, <mekanismtools:steelleggings>, <mekanismtools:steelboots>, <mekanismtools:steelsword>,
  <mekanismtools:steelpickaxe>, <mekanismtools:steelaxe>, <mekanismtools:steelshovel>,<mekanismtools:steelhoe>,
  <mekanismtools:bronzehelmet>, <mekanismtools:bronzechestplate>, <mekanismtools:bronzeleggings>,
  <mekanismtools:bronzeboots>, <mekanismtools:bronzesword>, <mekanismtools:bronzepickaxe>, <mekanismtools:bronzeaxe>,
  <mekanismtools:bronzeshovel>, <mekanismtools:bronzehoe>, <quantumstorage:trashcan>, <quantumstorage:trashcanfluid>,
  <tp:stone_torch>, <chisel:futura>, <excompressum:compressed_block:1>, <excompressum:compressed_block:2>,
  <excompressum:compressed_block:3>, <excompressum:compressed_block:4>, <excompressum:compressed_block:5>,
  <excompressum:compressed_block:9>, <excompressum:iron_mesh>, <hammercore:iron_gear>, <cyclicmagic:uncrafting_block>,
  <betterbuilderswands:wanddiamond>, <betterbuilderswands:wandiron>, <tp:diamond_spear>, <tp:iron_spear>,
  <twilightforest:uncrafting_table>
] as IIngredient[];
for item in ToBeRemoved {
  recipes.remove(item);
}
val ARInput = [
  <cyclicmagic:emerald_helmet>, <cyclicmagic:emerald_chestplate>, <cyclicmagic:emerald_leggings>,
  <cyclicmagic:emerald_boots>, <tp:emerald_sword>, <tp:emerald_pickaxe>, <tp:emerald_axe>,
  <tp:emerald_spade>, <tp:emerald_hoe>, <cyclicmagic:emerald_sword>, <cyclicmagic:emerald_pickaxe>,
  <cyclicmagic:emerald_axe>, <cyclicmagic:emerald_spade>, <cyclicmagic:emerald_hoe>, <tp:obsidian_sword>,
  <tp:obsidian_pickaxe>, <tp:obsidian_axe>, <tp:obsidian_spade>, <tp:obsidian_hoe>, <tp:obsidian_helmet>,
  <tp:obsidian_chestplate>, <tp:obsidian_leggings>, <tp:obsidian_boots>, <thermalfoundation:armor.helmet_steel>,
  <thermalfoundation:armor.plate_steel>, <thermalfoundation:armor.legs_steel>, <thermalfoundation:armor.boots_steel>,
  <thermalfoundation:tool.sword_steel>, <thermalfoundation:tool.pickaxe_steel>, <thermalfoundation:tool.axe_steel>,
  <thermalfoundation:tool.shovel_steel>, <thermalfoundation:tool.hoe_steel>, <thermalfoundation:armor.helmet_bronze>,
  <thermalfoundation:armor.plate_bronze>, <thermalfoundation:armor.legs_bronze>, <thermalfoundation:armor.boots_bronze>,
  <thermalfoundation:tool.sword_bronze>, <thermalfoundation:tool.pickaxe_bronze>, <thermalfoundation:tool.axe_bronze>,
  <thermalfoundation:tool.shovel_bronze>, <thermalfoundation:tool.hoe_bronze>, <thermalfoundation:material:24>
] as IItemStack[];
val AROutput = [
  <actuallyadditions:item_helm_emerald>, <actuallyadditions:item_chest_emerald>, <actuallyadditions:item_pants_emerald>,
  <actuallyadditions:item_boots_emerald>, <cyclicmagic:emerald_sword>, <cyclicmagic:emerald_pickaxe>,
  <cyclicmagic:emerald_axe>, <cyclicmagic:emerald_spade>, <cyclicmagic:emerald_hoe>, <actuallyadditions:item_sword_emerald>,
  <actuallyadditions:item_pickaxe_emerald>, <actuallyadditions:item_axe_emerald>, <actuallyadditions:item_shovel_emerald>,
  <actuallyadditions:item_hoe_emerald>, <actuallyadditions:item_sword_obsidian>, <actuallyadditions:item_pickaxe_obsidian>,
  <actuallyadditions:item_axe_obsidian>, <actuallyadditions:item_shovel_obsidian>, <actuallyadditions:item_hoe_obsidian>,
  <actuallyadditions:item_helm_obsidian>, <actuallyadditions:item_chest_obsidian>, <actuallyadditions:item_pants_obsidian>,
  <actuallyadditions:item_boots_obsidian>, <mekanismtools:steelhelmet>, <mekanismtools:steelchestplate>, <mekanismtools:steelleggings>,
  <mekanismtools:steelboots>, <mekanismtools:steelsword>, <mekanismtools:steelpickaxe>, <mekanismtools:steelaxe>,
  <mekanismtools:steelshovel>, <mekanismtools:steelhoe>, <mekanismtools:bronzehelmet>, <mekanismtools:bronzechestplate>,
  <mekanismtools:bronzeleggings>, <mekanismtools:bronzeboots>, <mekanismtools:bronzesword>, <mekanismtools:bronzepickaxe>,
  <mekanismtools:bronzeaxe>, <mekanismtools:bronzeshovel>, <mekanismtools:bronzehoe>, <hammercore:iron_gear>
] as IItemStack[];
for i, item in ARInput {
  mods.actuallyadditions.AtomicReconstructor.addRecipe(AROutput[i], item, 1500);
}
mods.actuallyadditions.AtomicReconstructor.addRecipe(<quantumstorage:trashcan>,
  <extrautils2:trashcan>, 1000
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<quantumstorage:trashcanfluid>,
  <extrautils2:trashcanfluid>, 1000
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<tp:stone_torch>,
  <tconstruct:stone_torch>, 100
);
recipes.addShapedMirrored("ct_wooden_wrench", <chiselsandbits:wrench_wood>, [
  [null, <ore:plankWood>, null],
  [null, <ore:gearWood>, <ore:plankWood>],
  [<ore:stickWood>, null, null]
]);
recipes.addShaped("ct_futura_block", <chisel:futura>, [
  [<ore:bricksStone>, <ore:bricksStone>, <ore:bricksStone>],
  [<ore:bricksStone>, <ore:dustRedstone>, <ore:bricksStone>],
  [<ore:bricksStone>, <ore:bricksStone>, <ore:bricksStone>]
]);
recipes.addShaped("ct_diamond_wand", <betterbuilderswands:wanddiamond>, [
  [null, null, <ore:gemDiamond>],
  [null, <ore:stickWood>, null],
  [<ore:stickWood>, null, null]
]);
recipes.addShaped("ct_iron_wand", <betterbuilderswands:wandiron>, [
  [null, null, <ore:ingotIron>],
  [null, <ore:stickWood>, null],
  [<ore:stickWood>, null, null]
]);
recipes.addShaped("ct_diamond_spear", <tp:diamond_spear>, [
  [<ore:gemDiamond>, null, null],
  [null, <ore:stickWood>, null],
  [null, null, <ore:stickWood>]
]);
recipes.addShaped("ct_iron_spear", <tp:iron_spear>, [
  [<ore:ingotIron>, null, null],
  [null, <ore:stickWood>, null],
  [null, null, <ore:stickWood>]
]);

//Adds recipe for the guide book
recipes.addShapeless("ct_guide_book", <enchiridion:book>.withTag({identifier: "lite_island_guide_book"}), [
  <minecraft:book>, <ore:cobblestone>, <ore:dirt>
]);

//Temp recipe fix for Neutronium blocks to ingots
recipes.removeShapeless(<avaritia:resource:4>, [<avaritia:block_resource:0>]);
recipes.addShapeless("ct_neutronium_blocks_to_ingots", <avaritia:resource:4> * 9, [
  <avaritia:block_resource:0>
]);

//=====Loot Bags=====
recipes.addShaped("ct_uncommon_lootbag", <lootbags:itemlootbag:1>, [
  [<lootbags:itemlootbag:0>, <lootbags:itemlootbag:0>],
  [<lootbags:itemlootbag:0>, <lootbags:itemlootbag:0>]
]);
recipes.addShaped("ct_rare_lootbag", <lootbags:itemlootbag:2>, [
  [<lootbags:itemlootbag:1>, <lootbags:itemlootbag:1>],
  [<lootbags:itemlootbag:1>, <lootbags:itemlootbag:1>]
]);
recipes.addShaped("ct_epic_lootbag", <lootbags:itemlootbag:3>, [
  [<lootbags:itemlootbag:2>, <lootbags:itemlootbag:2>],
  [<lootbags:itemlootbag:2>, <lootbags:itemlootbag:2>]
]);
recipes.addShaped("ct_legendary_lootbag", <lootbags:itemlootbag:4>, [
  [<lootbags:itemlootbag:3>, <lootbags:itemlootbag:3>],
  [<lootbags:itemlootbag:3>, <lootbags:itemlootbag:3>]
]);

//=====Aroma1997's Dimensional World=====
//Re-added recipes so that Enchiridion can grab the recipes
recipes.remove(<aroma1997sdimension:portaligniter:*>);
recipes.addShaped("ct_mining_multitool", <aroma1997sdimension:portaligniter>, [
  [<ore:bricksStone>, <minecraft:iron_pickaxe>, <ore:bricksStone>],
  [null, <minecraft:flint_and_steel>, null],
  [null, <ore:stickWood>, null]
]);
recipes.remove(<aroma1997sdimension:dimensionchanger>);
recipes.addShaped("ct_dimension_changer", <aroma1997sdimension:dimensionchanger>, [
  [<ore:gemDiamond>, <minecraft:ender_eye>, <ore:gemDiamond>],
  [<ore:enderpearl>, <aroma1997sdimension:portaligniter:*>, <ore:enderpearl>],
  [<ore:gemDiamond>, <minecraft:ender_eye>, <ore:gemDiamond>]
]);
recipes.remove(<aroma1997sdimension:portalframe>);
recipes.addShapeless("ct_portal_frame", <aroma1997sdimension:portalframe>, [
  <aroma1997sdimension:portaligniter:*>, <ore:bricksStone>
]);

//=====Ex Compressum=====
recipes.addShapeless("ct_polar_bear_bait", <excompressum:bait:10>, [
  <ore:listAllfishraw>, <minecraft:snowball>
]);
recipes.addShapeless("ct_llama_bait", <excompressum:bait:11>, [
  <minecraft:wheat>, <minecraft:sugar>
]);
recipes.addShapeless("ct_parrot_bait", <excompressum:bait:12>, [
  <ore:dyeRed>, <ore:dyeGreen>
]);

//=====Thermal Expansion=====
recipes.addShapeless("ct_hardened_portable_tank_upgrade", <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 1 as byte}), [
  <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 0 as byte}), <thermalfoundation:upgrade:0>
]);
recipes.addShapeless("ct_reinforced_portable_tank_upgrade", <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 2 as byte}), [
  <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 1 as byte}), <thermalfoundation:upgrade:1>
]);
recipes.addShapeless("ct_reinforced_portable_tank_conversion_0", <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 2 as byte}), [
  <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 0 as byte}), <thermalfoundation:upgrade:33>
]);
recipes.addShapeless("ct_reinforced_portable_tank_conversion_1", <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 2 as byte}), [
  <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 1 as byte}), <thermalfoundation:upgrade:33>
]);
recipes.addShapeless("ct_signalum_portable_tank_upgrade", <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 3 as byte}), [
  <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 2 as byte}), <thermalfoundation:upgrade:2>
]);
recipes.addShapeless("ct_signalum_portable_tank_conversion_0", <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 3 as byte}), [
  <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 0 as byte}), <thermalfoundation:upgrade:34>
]);
recipes.addShapeless("ct_signalum_portable_tank_conversion_1", <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 3 as byte}), [
  <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 1 as byte}), <thermalfoundation:upgrade:34>
]);
recipes.addShapeless("ct_signalum_portable_tank_conversion_2", <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 3 as byte}), [
  <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 2 as byte}), <thermalfoundation:upgrade:34>
]);
recipes.addShapeless("ct_resonant_portable_tank_upgrade", <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 4 as byte}), [
  <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 3 as byte}), <thermalfoundation:upgrade:3>
]);
recipes.addShapeless("ct_resonant_portable_tank_conversion_0", <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 4 as byte}), [
  <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 0 as byte}), <thermalfoundation:upgrade:35>
]);
recipes.addShapeless("ct_resonant_portable_tank_conversion_1", <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 4 as byte}), [
  <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 1 as byte}), <thermalfoundation:upgrade:35>
]);
recipes.addShapeless("ct_resonant_portable_tank_conversion_2", <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 4 as byte}), [
  <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 2 as byte}), <thermalfoundation:upgrade:35>
]);
recipes.addShapeless("ct_resonant_portable_tank_conversion_3", <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 4 as byte}), [
  <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 3 as byte}), <thermalfoundation:upgrade:35>
]);

//=====Draconic Evolution=====
recipes.addShaped("ct_draconic_spawner", <draconicevolution:draconic_spawner>, [
  [null, <actuallyadditions:item_misc:20>, null],
  [<actuallyadditions:item_misc:20>, <draconicevolution:draconic_core>, <actuallyadditions:item_misc:20>],
  [null, <actuallyadditions:item_misc:20>, null]
]);

print("Common Changes loaded.");
