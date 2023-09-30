#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Randomize
scoreboard players set #mad RandomMax 5
scoreboard players operation #mad RandomSeed *= #mad RandomMultiplier
scoreboard players operation #mad RandomSeed %= #mad RandomModder
scoreboard players operation #mad RandomAnswer = #mad RandomSeed
scoreboard players operation #mad RandomAnswer %= #mad RandomMax

## Set wall block
execute if predicate mad:system/item/maze_maker/fill_block/sand run function mad:system/item/maze_maker/fill_block/sand
execute if predicate mad:system/item/maze_maker/fill_block/glass run function mad:system/item/maze_maker/fill_block/glass
execute if predicate mad:system/item/maze_maker/fill_block/oak_stairs run function mad:system/item/maze_maker/fill_block/oak_stairs
execute if predicate mad:system/item/maze_maker/fill_block/stone_brick_stairs run function mad:system/item/maze_maker/fill_block/stone_brick_stairs
execute if predicate mad:system/item/maze_maker/fill_block/cobbled_deepslate_stairs run function mad:system/item/maze_maker/fill_block/cobbled_deepslate_stairs