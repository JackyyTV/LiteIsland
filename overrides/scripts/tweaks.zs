import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

/*
=====TEMPLATES=====
<ore:null>.add(null);
<ore:null>.mirror(<ore:null>);
*/

print("Loading tweaks...");

//Adds stuff to OreDict
<ore:oreIron>.add(<exnihilocreatio:item_ore_iron:1>);
<ore:dustIron>.add(<exnihilocreatio:item_ore_iron:2>);
<ore:oreGold>.add(<exnihilocreatio:item_ore_gold:1>);
<ore:dustGold>.add(<exnihilocreatio:item_ore_gold:2>);
<ore:oreCopper>.add(<exnihilocreatio:item_ore_copper:1>);
<ore:dustCopper>.add(<exnihilocreatio:item_ore_copper:2>);
<ore:oreTin>.add(<exnihilocreatio:item_ore_tin:1>);
<ore:dustTin>.add(<exnihilocreatio:item_ore_tin:2>);
<ore:oreSilver>.add(<exnihilocreatio:item_ore_silver:1>);
<ore:dustSilver>.add(<exnihilocreatio:item_ore_silver:2>);
<ore:oreLead>.add(<exnihilocreatio:item_ore_lead:1>);
<ore:dustLead>.add(<exnihilocreatio:item_ore_lead:2>);
<ore:oreNickel>.add(<exnihilocreatio:item_ore_nickel:1>);
<ore:dustNickel>.add(<exnihilocreatio:item_ore_nickel:2>);
<ore:oreAluminium>.add(<exnihilocreatio:item_ore_aluminium:1>);
<ore:oreAluminum>.add(<exnihilocreatio:item_ore_aluminium:1>);
<ore:dustAluminium>.add(<exnihilocreatio:item_ore_aluminium:2>);
<ore:dustAluminum>.add(<exnihilocreatio:item_ore_aluminium:2>);
<ore:oreCobalt>.add(<exnihilocreatio:item_ore_cobalt:1>);
<ore:dustCobalt>.add(<exnihilocreatio:item_ore_cobalt:2>);
<ore:oreArdite>.add(<exnihilocreatio:item_ore_ardite:1>);
<ore:dustArdite>.add(<exnihilocreatio:item_ore_ardite:2>);
<ore:endstone>.add(<tp:smooth_endstone>);
<ore:stoneGranite>.add(<tp:granite_brick>);
<ore:stoneDiorite>.add(<tp:diorite_brick>);
<ore:stoneAndesite>.add(<tp:andesite_brick>);
<ore:stickStone>.add(<tconstruct:stone_stick>);
<ore:oreEnder>.add(<tp:ender_ore>);
<ore:oreLava>.add(<tp:lava_ore>);
<ore:oreSticky>.add(<aroma1997sdimension:stickyore>);
<ore:oreDraconium>.add(<draconicevolution:draconium_ore:1>);
<ore:oreNetherDraconium>.add(<draconicevolution:draconium_ore:1>);
<ore:oreDraconium>.add(<draconicevolution:draconium_ore:2>);
<ore:oreEndDraconium>.add(<draconicevolution:draconium_ore:2>);
<ore:oreDimensionalShard>.add(<rftools:dimensional_shard_ore:0>);
<ore:oreDimensionalShard>.add(<rftools:dimensional_shard_ore:1>);
<ore:oreNetherDimensionalShard>.add(<rftools:dimensional_shard_ore:1>);
<ore:oreDimensionalShard>.add(<rftools:dimensional_shard_ore:2>);
<ore:oreEndDimensionalShard>.add(<rftools:dimensional_shard_ore:2>);
<ore:oreNetherCoal>.add(<cyclicmagic:nether_coal_ore>);
<ore:oreNetherIron>.add(<cyclicmagic:nether_iron_ore>);
<ore:oreNetherGold>.add(<cyclicmagic:nether_gold_ore>);
<ore:oreNetherDiamond>.add(<cyclicmagic:nether_diamond_ore>);
<ore:oreNetherEmerald>.add(<cyclicmagic:nether_emerald_ore>);
<ore:oreNetherLapis>.add(<cyclicmagic:nether_lapis_ore>);
<ore:oreNetherRedstone>.add(<cyclicmagic:nether_redstone_ore>);
<ore:oreEndCoal>.add(<cyclicmagic:end_coal_ore>);
<ore:oreEndIron>.add(<cyclicmagic:end_iron_ore>);
<ore:oreEndGold>.add(<cyclicmagic:end_gold_ore>);
<ore:oreEndDiamond>.add(<cyclicmagic:end_diamond_ore>);
<ore:oreEndEmerald>.add(<cyclicmagic:end_emerald_ore>);
<ore:oreEndLapis>.add(<cyclicmagic:end_lapis_ore>);
<ore:oreEndRedstone>.add(<cyclicmagic:end_redstone_ore>);

//Change stack size for some items
<exnihilocreatio:item_mesh:1>.maxStackSize = 64;
<exnihilocreatio:item_mesh:2>.maxStackSize = 64;
<exnihilocreatio:item_mesh:3>.maxStackSize = 64;
<exnihilocreatio:item_mesh:4>.maxStackSize = 64;

print("Tweaks loaded.");
