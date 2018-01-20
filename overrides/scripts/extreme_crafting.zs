import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

/*
=====TEMPLATES=====
var null = null;
mods.avaritia.ExtremeCrafting.remove(null);
mods.avaritia.ExtremeCrafting.addShaped("null", null, [
  [null, null, null, null, null, null, null, null, null],
  [null, null, null, null, null, null, null, null, null],
  [null, null, null, null, null, null, null, null, null],
  [null, null, null, null, null, null, null, null, null],
  [null, null, null, null, null, null, null, null, null],
  [null, null, null, null, null, null, null, null, null],
  [null, null, null, null, null, null, null, null, null],
  [null, null, null, null, null, null, null, null, null],
  [null, null, null, null, null, null, null, null, null]
]);
mods.avaritia.ExtremeCrafting.addShapeless("null", null, [
  null
]);
*/

print("Loading extreme crafting...");

//Infinity Catalyst
mods.avaritia.ExtremeCrafting.remove(<avaritia:resource:5>);
mods.avaritia.ExtremeCrafting.addShapeless("ct_infinity_catalyst", <avaritia:resource:5>, [
  <avaritia:resource:1>, <avaritia:resource:4>, <avaritia:ultimate_stew>, <avaritia:cosmic_meatballs>,
  <avaritia:endest_pearl>, <avaritia:resource:7>, <avaritia:singularity:0>, <avaritia:singularity:1>,
  <avaritia:singularity:2>, <avaritia:singularity:3>, <avaritia:singularity:4>, <avaritia:singularity:10>,
  <avaritia:singularity:11>, <actuallyadditions:item_misc:19>, <actuallyadditions:block_crystal_empowered:0>,
  <actuallyadditions:block_crystal_empowered:1>, <actuallyadditions:block_crystal_empowered:2>,
  <actuallyadditions:block_crystal_empowered:3>, <actuallyadditions:block_crystal_empowered:4>,
  <actuallyadditions:block_crystal_empowered:5>, <extrautils2:opinium:8>, <draconicevolution:chaotic_core>,
  <enderutilities:enderpart:17>, <extracells:storage.component:3>, <appliedenergistics2:material:34>,
  <appliedenergistics2:material:47>, <calculator:flawlessdiamond>, <calculator:enddiamond>,
  <psi:material:3>, <psi:material:4>, <twilightforest:knightmetal_ingot>, <twilightforest:fiery_ingot>,
  <extrautils2:simpledecorative:0>, <extrautils2:simpledecorative:1>, <extrautils2:simpledecorative:2>,
  <bigreactors:blockmetals:4>, <botania:storage:1>, <thermalfoundation:storage_alloy:7>, <tconstruct:metal:3>,
  <mysticalagradditions:storage:1>
]);

//Uncrafting Table
mods.avaritia.ExtremeCrafting.addShaped("ct_uncrafting_table", <twilightforest:uncrafting_table>, [
  [<avaritia:double_compressed_crafting_table>, <avaritia:double_compressed_crafting_table>, <avaritia:double_compressed_crafting_table>, <avaritia:double_compressed_crafting_table>, <avaritia:double_compressed_crafting_table>, <avaritia:double_compressed_crafting_table>, <avaritia:double_compressed_crafting_table>, <avaritia:double_compressed_crafting_table>, <avaritia:double_compressed_crafting_table>],
  [<avaritia:double_compressed_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:double_compressed_crafting_table>],
  [<avaritia:double_compressed_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:double_compressed_crafting_table>],
  [<avaritia:double_compressed_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <cyclicmagic:uncrafting_block>, <cyclicmagic:uncrafting_block>, <cyclicmagic:uncrafting_block>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:double_compressed_crafting_table>],
  [<avaritia:double_compressed_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <cyclicmagic:uncrafting_block>, <twilightforest:maze_map_focus>, <cyclicmagic:uncrafting_block>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:double_compressed_crafting_table>],
  [<avaritia:double_compressed_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <cyclicmagic:uncrafting_block>, <cyclicmagic:uncrafting_block>, <cyclicmagic:uncrafting_block>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:double_compressed_crafting_table>],
  [<avaritia:double_compressed_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:double_compressed_crafting_table>],
  [<avaritia:double_compressed_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:extreme_crafting_table>, <avaritia:double_compressed_crafting_table>],
  [<avaritia:double_compressed_crafting_table>, <avaritia:double_compressed_crafting_table>, <avaritia:double_compressed_crafting_table>, <avaritia:double_compressed_crafting_table>, <avaritia:double_compressed_crafting_table>, <avaritia:double_compressed_crafting_table>, <avaritia:double_compressed_crafting_table>, <avaritia:double_compressed_crafting_table>, <avaritia:double_compressed_crafting_table>]
]);

//Creative Exchanger
mods.avaritia.ExtremeCrafting.addShaped("ct_creative_exchanger", <exchangers:excreative>, [
  [null, null, <avaritia:resource:6>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <avaritia:resource:6>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <extracells:storage.physical:3>, <storagedrawers:upgrade_creative:0>, <extracells:storage.physical:3>, <mysticalagradditions:stuff:69>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <exchangers:exobsidian>, <exchangers:exobsidian>, <exchangers:exobsidian>, <mysticalagradditions:stuff:69>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <exchangers:exresonant>, <exchangers:exresonant>, <exchangers:exresonant>, <mysticalagradditions:stuff:69>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <avaritia:singularity:12>, <avaritia:resource:5>, <avaritia:singularity:12>, <mysticalagradditions:stuff:69>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <exchangers:exultimate>, <exchangers:exultimate>, <exchangers:exultimate>, <mysticalagradditions:stuff:69>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <exchangers:exhv>, <exchangers:exhv>, <exchangers:exhv>, <mysticalagradditions:stuff:69>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <extracells:storage.physical:3>, <storagedrawers:upgrade_creative:0>, <extracells:storage.physical:3>, <mysticalagradditions:stuff:69>, null, null],
  [null, null, <avaritia:resource:6>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <avaritia:resource:6>, null, null]
]);

//Everlasting Guilty Pool
mods.avaritia.ExtremeCrafting.addShaped("ct_creative_mana_pool", <botania:pool:1>, [
  [<avaritia:resource:6>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <avaritia:resource:6>],
  [<mysticalagradditions:stuff:69>, <botania:pool:3>, <botania:pool:3>, <botania:pool:3>, <botania:pool:3>, <botania:pool:3>, <botania:pool:3>, <botania:pool:3>, <mysticalagradditions:stuff:69>],
  [<mysticalagradditions:stuff:69>, <botania:pool:3>, <botania:pool:3>, <botania:pool:3>, <botania:pool:3>, <botania:pool:3>, <botania:pool:3>, <botania:pool:3>, <mysticalagradditions:stuff:69>],
  [<mysticalagradditions:stuff:69>, <botania:pool:3>, <botania:pool:3>, <botania:laputashard:19>, <botania:laputashard:19>, <botania:laputashard:19>, <botania:pool:3>, <botania:pool:3>, <mysticalagradditions:stuff:69>],
  [<mysticalagradditions:stuff:69>, <botania:pool:3>, <botania:pool:3>, <botania:laputashard:19>, <avaritia:resource:5>, <botania:laputashard:19>, <botania:pool:3>, <botania:pool:3>, <mysticalagradditions:stuff:69>],
  [<mysticalagradditions:stuff:69>, <botania:pool:3>, <botania:pool:3>, <botania:laputashard:19>, <botania:laputashard:19>, <botania:laputashard:19>, <botania:pool:3>, <botania:pool:3>, <mysticalagradditions:stuff:69>],
  [<mysticalagradditions:stuff:69>, <botania:pool:3>, <botania:pool:3>, <botania:pool:3>, <botania:pool:3>, <botania:pool:3>, <botania:pool:3>, <botania:pool:3>, <mysticalagradditions:stuff:69>],
  [<mysticalagradditions:stuff:69>, <botania:pool:3>, <botania:pool:3>, <botania:pool:3>, <botania:pool:3>, <botania:pool:3>, <botania:pool:3>, <botania:pool:3>, <mysticalagradditions:stuff:69>],
  [<avaritia:resource:6>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <avaritia:resource:6>]
]);

//Creative Mill
mods.avaritia.ExtremeCrafting.addShaped("ct_creative_mill", <extrautils2:passivegenerator:6>, [
  [<avaritia:resource:6>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <avaritia:resource:6>],
  [<mysticalagradditions:stuff:69>, <extrautils2:passivegenerator:2>, <extrautils2:passivegenerator:5>, <extrautils2:passivegenerator:0>, <extrautils2:passivegenerator:0>, <extrautils2:passivegenerator:0>, <extrautils2:passivegenerator:4>, <extrautils2:passivegenerator:3>, <mysticalagradditions:stuff:69>],
  [<mysticalagradditions:stuff:69>, <extrautils2:passivegenerator:2>, <extrautils2:passivegenerator:5>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:4>, <extrautils2:passivegenerator:3>, <mysticalagradditions:stuff:69>],
  [<mysticalagradditions:stuff:69>, <extrautils2:passivegenerator:2>, <extrautils2:passivegenerator:5>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:4>, <extrautils2:passivegenerator:3>, <mysticalagradditions:stuff:69>],
  [<mysticalagradditions:stuff:69>, <extrautils2:passivegenerator:2>, <extrautils2:passivegenerator:5>, <extrautils2:passivegenerator:8>, <avaritia:resource:5>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:4>, <extrautils2:passivegenerator:3>, <mysticalagradditions:stuff:69>],
  [<mysticalagradditions:stuff:69>, <extrautils2:passivegenerator:2>, <extrautils2:passivegenerator:5>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:4>, <extrautils2:passivegenerator:3>, <mysticalagradditions:stuff:69>],
  [<mysticalagradditions:stuff:69>, <extrautils2:passivegenerator:2>, <extrautils2:passivegenerator:5>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:4>, <extrautils2:passivegenerator:3>, <mysticalagradditions:stuff:69>],
  [<mysticalagradditions:stuff:69>, <extrautils2:passivegenerator:2>, <extrautils2:passivegenerator:5>, <extrautils2:passivegenerator:1>, <extrautils2:passivegenerator:1>, <extrautils2:passivegenerator:1>, <extrautils2:passivegenerator:4>, <extrautils2:passivegenerator:3>, <mysticalagradditions:stuff:69>],
  [<avaritia:resource:6>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <avaritia:resource:6>]
]);

//Creative Spike
mods.avaritia.ExtremeCrafting.addShaped("ct_creative_spike", <extrautils2:spike_creative>, [
  [null, null, null, null, null, null, null, null, null],
  [null, null, null, null, null, null, null, null, null],
  [null, null, null, null, <avaritia:resource:6>, null, null, null, null],
  [null, null, null, <mysticalagradditions:stuff:69>, <draconicevolution:draconic_staff_of_power>, <mysticalagradditions:stuff:69>, null, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <draconicevolution:grinder>, <draconicevolution:grinder>, <draconicevolution:grinder>, <mysticalagradditions:stuff:69>, null, null],
  [null, <mysticalagradditions:stuff:69>, <extrautils2:spike_diamond>, <extrautils2:spike_diamond>, <extrautils2:spike_diamond>, <extrautils2:spike_diamond>, <extrautils2:spike_diamond>, <mysticalagradditions:stuff:69>, null],
  [<avaritia:resource:6>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <avaritia:resource:5>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <avaritia:resource:6>],
  [null, null, null, null, null, null, null, null, null],
  [null, null, null, null, null, null, null, null, null]
]);

//Creative Drum
mods.avaritia.ExtremeCrafting.addShaped("ct_creative_drum", <extrautils2:drum:4>, [
  [null, null, <avaritia:resource:6>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <avaritia:resource:6>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <extrautils2:drum:3>, <extrautils2:drum:3>, <extrautils2:drum:3>, <mysticalagradditions:stuff:69>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <extrautils2:drum:3>, <extrautils2:drum:3>, <extrautils2:drum:3>, <mysticalagradditions:stuff:69>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <extrautils2:drum:3>, <extrautils2:drum:3>, <extrautils2:drum:3>, <mysticalagradditions:stuff:69>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <extrautils2:drum:3>, <avaritia:resource:5>, <extrautils2:drum:3>, <mysticalagradditions:stuff:69>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <extrautils2:drum:3>, <extrautils2:drum:3>, <extrautils2:drum:3>, <mysticalagradditions:stuff:69>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <extrautils2:drum:3>, <extrautils2:drum:3>, <extrautils2:drum:3>, <mysticalagradditions:stuff:69>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <extrautils2:drum:3>, <extrautils2:drum:3>, <extrautils2:drum:3>, <mysticalagradditions:stuff:69>, null, null],
  [null, null, <avaritia:resource:6>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <avaritia:resource:6>, null, null]
]);

//Creative Fluid Tank
mods.avaritia.ExtremeCrafting.addShaped("ct_creative_fluid_tank", <mekanism:machineblock2:11>.withTag({tier: 4}), [
  [null, null, <avaritia:resource:6>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <avaritia:resource:6>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <mekanism:machineblock2:11>.withTag({tier: 3}), <mekanism:machineblock2:11>.withTag({tier: 3}), <mekanism:machineblock2:11>.withTag({tier: 3}), <mysticalagradditions:stuff:69>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <mekanism:machineblock2:11>.withTag({tier: 3}), <mekanism:machineblock2:11>.withTag({tier: 3}), <mekanism:machineblock2:11>.withTag({tier: 3}), <mysticalagradditions:stuff:69>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <mekanism:machineblock2:11>.withTag({tier: 3}), <mekanism:machineblock2:11>.withTag({tier: 3}), <mekanism:machineblock2:11>.withTag({tier: 3}), <mysticalagradditions:stuff:69>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <mekanism:machineblock2:11>.withTag({tier: 3}), <avaritia:resource:5>, <mekanism:machineblock2:11>.withTag({tier: 3}), <mysticalagradditions:stuff:69>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <mekanism:machineblock2:11>.withTag({tier: 3}), <mekanism:machineblock2:11>.withTag({tier: 3}), <mekanism:machineblock2:11>.withTag({tier: 3}), <mysticalagradditions:stuff:69>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <mekanism:machineblock2:11>.withTag({tier: 3}), <mekanism:machineblock2:11>.withTag({tier: 3}), <mekanism:machineblock2:11>.withTag({tier: 3}), <mysticalagradditions:stuff:69>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <mekanism:machineblock2:11>.withTag({tier: 3}), <mekanism:machineblock2:11>.withTag({tier: 3}), <mekanism:machineblock2:11>.withTag({tier: 3}), <mysticalagradditions:stuff:69>, null, null],
  [null, null, <avaritia:resource:6>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <avaritia:resource:6>, null, null]
]);

//Creative Gas Tank
mods.avaritia.ExtremeCrafting.addShaped("ct_creative_gas_tank", <mekanism:gastank>.withTag({tier: 4}), [
  [null, null, <avaritia:resource:6>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <avaritia:resource:6>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <mekanism:gastank>.withTag({tier: 3}), <mekanism:gastank>.withTag({tier: 3}), <mekanism:gastank>.withTag({tier: 3}), <mysticalagradditions:stuff:69>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <mekanism:gastank>.withTag({tier: 3}), <mekanism:gastank>.withTag({tier: 3}), <mekanism:gastank>.withTag({tier: 3}), <mysticalagradditions:stuff:69>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <mekanism:gastank>.withTag({tier: 3}), <mekanism:gastank>.withTag({tier: 3}), <mekanism:gastank>.withTag({tier: 3}), <mysticalagradditions:stuff:69>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <mekanism:gastank>.withTag({tier: 3}), <avaritia:resource:5>, <mekanism:gastank>.withTag({tier: 3}), <mysticalagradditions:stuff:69>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <mekanism:gastank>.withTag({tier: 3}), <mekanism:gastank>.withTag({tier: 3}), <mekanism:gastank>.withTag({tier: 3}), <mysticalagradditions:stuff:69>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <mekanism:gastank>.withTag({tier: 3}), <mekanism:gastank>.withTag({tier: 3}), <mekanism:gastank>.withTag({tier: 3}), <mysticalagradditions:stuff:69>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <mekanism:gastank>.withTag({tier: 3}), <mekanism:gastank>.withTag({tier: 3}), <mekanism:gastank>.withTag({tier: 3}), <mysticalagradditions:stuff:69>, null, null],
  [null, null, <avaritia:resource:6>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <avaritia:resource:6>, null, null]
]);

//Creative CAD Assembly
mods.avaritia.ExtremeCrafting.addShaped("ct_creative_cad_assembly", <psi:cad_assembly:5>, [
  [null, null, null, null, null, null, null, null, null],
  [null, null, null, null, null, null, null, null, null],
  [<avaritia:resource:5>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <avaritia:resource:5>],
  [<mysticalagradditions:stuff:69>, <psi:cad_assembly:3>, <psi:cad_assembly:3>, <psi:cad_assembly:3>, <psi:cad_assembly:3>, <psi:cad_assembly:3>, <psi:cad_assembly:3>, <psi:cad_assembly:3>, <mysticalagradditions:stuff:69>],
  [<mysticalagradditions:stuff:69>, <psi:cad_assembly:4>, <psi:cad_assembly:4>, <psi:cad_assembly:4>, <psi:cad_assembly:4>, <psi:cad_assembly:4>, <psi:cad_assembly:4>, <psi:cad_assembly:4>, <mysticalagradditions:stuff:69>],
  [<avaritia:resource:5>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <avaritia:resource:5>, <psi:cad_assembly:2>, <mysticalagradditions:stuff:69>],
  [null, null, null, null, null, null, <mysticalagradditions:stuff:69>, <psi:cad_assembly:2>, <mysticalagradditions:stuff:69>],
  [null, null, null, null, null, null, <avaritia:resource:6>, <mysticalagradditions:stuff:69>, <avaritia:resource:6>],
  [null, null, null, null, null, null, null, null, null]
]);

//Creative Modifier
mods.avaritia.ExtremeCrafting.addShaped("ct_creative_modifier", <tconstruct:materials:50>, [
  [null, null, null, null, null, null, null, null, null],
  [null, null, null, null, null, null, null, null, null],
  [null, null, null, null, null, null, null, null, null],
  [null, null, null, <mysticalagradditions:stuff:69>, <tinkersaddons:modifier_item:1>, <mysticalagradditions:stuff:69>, null, null, null],
  [null, null, null, <tinkersaddons:modifier_item:3>, <avaritia:resource:5>, <tinkersaddons:modifier_item:4>, null, null, null],
  [null, null, null, <mysticalagradditions:stuff:69>, <tinkersaddons:modifier_item:2>, <mysticalagradditions:stuff:69>, null, null, null],
  [null, null, null, null, null, null, null, null, null],
  [null, null, null, null, null, null, null, null, null],
  [null, null, null, null, null, null, null, null, null]
]);

//Creative Storage Upgrade
mods.avaritia.ExtremeCrafting.addShaped("ct_creative_storage_upgrade", <storagedrawers:upgrade_creative:0>, [
  [null, null, null, null, null, null, null, null, null],
  [null, <avaritia:resource:6>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <avaritia:resource:6>, null],
  [null, <mysticalagradditions:stuff:69>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <mysticalagradditions:stuff:69>, null],
  [null, <mysticalagradditions:stuff:69>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <mysticalagradditions:stuff:69>, null],
  [null, <mysticalagradditions:stuff:69>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <avaritia:resource:5>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <mysticalagradditions:stuff:69>, null],
  [null, <mysticalagradditions:stuff:69>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <mysticalagradditions:stuff:69>, null],
  [null, <mysticalagradditions:stuff:69>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_storage:4>, <mysticalagradditions:stuff:69>, null],
  [null, <avaritia:resource:6>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <avaritia:resource:6>, null],
  [null, null, null, null, null, null, null, null, null]
]);

//Creative Vending Upgrade
mods.avaritia.ExtremeCrafting.addShaped("ct_creative_vending_upgrade", <storagedrawers:upgrade_creative:1>, [
  [null, null, null, null, null, null, null, null, null],
  [null, <avaritia:resource:6>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <avaritia:resource:6>, null],
  [null, <mysticalagradditions:stuff:69>, <avaritia:endest_pearl>, <avaritia:endest_pearl>, <avaritia:endest_pearl>, <avaritia:endest_pearl>, <avaritia:endest_pearl>, <mysticalagradditions:stuff:69>, null],
  [null, <mysticalagradditions:stuff:69>, <avaritia:endest_pearl>, <avaritia:endest_pearl>, <storagedrawers:upgrade_creative:0>, <avaritia:endest_pearl>, <avaritia:endest_pearl>, <mysticalagradditions:stuff:69>, null],
  [null, <mysticalagradditions:stuff:69>, <exchangers:excreative>, <storagedrawers:upgrade_creative:0>, <avaritia:resource:5>, <storagedrawers:upgrade_creative:0>, <exchangers:excreative>, <mysticalagradditions:stuff:69>, null],
  [null, <mysticalagradditions:stuff:69>, <avaritia:endest_pearl>, <avaritia:endest_pearl>, <storagedrawers:upgrade_creative:0>, <avaritia:endest_pearl>, <avaritia:endest_pearl>, <mysticalagradditions:stuff:69>, null],
  [null, <mysticalagradditions:stuff:69>, <avaritia:endest_pearl>, <avaritia:endest_pearl>, <avaritia:endest_pearl>, <avaritia:endest_pearl>, <avaritia:endest_pearl>, <mysticalagradditions:stuff:69>, null],
  [null, <avaritia:resource:6>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <avaritia:resource:6>, null],
  [null, null, null, null, null, null, null, null, null]
]);

//Creative RF Source
mods.avaritia.ExtremeCrafting.addShaped("ct_creative_rf_source", <draconicevolution:creative_rf_source>, [
  [<avaritia:resource:6>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <avaritia:resource:6>],
  [<mysticalagradditions:stuff:69>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <mysticalagradditions:stuff:69>],
  [<mysticalagradditions:stuff:69>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <mysticalagradditions:stuff:69>],
  [<mysticalagradditions:stuff:69>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:energy_storage_core>, <draconicevolution:energy_storage_core>, <draconicevolution:energy_storage_core>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <mysticalagradditions:stuff:69>],
  [<mysticalagradditions:stuff:69>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:energy_storage_core>, <avaritia:resource:5>, <draconicevolution:energy_storage_core>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <mysticalagradditions:stuff:69>],
  [<mysticalagradditions:stuff:69>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:energy_storage_core>, <draconicevolution:energy_storage_core>, <draconicevolution:energy_storage_core>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <mysticalagradditions:stuff:69>],
  [<mysticalagradditions:stuff:69>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <mysticalagradditions:stuff:69>],
  [<mysticalagradditions:stuff:69>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <mysticalagradditions:stuff:69>],
  [<avaritia:resource:6>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <avaritia:resource:6>]
]);

//Creative Energy Cell (AE2)
mods.avaritia.ExtremeCrafting.addShaped("ct_creative_energy_cell_ae2", <appliedenergistics2:creative_energy_cell>, [
  [<avaritia:resource:6>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <avaritia:resource:6>],
  [<mysticalagradditions:stuff:69>, <appliedenergistics2:fluix_block>, <appliedenergistics2:fluix_block>, <appliedenergistics2:fluix_block>, <appliedenergistics2:fluix_block>, <appliedenergistics2:fluix_block>, <appliedenergistics2:fluix_block>, <appliedenergistics2:fluix_block>, <mysticalagradditions:stuff:69>],
  [<mysticalagradditions:stuff:69>, <appliedenergistics2:fluix_block>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:fluix_block>, <mysticalagradditions:stuff:69>],
  [<mysticalagradditions:stuff:69>, <appliedenergistics2:fluix_block>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:fluix_block>, <mysticalagradditions:stuff:69>],
  [<mysticalagradditions:stuff:69>, <appliedenergistics2:fluix_block>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>, <avaritia:resource:5>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:fluix_block>, <mysticalagradditions:stuff:69>],
  [<mysticalagradditions:stuff:69>, <appliedenergistics2:fluix_block>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:fluix_block>, <mysticalagradditions:stuff:69>],
  [<mysticalagradditions:stuff:69>, <appliedenergistics2:fluix_block>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:fluix_block>, <mysticalagradditions:stuff:69>],
  [<mysticalagradditions:stuff:69>, <appliedenergistics2:fluix_block>, <appliedenergistics2:fluix_block>, <appliedenergistics2:fluix_block>, <appliedenergistics2:fluix_block>, <appliedenergistics2:fluix_block>, <appliedenergistics2:fluix_block>, <appliedenergistics2:fluix_block>, <mysticalagradditions:stuff:69>],
  [<avaritia:resource:6>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <avaritia:resource:6>]
]);

//Creative Portable Tank
mods.avaritia.ExtremeCrafting.addShaped("ct_creative_portable_tank", <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Creative: 1 as byte, Level: 4 as byte}), [
  [null, null, <avaritia:resource:6>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <avaritia:resource:6>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 4 as byte}), <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 4 as byte}), <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 4 as byte}), <mysticalagradditions:stuff:69>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 4 as byte}), <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 4 as byte}), <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 4 as byte}), <mysticalagradditions:stuff:69>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 4 as byte}), <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 4 as byte}), <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 4 as byte}), <mysticalagradditions:stuff:69>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 4 as byte}), <avaritia:resource:5>, <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 4 as byte}), <mysticalagradditions:stuff:69>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 4 as byte}), <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 4 as byte}), <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 4 as byte}), <mysticalagradditions:stuff:69>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 4 as byte}), <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 4 as byte}), <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 4 as byte}), <mysticalagradditions:stuff:69>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 4 as byte}), <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 4 as byte}), <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 4 as byte}), <mysticalagradditions:stuff:69>, null, null],
  [null, null, <avaritia:resource:6>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <avaritia:resource:6>, null, null]
]);

//Creative Watering Can
mods.avaritia.ExtremeCrafting.addShaped("ct_creative_watering_can", <thermalcultivation:watering_can:32000>.withTag({Water: 60000, Mode: 4}), [
  [null, null, null, null, null, null, null, null, null],
  [<mysticalagradditions:stuff:69>, null, null, null, null, null, null, null, null],
  [<mysticalagradditions:stuff:69>, null, null, null, null, null, null, null, null],
  [null, <mysticalagradditions:stuff:69>, <avaritia:resource:6>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <avaritia:resource:6>, null, null],
  [null, null, <mysticalagradditions:stuff:69>, <actuallyadditions:item_growth_ring>, <thermalcultivation:watering_can:4>, <actuallyadditions:item_growth_ring>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, null],
  [null, null, <mysticalagradditions:stuff:69>, <tp:watering_can_upgrade>, <avaritia:resource:5>, <mysticalagriculture:watering_can:4>, <mysticalagradditions:stuff:69>, null, <mysticalagradditions:stuff:69>],
  [null, null, <mysticalagradditions:stuff:69>, <actuallyadditions:item_growth_ring>, <thermalexpansion:reservoir:32000>, <actuallyadditions:item_growth_ring>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, null],
  [null, null, <avaritia:resource:6>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <mysticalagradditions:stuff:69>, <avaritia:resource:6>, null, null],
  [null, null, null, null, null, null, null, null, null]
]);

print("Extreme crafting loaded.");
