#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{tag:{Tags:["MADsetting"]}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mad:system/setting/choose_difficulty/drop

## Detect inventory
scoreboard players set @p[tag=Host] Select21 1
scoreboard players set @p[tag=Host] Select22 1
scoreboard players set @p[tag=Host] Select23 1
scoreboard players set @p[tag=Host] Select28 1
scoreboard players set @p[tag=Host] Select34 1
scoreboard players set @p[tag=Host] Selected 1

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:wooden_sword",tag:{Tags:["MADsetting","easy"]}}]}] Select21 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:stone_sword",tag:{Tags:["MADsetting","normal"]}}]}] Select22 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:diamond_sword",tag:{Tags:["MADsetting","hard"]}}]}] Select23 0

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{Tags:["MADsetting","cancel"]}}]}] Select28 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{Tags:["MADsetting","determine"]}}]}] Select34 0

execute if score #mad Difficulty matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:12b,id:"minecraft:nether_star",tag:{Tags:["MADsetting","selected"]}}]}] Selected 0
execute if score #mad Difficulty matches 2 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:nether_star",tag:{Tags:["MADsetting","selected"]}}]}] Selected 0
execute if score #mad Difficulty matches 3 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:14b,id:"minecraft:nether_star",tag:{Tags:["MADsetting","selected"]}}]}] Selected 0

## Change to each phase
execute as @p[tag=Host,scores={Select21=1}] run function mad:system/setting/choose_difficulty/select_easy
execute as @p[tag=Host,scores={Select22=1}] run function mad:system/setting/choose_difficulty/select_normal
execute as @p[tag=Host,scores={Select23=1}] run function mad:system/setting/choose_difficulty/select_hard
execute as @p[tag=Host,scores={Select28=1}] run function mad:system/setting/choose_difficulty/select_cancel
execute as @p[tag=Host,scores={Select34=1}] run function mad:system/setting/choose_difficulty/select_ok
execute as @p[tag=Host,scores={Selected=1}] run function mad:system/setting/choose_difficulty/change_to