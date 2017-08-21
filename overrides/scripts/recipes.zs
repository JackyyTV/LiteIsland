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
recipes.remove(<chiselsandbits:wrench_wood>);
recipes.remove(<actuallyadditions:item_helm_emerald>);
recipes.remove(<actuallyadditions:item_chest_emerald>);
recipes.remove(<actuallyadditions:item_pants_emerald>);
recipes.remove(<actuallyadditions:item_boots_emerald>);
recipes.remove(<actuallyadditions:item_sword_emerald>);
recipes.remove(<actuallyadditions:item_pickaxe_emerald>);
recipes.remove(<actuallyadditions:item_axe_emerald>);
recipes.remove(<actuallyadditions:item_shovel_emerald>);
recipes.remove(<actuallyadditions:item_hoe_emerald>);
recipes.remove(<cyclicmagic:emerald_sword>);
recipes.remove(<cyclicmagic:emerald_pickaxe>);
recipes.remove(<cyclicmagic:emerald_axe>);
recipes.remove(<cyclicmagic:emerald_spade>);
recipes.remove(<cyclicmagic:emerald_hoe>);
recipes.remove(<actuallyadditions:item_helm_obsidian>);
recipes.remove(<actuallyadditions:item_chest_obsidian>);
recipes.remove(<actuallyadditions:item_pants_obsidian>);
recipes.remove(<actuallyadditions:item_boots_obsidian>);
recipes.remove(<actuallyadditions:item_sword_obsidian>);
recipes.remove(<actuallyadditions:item_pickaxe_obsidian>);
recipes.remove(<actuallyadditions:item_axe_obsidian>);
recipes.remove(<actuallyadditions:item_shovel_obsidian>);
recipes.remove(<actuallyadditions:item_hoe_obsidian>);
recipes.remove(<mekanismtools:steelhelmet>);
recipes.remove(<mekanismtools:steelchestplate>);
recipes.remove(<mekanismtools:steelleggings>);
recipes.remove(<mekanismtools:steelboots>);
recipes.remove(<mekanismtools:steelsword>);
recipes.remove(<mekanismtools:steelpickaxe>);
recipes.remove(<mekanismtools:steelaxe>);
recipes.remove(<mekanismtools:steelshovel>);
recipes.remove(<mekanismtools:steelhoe>);
recipes.remove(<mekanismtools:bronzehelmet>);
recipes.remove(<mekanismtools:bronzechestplate>);
recipes.remove(<mekanismtools:bronzeleggings>);
recipes.remove(<mekanismtools:bronzeboots>);
recipes.remove(<mekanismtools:bronzesword>);
recipes.remove(<mekanismtools:bronzepickaxe>);
recipes.remove(<mekanismtools:bronzeaxe>);
recipes.remove(<mekanismtools:bronzeshovel>);
recipes.remove(<mekanismtools:bronzehoe>);
recipes.remove(<chisel:futura>);
recipes.addShapedMirrored("ct_wooden_wrench", <chiselsandbits:wrench_wood>, [
  [null, <ore:plankWood>, null],
  [null, <ore:gearWood>, <ore:plankWood>],
  [<ore:stickWood>, null, null]
]);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_helm_emerald>,
  <cyclicmagic:emerald_helmet>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_chest_emerald>,
  <cyclicmagic:emerald_chestplate>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_pants_emerald>,
  <cyclicmagic:emerald_leggings>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_boots_emerald>,
  <cyclicmagic:emerald_boots>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<cyclicmagic:emerald_sword>,
  <tp:emerald_sword>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<cyclicmagic:emerald_pickaxe>,
  <tp:emerald_pickaxe>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<cyclicmagic:emerald_axe>,
  <tp:emerald_axe>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<cyclicmagic:emerald_spade>,
  <tp:emerald_spade>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<cyclicmagic:emerald_hoe>,
  <tp:emerald_hoe>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_sword_emerald>,
  <cyclicmagic:emerald_sword>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_pickaxe_emerald>,
  <cyclicmagic:emerald_pickaxe>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_axe_emerald>,
  <cyclicmagic:emerald_axe>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_shovel_emerald>,
  <cyclicmagic:emerald_spade>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_hoe_emerald>,
  <cyclicmagic:emerald_hoe>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_sword_obsidian>,
  <tp:obsidian_sword>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_pickaxe_obsidian>,
  <tp:obsidian_pickaxe>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_axe_obsidian>,
  <tp:obsidian_axe>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_shovel_obsidian>,
  <tp:obsidian_spade>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_hoe_obsidian>,
  <tp:obsidian_hoe>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_helm_obsidian>,
  <tp:obsidian_helmet>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_chest_obsidian>,
  <tp:obsidian_chestplate>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_pants_obsidian>,
  <tp:obsidian_leggings>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_boots_obsidian>,
  <tp:obsidian_boots>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<mekanismtools:steelhelmet>,
  <thermalfoundation:armor.helmet_steel>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<mekanismtools:steelchestplate>,
  <thermalfoundation:armor.plate_steel>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<mekanismtools:steelleggings>,
  <thermalfoundation:armor.legs_steel>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<mekanismtools:steelboots>,
  <thermalfoundation:armor.boots_steel>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<mekanismtools:steelsword>,
  <thermalfoundation:tool.sword_steel>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<mekanismtools:steelpickaxe>,
  <thermalfoundation:tool.pickaxe_steel>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<mekanismtools:steelaxe>,
  <thermalfoundation:tool.axe_steel>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<mekanismtools:steelshovel>,
  <thermalfoundation:tool.shovel_steel>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<mekanismtools:steelhoe>,
  <thermalfoundation:tool.hoe_steel>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<mekanismtools:bronzehelmet>,
  <thermalfoundation:armor.helmet_bronze>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<mekanismtools:bronzechestplate>,
  <thermalfoundation:armor.plate_bronze>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<mekanismtools:bronzeleggings>,
  <thermalfoundation:armor.legs_bronze>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<mekanismtools:bronzeboots>,
  <thermalfoundation:armor.boots_bronze>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<mekanismtools:bronzesword>,
  <thermalfoundation:tool.sword_bronze>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<mekanismtools:bronzepickaxe>,
  <thermalfoundation:tool.pickaxe_bronze>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<mekanismtools:bronzeaxe>,
  <thermalfoundation:tool.axe_bronze>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<mekanismtools:bronzeshovel>,
  <thermalfoundation:tool.shovel_bronze>, 1500
);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<mekanismtools:bronzehoe>,
  <thermalfoundation:tool.hoe_bronze>, 1500
);
recipes.addShaped("ct_futura_block", <chisel:futura>, [
  [<ore:bricksStone>, <ore:bricksStone>, <ore:bricksStone>],
  [<ore:bricksStone>, <ore:dustRedstone>, <ore:bricksStone>],
  [<ore:bricksStone>, <ore:bricksStone>, <ore:bricksStone>]
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

//Adds alternate recipes to TP cobble gen, allows clay buckets
recipes.remove(<tp:cobblegen_block>);
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

//Cyclic uncrafting grinder nerf - I don't really want people to use this tbh
recipes.remove(<cyclicmagic:uncrafting_block>);
//See recipe in fusion crafting

//Watering can nerf + upgrades
recipes.remove(<extrautils2:wateringcan:*>);
recipes.remove(<thermalcultivation:watering_can>);
recipes.remove(<tp:watering_can>);
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
recipes.addShapedMirrored("ct_tp_watering_can", <tp:watering_can>, [
  [<ore:ingotSteel>, null, null],
  [<ore:ingotSteel>, <extrautils2:wateringcan:*>, <ore:ingotSteel>],
  [null, <ore:ingotSteel>, null]
]);

//=====Ex Nihilo Creatio=====
recipes.remove(<exnihilocreatio:item_mesh:2>);
recipes.remove(<exnihilocreatio:item_mesh:3>);
recipes.remove(<exnihilocreatio:item_mesh:4>);
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
recipes.remove(<appliedenergistics2:energy_acceptor>);
recipes.remove(<appliedenergistics2:charger>);
recipes.remove(<appliedenergistics2:inscriber>);
recipes.remove(<appliedenergistics2:drive>);
recipes.remove(<appliedenergistics2:chest>);
recipes.remove(<appliedenergistics2:condenser>);
recipes.remove(<appliedenergistics2:quartz_growth_accelerator>);
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
recipes.remove(<draconicevolution:grinder>);
recipes.remove(<draconicevolution:dislocator>);
recipes.remove(<draconicevolution:draconium_capacitor:1>);
recipes.remove(<draconicevolution:energy_storage_core>);
recipes.remove(<draconicevolution:wyvern_helm>);
recipes.remove(<draconicevolution:wyvern_chest>);
recipes.remove(<draconicevolution:wyvern_legs>);
recipes.remove(<draconicevolution:wyvern_boots>);
recipes.remove(<draconicevolution:wyvern_sword>);
recipes.remove(<draconicevolution:wyvern_pick>);
recipes.remove(<draconicevolution:wyvern_axe>);
recipes.remove(<draconicevolution:wyvern_shovel>);
recipes.remove(<draconicevolution:wyvern_bow>);
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
