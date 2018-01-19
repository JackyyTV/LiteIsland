print("Loading initial inventory...");

mods.initialinventory.InvHandler.addStartingItem(<minecraft:sapling> * 8);
mods.initialinventory.InvHandler.addStartingItem(<harvestcraft:sushiitem> * 32);
mods.initialinventory.InvHandler.addStartingItem(<minecraft:torch> * 32);
mods.initialinventory.InvHandler.addStartingItem(<enchiridion:book>.withTag({identifier: "lite_island_guide_book"}));

print("Initial inventory loaded.");
