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

print("Loading Normal Mode Recipes...");

//Adds recipe for Elytra
recipes.addShaped("ct_elytra", <minecraft:elytra>, [
  [null, <openblocks:hang_glider>, null],
  [<xreliquary:angelic_feather>, <harvestcraft:hardenedleatherchestitem>, <xreliquary:angelic_feather>],
  [null, <openblocks:hang_glider>, null]
]);

//Adds recipe for cobweb
recipes.addShaped("ct_cobweb", <minecraft:web>, [
  [<mysticalagriculture:crafting:23>, null, <mysticalagriculture:crafting:23>],
  [null, <mysticalagriculture:crafting:23>, null],
  [<mysticalagriculture:crafting:23>, null, <mysticalagriculture:crafting:23>]
]);

//Deep dark portal nerf
recipes.remove(<extrautils2:teleporter:1>);
recipes.addShaped("ct_deep_dark_portal", <extrautils2:teleporter:1>, [
  [<ore:compressed4xCobblestone>, <ore:compressed5xCobblestone>, <ore:compressed4xCobblestone>],
  [<ore:compressed5xCobblestone>, <appliedenergistics2:material:47>, <ore:compressed5xCobblestone>],
  [<ore:compressed4xCobblestone>, <ore:compressed5xCobblestone>, <ore:compressed4xCobblestone>]
]);

//=====Tiny Progressions=====
#Adds alternate recipes to cobble gen, allows clay buckets
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

//=====Calculator=====
recipes.remove(<calculator:atomicmultiplier>);
recipes.addShaped("ct_atomic_multiplier", <calculator:atomicmultiplier>, [
  [<calculator:calculatorplug>, <calculator:fabricationchamber>, <calculator:calculatorplug>],
  [<calculator:atomicmodule>, <calculator:atomicassembly>, <calculator:atomicmodule>],
  [<ore:ingotInfinity>, <calculator:flawlesscalculator>, <ore:ingotInfinity>]
]);

//=====Ex Nihilo Creatio=====
var ExNihilo = [
  <exnihilocreatio:item_mesh:2>, <exnihilocreatio:item_mesh:3>, <exnihilocreatio:item_mesh:4>
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

print("Normal Mode Recipes loaded.");
