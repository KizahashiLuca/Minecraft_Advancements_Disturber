#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Load add-on
execute if score #mad LoadAddon matches 1.. run scoreboard players remove #mad LoadAddon 1

## Detect dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{tag:{Tags:["MADsetting"]}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mad:system/setting/choose_setting/drop

## Detect inventory
scoreboard players set @p[tag=Host] Select12 1
scoreboard players set @p[tag=Host] Select13 1
scoreboard players set @p[tag=Host] Select14 1
scoreboard players set @p[tag=Host] Select21 1
scoreboard players set @p[tag=Host] Select22 1
scoreboard players set @p[tag=Host] Select23 1
scoreboard players set @p[tag=Host] Select17 1
scoreboard players operation @p[tag=Host] Select26 = #mad IsTeam
scoreboard players set @p[tag=Host] Select28 1
scoreboard players set @p[tag=Host] Select34 1

execute if score #mad IsTeam matches 0 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:17b,id:"minecraft:carved_pumpkin",tag:{Tags:["MADsetting","is_individual"]}}]}] Select17 0
execute if score #mad IsTeam matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:17b,id:"minecraft:jack_o_lantern",tag:{Tags:["MADsetting","is_team"]}}]}] Select17 0

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:12b,id:"minecraft:clock",tag:{Tags:["MADsetting","choose_initial_time"]}}]}] Select12 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:emerald",tag:{Tags:["MADsetting","choose_adding_time"]}}]}] Select13 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:14b,id:"minecraft:chest_minecart",tag:{Tags:["MADsetting","choose_minecart_interval"]}}]}] Select14 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:writable_book",tag:{Tags:["MADsetting","choose_gamerule"]}}]}] Select21 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:iron_sword",tag:{Tags:["MADsetting","choose_difficulty"]}}]}] Select22 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:map",tag:{Tags:["MADsetting","choose_world_border"]}}]}] Select23 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:26b,id:"minecraft:phantom_membrane",tag:{Tags:["MADsetting","choose_team_setting"]}}]}] Select26 0

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{Tags:["MADsetting","cancel_game"]}}]}] Select28 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{Tags:["MADsetting","start_game"]}}]}] Select34 0

## Change to each phase
execute as @p[tag=Host,scores={Select12=1}] run function mad:system/setting/choose_initial_time/change_to
execute as @p[tag=Host,scores={Select13=1}] run function mad:system/setting/choose_adding_time/change_to
execute as @p[tag=Host,scores={Select14=1}] run function mad:system/setting/choose_minecart_interval/change_to
execute as @p[tag=Host,scores={Select21=1}] run function mad:system/setting/choose_gamerule/change_to
execute as @p[tag=Host,scores={Select22=1}] run function mad:system/setting/choose_difficulty/change_to
execute as @p[tag=Host,scores={Select23=1}] run function mad:system/setting/choose_world_border/change_to
execute as @p[tag=Host,scores={Select17=1}] run function mad:system/setting/choose_setting/change_competition
execute as @p[tag=Host,scores={Select26=1}] run function mad:system/setting/choose_team_setting/change_to
execute as @p[tag=Host,scores={Select28=1}] run function mad:system/setting/choose_setting/game_cancel
execute as @p[tag=Host,scores={Select34=1}] if score #mad IsTeam matches 0 run function mad:system/pre_preparation/change_to
execute as @p[tag=Host,scores={Select34=1}] if score #mad IsTeam matches 1 run function mad:system/setting/choose_setting/change_to_team_member