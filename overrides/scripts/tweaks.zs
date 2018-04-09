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
<ore:stickStone>.add(<tconstruct:stone_stick>);
<ore:oreEnder>.add(<tp:ender_ore>);
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
<ore:blockWoodenCrucible>.add(<excompressum:wooden_crucible:*>);
<ore:blockHeavySieve>.add(<excompressum:heavy_sieve:*>);

//Change stack size for some items
<exnihilocreatio:item_mesh:1>.maxStackSize = 64;
<exnihilocreatio:item_mesh:2>.maxStackSize = 64;
<exnihilocreatio:item_mesh:3>.maxStackSize = 64;
<exnihilocreatio:item_mesh:4>.maxStackSize = 64;
<minecraft:cake>.maxStackSize = 64;
<avaritia:endest_pearl>.maxStackSize = 64;

print("Tweaks loaded.");
