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

print("Loading recipes...");

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
  <betterbuilderswands:wanddiamond>, <betterbuilderswands:wandiron>, <tp:diamond_spear>, <tp:iron_spear>
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

//Adds recipe for cobweb
recipes.addShaped("ct_cobweb", <minecraft:web>, [
  [<mysticalagriculture:crafting:23>, null, <mysticalagriculture:crafting:23>],
  [null, <mysticalagriculture:crafting:23>, null],
  [<mysticalagriculture:crafting:23>, null, <mysticalagriculture:crafting:23>]
]);

//Adds recipe for end portal (this is temporary until I can get the new mod released)
recipes.addShaped("ct_end_portal_frame", <minecraft:end_portal_frame>, [
  [<ore:endstone>, <minecraft:ender_eye>, <ore:endstone>],
  [<ore:endstone>, <ore:ingotDraconium>, <ore:endstone>],
  [<ore:endstone>, <ore:endstone>, <ore:endstone>]
]);

//Deep dark portal nerf
recipes.remove(<extrautils2:teleporter:1>);
recipes.addShaped("ct_deep_dark_portal", <extrautils2:teleporter:1>, [
  [<ore:compressed4xCobblestone>, <ore:compressed5xCobblestone>, <ore:compressed4xCobblestone>],
  [<ore:compressed5xCobblestone>, <appliedenergistics2:material:47>, <ore:compressed5xCobblestone>],
  [<ore:compressed4xCobblestone>, <ore:compressed5xCobblestone>, <ore:compressed4xCobblestone>]
]);

//Watering can upgrades
recipes.remove(<extrautils2:wateringcan:*>);
recipes.remove(<thermalcultivation:watering_can>);
recipes.addShapedMirrored("ct_xu2_wateringcan", <extrautils2:wateringcan:1000>, [
  [<ore:ingotIron>, null, null],
  [<ore:ingotIron>, <minecraft:bucket>, <ore:ingotIron>],
  [null, <ore:ingotIron>, null]
]);
recipes.addShapedMirrored("ct_tc_watering_can", <thermalcultivation:watering_can>, [
  [<ore:ingotCopper>, null, null],
  [<ore:ingotCopper>, <extrautils2:wateringcan:*>, <ore:ingotCopper>],
  [null, <ore:ingotCopper>, null]
]);

//=====Tiny Progressions=====
var TP = [
  <tp:watering_can>, <tp:cobblegen_block>
] as IIngredient[];
for item in TP {
  recipes.remove(item);
}
#Watering can nerf
recipes.addShapedMirrored("ct_tp_watering_can", <tp:watering_can>, [
  [<ore:ingotSteel>, null, null],
  [<ore:ingotSteel>, <extrautils2:wateringcan:*>, <ore:ingotSteel>],
  [null, <ore:ingotSteel>, null]
]);
#Adds alternate recipes to cobble gen, allows clay buckets
recipes.addShapedMirrored("ct_cobblegen_1", <tp:cobblegen_block>, [
  [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
  [<minecraft:lava_bucket>, <ore:blockGlass>, <minecraft:water_bucket>],
  [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]
]);
recipes.addShapedMirrored("ct_cobblegen_2", <tp:cobblegen_block>, [
  [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
  [<ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}), <ore:blockGlass>, <ceramics:clay_bucket>.withTag({fluids: {FluidName: "lava", Amount: 1000}})],
  [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]
]);
recipes.addShapedMirrored("ct_cobblegen_3", <tp:cobblegen_block>, [
  [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
  [<minecraft:water_bucket>, <ore:blockGlass>, <ceramics:clay_bucket>.withTag({fluids: {FluidName: "lava", Amount: 1000}})],
  [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]
]);
recipes.addShapedMirrored("ct_cobblegen_4", <tp:cobblegen_block>, [
  [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
  [<ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}), <ore:blockGlass>, <minecraft:lava_bucket>],
  [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]
]);

//=====Mystical Agriculture=====
var MyAg = [
  <mysticalagriculture:infusion_crystal>, <mysticalagriculture:master_infusion_crystal>, <mysticalagriculture:soulium_dagger>,
  <mysticalagriculture:watering_can:0>, <mysticalagriculture:watering_can:1>, <mysticalagriculture:watering_can:2>,
  <mysticalagriculture:watering_can:3>, <mysticalagriculture:watering_can:4>
] as IIngredient[];
for item in MyAg {
  recipes.remove(item);
}
recipes.addShaped("ct_infusion_crystal", <mysticalagriculture:infusion_crystal>, [
  [<ore:ingotBaseEssence>, <ore:essenceInferium>, <ore:ingotBaseEssence>],
  [<ore:essenceInferium>, <ore:gemDiamond>, <ore:essenceInferium>],
  [<ore:ingotBaseEssence>, <ore:essenceInferium>, <ore:ingotBaseEssence>]
]);
recipes.addShaped("ct_master_infusion_crystal", <mysticalagriculture:master_infusion_crystal>, [
  [<ore:ingotBaseEssence>, <ore:essenceSupremium>, <ore:ingotBaseEssence>],
  [<ore:essenceSupremium>, <minecraft:nether_star>, <ore:essenceSupremium>],
  [<ore:ingotBaseEssence>, <ore:essenceSupremium>, <ore:ingotBaseEssence>]
]);
#Correct the position of the dagger recipe
recipes.addShaped("ct_soulium_dagger", <mysticalagriculture:soulium_dagger>, [
  [<ore:ingotSoulium>],
  [<ore:ingotSoulium>],
  [<mysticalagriculture:crafting:22>]
]);
#Progressive watering can recipes
recipes.addShapedMirrored("ct_inferium_watering_can", <mysticalagriculture:watering_can:0>, [
  [<ore:ingotInferium>, <mysticalagriculture:crafting:50>, null],
  [<mysticalagriculture:crafting:48>, <extrautils2:wateringcan:*>, <ore:ingotInferium>],
  [<ore:ingotInferium>, <ore:ingotInferium>, <ore:ingotInferium>]
]);
recipes.addShapedMirrored("ct_prudentium_watering_can", <mysticalagriculture:watering_can:1>, [
  [<ore:ingotPrudentium>, <mysticalagriculture:crafting:51>, null],
  [<mysticalagriculture:crafting:48>, <mysticalagriculture:watering_can:0>, <ore:ingotPrudentium>],
  [<ore:ingotPrudentium>, <ore:ingotPrudentium>, <ore:ingotPrudentium>]
]);
recipes.addShapedMirrored("ct_intermedium_watering_can", <mysticalagriculture:watering_can:2>, [
  [<ore:ingotIntermedium>, <mysticalagriculture:crafting:52>, null],
  [<mysticalagriculture:crafting:48>, <mysticalagriculture:watering_can:1>, <ore:ingotIntermedium>],
  [<ore:ingotIntermedium>, <ore:ingotIntermedium>, <ore:ingotIntermedium>]
]);
recipes.addShapedMirrored("ct_superium_watering_can", <mysticalagriculture:watering_can:3>, [
  [<ore:ingotSuperium>, <mysticalagriculture:crafting:53>, null],
  [<mysticalagriculture:crafting:48>, <mysticalagriculture:watering_can:2>, <ore:ingotSuperium>],
  [<ore:ingotSuperium>, <ore:ingotSuperium>, <ore:ingotSuperium>]
]);
recipes.addShapedMirrored("ct_supremium_watering_can", <mysticalagriculture:watering_can:4>, [
  [<ore:ingotSupremium>, <mysticalagriculture:crafting:54>, null],
  [<mysticalagriculture:crafting:48>, <mysticalagriculture:watering_can:3>, <ore:ingotSupremium>],
  [<ore:ingotSupremium>, <ore:ingotSupremium>, <ore:ingotSupremium>]
]);

//=====Quantum Storage=====
recipes.remove(<quantumstorage:quantum_storage_unit>);
recipes.remove(<quantumstorage:quantum_tank>);
recipes.remove(<quantumstorage:quantum_barrel>);
recipes.addShaped("ct_quantum_storage_unit", <quantumstorage:quantum_storage_unit>, [
  [<ore:blockRefinedObsidian>, <quantumstorage:chest_diamond>, <ore:blockRefinedObsidian>],
  [<quantumstorage:chest_diamond>, <appliedenergistics2:material:47>, <quantumstorage:chest_diamond>],
  [<ore:blockRefinedObsidian>, <quantumstorage:chest_diamond>, <ore:blockRefinedObsidian>]
]);
recipes.addShaped("ct_quantum_tank", <quantumstorage:quantum_tank>, [
  [<ore:blockRefinedObsidian>, <extrautils2:drum:2>, <ore:blockRefinedObsidian>],
  [<extrautils2:drum:2>, <appliedenergistics2:material:47>, <extrautils2:drum:2>],
  [<ore:blockRefinedObsidian>, <extrautils2:drum:2>, <ore:blockRefinedObsidian>]
]);
recipes.addShaped("ct_quantum_barrel", <quantumstorage:quantum_barrel>, [
  [<ore:blockRefinedObsidian>, <enderutilities:barrel>, <ore:blockRefinedObsidian>],
  [<enderutilities:barrel>, <appliedenergistics2:material:47>, <enderutilities:barrel>],
  [<ore:blockRefinedObsidian>, <enderutilities:barrel>, <ore:blockRefinedObsidian>]
]);

//=====Ex Nihilo Creatio=====
var ExNihilo = [
  <exnihilocreatio:item_mesh:2>, <exnihilocreatio:item_mesh:3>, <exnihilocreatio:item_mesh:4>,
  <exnihilocreatio:block_crucible_wood>
] as IIngredient[];
for item in ExNihilo {
  recipes.remove(item);
}
recipes.addShaped("ct_flint_mesh", <exnihilocreatio:item_mesh:2>, [
  [<ore:string>, <minecraft:flint>, <ore:string>],
  [<minecraft:flint>, <exnihilocreatio:item_mesh:1>, <minecraft:flint>],
  [<ore:string>, <minecraft:flint>, <ore:string>]
]);
recipes.addShaped("ct_iron_mesh", <exnihilocreatio:item_mesh:3>, [
  [<ore:string>, <ore:ingotIron>, <ore:string>],
  [<ore:ingotIron>, <exnihilocreatio:item_mesh:1>, <ore:ingotIron>],
  [<ore:string>, <ore:ingotIron>, <ore:string>]
]);
recipes.addShaped("ct_diamond_mesh", <exnihilocreatio:item_mesh:4>, [
  [<ore:string>, <ore:gemDiamond>, <ore:string>],
  [<ore:gemDiamond>, <exnihilocreatio:item_mesh:1>, <ore:gemDiamond>],
  [<ore:string>, <ore:gemDiamond>, <ore:string>]
]);
recipes.addShaped("ct_wooden_crucible", <exnihilocreatio:block_crucible_wood>, [
  [<ore:logWood>, null, <ore:logWood>],
  [<ore:logWood>, null, <ore:logWood>],
  [<ore:logWood>, <ore:plankWood>, <ore:logWood>]
]);

//=====Ex Compressum=====
recipes.remove(<excompressum:auto_hammer>);
recipes.addShaped("ct_auto_hammer", <excompressum:auto_hammer>, [
  [<ore:ingotIron>, <minecraft:heavy_weighted_pressure_plate>, <ore:ingotIron>],
  [<ore:ingotIron>, <exnihilocreatio:hammer_diamond>, <ore:ingotIron>],
  [<ore:ingotIron>, <minecraft:heavy_weighted_pressure_plate>, <ore:ingotIron>]
]);
recipes.addShaped("ct_auto_compressed_hammer", <excompressum:auto_compressed_hammer>, [
  [<ore:ingotSteel>, <minecraft:heavy_weighted_pressure_plate>, <ore:ingotSteel>],
  [<ore:ingotSteel>, <excompressum:compressed_hammer_diamond>, <ore:ingotSteel>],
  [<ore:ingotSteel>, <minecraft:heavy_weighted_pressure_plate>, <ore:ingotSteel>]
]);
recipes.addShapeless("ct_polar_bear_bait", <excompressum:bait:10>, [
  <ore:listAllfishraw>, <minecraft:snowball>
]);
recipes.addShapeless("ct_llama_bait", <excompressum:bait:11>, [
  <minecraft:wheat>, <minecraft:sugar>
]);
recipes.addShapeless("ct_parrot_bait", <excompressum:bait:12>, [
  <ore:dyeRed>, <ore:dyeGreen>
]);

//=====RFTools=====
recipes.remove(<rftools:machine_frame>);
recipes.remove(<rftools:machine_base>);
recipes.remove(<rftoolsdim:dimension_builder>);
recipes.addShaped("ct_rft_machine_frame", <rftools:machine_frame>, [
  [<ore:plateIron>, <actuallyadditions:item_crystal:1>, <ore:plateIron>],
  [<ore:plateElectrum>, null, <ore:plateElectrum>],
  [<ore:plateIron>, <actuallyadditions:item_crystal:1>, <ore:plateIron>]
]);
recipes.addShapeless("ct_rft_machine_frame_alt", <rftools:machine_frame>, [
  <rftools:machine_base>, <rftools:machine_base>
]);
recipes.addShapeless("ct_rft_machine_base", <rftools:machine_base> * 2, [
  <rftools:machine_frame>
]);
recipes.addShaped("ct_dimension_builder", <rftoolsdim:dimension_builder>, [
  [<draconicevolution:dislocator_advanced>, <extrautils2:opinium:4>, <draconicevolution:dislocator_advanced>],
  [<actuallyadditions:block_crystal_empowered:2>, <rftools:machine_frame>, <actuallyadditions:block_crystal_empowered:2>],
  [<extrautils2:opinium:2>, <extrautils2:opinium:2>, <extrautils2:opinium:2>]
]);

//=====AE2=====
var AE2 = [
  <appliedenergistics2:energy_acceptor>, <appliedenergistics2:charger>, <appliedenergistics2:inscriber>,
  <appliedenergistics2:drive>, <appliedenergistics2:chest>, <appliedenergistics2:condenser>,
  <appliedenergistics2:quartz_growth_accelerator>
] as IIngredient[];
for item in AE2 {
  recipes.remove(item);
}
recipes.addShaped("ct_energy_acceptor", <appliedenergistics2:energy_acceptor>, [
  [<ore:ingotSteel>, <appliedenergistics2:quartz_glass>, <ore:ingotSteel>],
  [<appliedenergistics2:quartz_glass>, <appliedenergistics2:fluix_block>, <appliedenergistics2:quartz_glass>],
  [<ore:ingotSteel>, <appliedenergistics2:quartz_glass>, <ore:ingotSteel>]
]);
recipes.addShapedMirrored("ct_charger", <appliedenergistics2:charger>, [
  [<ore:ingotSteel>, <appliedenergistics2:fluix_block>, <ore:ingotSteel>],
  [<ore:ingotSteel>, null, null],
  [<ore:ingotSteel>, <appliedenergistics2:fluix_block>, <ore:ingotSteel>]
]);
recipes.addShapedMirrored("ct_inscriber", <appliedenergistics2:inscriber>, [
  [<ore:ingotSteel>, <mekanism:machineblock:15>, <ore:ingotSteel>],
  [<appliedenergistics2:fluix_block>, null, <ore:ingotSteel>],
  [<ore:ingotSteel>, <mekanism:machineblock:15>, <ore:ingotSteel>]
]);
recipes.addShaped("ct_me_drive", <appliedenergistics2:drive>, [
  [<ore:ingotSteel>, <appliedenergistics2:material:24>, <ore:ingotSteel>],
  [<appliedenergistics2:part:16>, null, <appliedenergistics2:part:16>],
  [<ore:ingotSteel>, <appliedenergistics2:material:24>, <ore:ingotSteel>]
]);
recipes.addShaped("ct_me_chest", <appliedenergistics2:chest>, [
  [<thermalfoundation:glass_alloy:7>, <appliedenergistics2:part:380>, <thermalfoundation:glass_alloy:7>],
  [<appliedenergistics2:part:16>, null, <appliedenergistics2:part:16>],
  [<ore:ingotSteel>, <appliedenergistics2:energy_acceptor>, <ore:ingotSteel>]
]);
recipes.addShaped("ct_matter_condenser", <appliedenergistics2:condenser>, [
  [<ore:ingotSteel>, <thermalfoundation:glass_alloy:7>, <ore:ingotSteel>],
  [<thermalfoundation:glass_alloy:7>, <ore:dustFluix>, <thermalfoundation:glass_alloy:7>],
  [<ore:ingotSteel>, <thermalfoundation:glass_alloy:7>, <ore:ingotSteel>]
]);
recipes.addShaped("ct_crystal_growth_accelerator", <appliedenergistics2:quartz_growth_accelerator>, [
  [<ore:ingotSteel>, <appliedenergistics2:part:16>, <ore:ingotSteel>],
  [<appliedenergistics2:quartz_glass>, <appliedenergistics2:fluix_block>, <appliedenergistics2:quartz_glass>],
  [<ore:ingotSteel>, <appliedenergistics2:part:16>, <ore:ingotSteel>]
]);

//=====Psi=====
recipes.remove(<psi:cad_assembler>);
recipes.remove(<psi:programmer>);
recipes.addShaped("ct_cad_assembler", <psi:cad_assembler>, [
  [<ore:ingotSteel>, <mekanism:machineblock:15>, <ore:ingotSteel>],
  [<ore:ingotSteel>, null, <ore:ingotSteel>],
  [<psi:cad_assembly>, <ore:ingotSteel>, <psi:cad_assembly>]
]);
recipes.addShaped("ct_programmer", <psi:programmer>, [
  [<ore:ingotSteel>, <ore:blockPsiDust>, <ore:ingotSteel>],
  [<ore:ingotSteel>, null, <ore:ingotSteel>],
  [<ore:ingotSteel>, null, <ore:ingotSteel>]
]);

//=====NotEnoughWands=====
recipes.remove(<notenoughwands:acceleration_wand>);
recipes.addShapedMirrored("ct_acceleration_wand", <notenoughwands:acceleration_wand>, [
  [<extrautils2:ingredients:16>, <mysticalagriculture:charm:9>, null],
  [<mysticalagriculture:charm:9>, <notenoughwands:advanced_wandcore>, null],
  [null, null, <notenoughwands:advanced_wandcore>]
]);

//=====Draconic Evolution=====
var DE = [
  <draconicevolution:grinder>, <draconicevolution:dislocator>, <draconicevolution:draconium_capacitor:1>,
  <draconicevolution:energy_storage_core>, <draconicevolution:wyvern_helm>, <draconicevolution:wyvern_chest>,
  <draconicevolution:wyvern_legs>, <draconicevolution:wyvern_boots>, <draconicevolution:wyvern_sword>,
  <draconicevolution:wyvern_pick>, <draconicevolution:wyvern_axe>, <draconicevolution:wyvern_shovel>,
  <draconicevolution:wyvern_bow>
] as IIngredient[];
for item in DE {
  recipes.remove(item);
}
recipes.addShaped("ct_draconic_spawner", <draconicevolution:draconic_spawner>, [
  [null, <actuallyadditions:item_misc:20>, null],
  [<actuallyadditions:item_misc:20>, <draconicevolution:draconic_core>, <actuallyadditions:item_misc:20>],
  [null, <actuallyadditions:item_misc:20>, null]
]);
recipes.addShaped("ct_grinder", <draconicevolution:grinder>, [
  [<ore:ingotSteel>, <ore:blockDraconium>, <ore:ingotSteel>],
  [<mekanismtools:obsidiansword>, <draconicevolution:wyvern_core>, <mekanismtools:obsidiansword>],
  [<ore:ingotSteel>, <enderutilities:machine_0>, <ore:ingotSteel>]
]);
recipes.addShaped("ct_dislocator", <draconicevolution:dislocator>, [
  [<ore:dustPyrotheum>, <ore:dustDraconium>, <ore:dustPyrotheum>],
  [<ore:dustDraconium>, <enderutilities:enderporter:1>, <ore:dustDraconium>],
  [<ore:dustPyrotheum>, <ore:dustDraconium>, <ore:dustPyrotheum>]
]);
recipes.addShaped("ct_draconic_capacitor", <draconicevolution:draconium_capacitor:1>, [
  [<draconicevolution:draconic_energy_core>, <draconicevolution:awakened_core>, <draconicevolution:draconic_energy_core>],
  [<ore:ingotDraconiumAwakened>, <draconicevolution:draconium_capacitor:0>, <ore:ingotDraconiumAwakened>],
  [<draconicevolution:draconic_energy_core>, <ore:ingotDraconiumAwakened>, <draconicevolution:draconic_energy_core>]
]);
recipes.addShaped("ct_energy_storage_core", <draconicevolution:energy_storage_core>, [
  [<ore:blockDraconium>, <ore:blockDraconium>, <ore:blockDraconium>],
  [<draconicevolution:draconium_capacitor:0>, <draconicevolution:wyvern_core>, <draconicevolution:draconium_capacitor:0>],
  [<ore:blockDraconium>, <ore:blockDraconium>, <ore:blockDraconium>]
]);
recipes.addShaped("ct_wyvern_helm", <draconicevolution:wyvern_helm>, [
  [<ore:ingotDraconium>, <draconicevolution:wyvern_core>, <ore:ingotDraconium>],
  [<ore:ingotDraconium>, <redstonearsenal:armor.helmet_flux>, <ore:ingotDraconium>],
  [<ore:ingotDraconium>, <draconicevolution:wyvern_energy_core>, <ore:ingotDraconium>]
]);
recipes.addShaped("ct_wyvern_chest", <draconicevolution:wyvern_chest>, [
  [<ore:ingotDraconium>, <draconicevolution:wyvern_core>, <ore:ingotDraconium>],
  [<ore:ingotDraconium>, <redstonearsenal:armor.plate_flux>, <ore:ingotDraconium>],
  [<ore:ingotDraconium>, <draconicevolution:wyvern_energy_core>, <ore:ingotDraconium>]
]);
recipes.addShaped("ct_wyvern_legs", <draconicevolution:wyvern_legs>, [
  [<ore:ingotDraconium>, <draconicevolution:wyvern_core>, <ore:ingotDraconium>],
  [<ore:ingotDraconium>, <redstonearsenal:armor.legs_flux>, <ore:ingotDraconium>],
  [<ore:ingotDraconium>, <draconicevolution:wyvern_energy_core>, <ore:ingotDraconium>]
]);
recipes.addShaped("ct_wyvern_boots", <draconicevolution:wyvern_boots>, [
  [<ore:ingotDraconium>, <draconicevolution:wyvern_core>, <ore:ingotDraconium>],
  [<ore:ingotDraconium>, <redstonearsenal:armor.boots_flux>, <ore:ingotDraconium>],
  [<ore:ingotDraconium>, <draconicevolution:wyvern_energy_core>, <ore:ingotDraconium>]
]);
recipes.addShaped("ct_wyvern_sword", <draconicevolution:wyvern_sword>, [
  [null, <draconicevolution:wyvern_core>, null],
  [<ore:ingotDraconium>, <redstonearsenal:tool.sword_flux>, <ore:ingotDraconium>],
  [null, <draconicevolution:wyvern_energy_core>, null]
]);
recipes.addShaped("ct_wyvern_pickaxe", <draconicevolution:wyvern_pick>, [
  [null, <draconicevolution:wyvern_core>, null],
  [<ore:ingotDraconium>, <redstonearsenal:tool.pickaxe_flux>, <ore:ingotDraconium>],
  [null, <draconicevolution:wyvern_energy_core>, null]
]);
recipes.addShaped("ct_wyvern_axe", <draconicevolution:wyvern_axe>, [
  [null, <draconicevolution:wyvern_core>, null],
  [<ore:ingotDraconium>, <redstonearsenal:tool.axe_flux>, <ore:ingotDraconium>],
  [null, <draconicevolution:wyvern_energy_core>, null]
]);
recipes.addShaped("ct_wyvern_shovel", <draconicevolution:wyvern_shovel>, [
  [null, <draconicevolution:wyvern_core>, null],
  [<ore:ingotDraconium>, <redstonearsenal:tool.shovel_flux>, <ore:ingotDraconium>],
  [null, <draconicevolution:wyvern_energy_core>, null]
]);
recipes.addShaped("ct_wyvern_bow", <draconicevolution:wyvern_bow>, [
  [null, <draconicevolution:wyvern_core>, null],
  [<ore:ingotDraconium>, <redstonearsenal:tool.bow_flux>, <ore:ingotDraconium>],
  [null, <draconicevolution:wyvern_energy_core>, null]
]);

print("Recipes loaded.");
