#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Detect dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{tag:{Tags:["MADsetting"]}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mad:system/setting/choose_setting/drop

## Detect inventory
scoreboard players set @p[tag=Host] Select13 1
scoreboard players set @p[tag=Host] Select20 1
scoreboard players set @p[tag=Host] Select21 1
scoreboard players set @p[tag=Host] Select22 1
scoreboard players set @p[tag=Host] Select23 1
scoreboard players set @p[tag=Host] Select24 1
execute if score #mad IsTeam matches 1 run scoreboard players set @p[tag=Host] Select26 1
scoreboard players set @p[tag=Host] Select28 1
scoreboard players set @p[tag=Host] Select34 1

execute if score #mad IsTeam matches 0 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:carved_pumpkin",tag:{Tags:["MADsetting","is_individual"]}}]}] Select13 0
execute if score #mad IsTeam matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:jack_o_lantern",tag:{Tags:["MADsetting","is_team"]}}]}] Select13 0

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:clock",tag:{Tags:["MADsetting","choose_initial_time"]}}]}] Select20 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:emerald",tag:{Tags:["MADsetting","choose_adding_time"]}}]}] Select21 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:writable_book",tag:{Tags:["MADsetting","choose_gamerule"]}}]}] Select22 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:iron_sword",tag:{Tags:["MADsetting","choose_difficulty"]}}]}] Select23 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:map",tag:{Tags:["MADsetting","choose_world_border"]}}]}] Select24 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:26b,id:"minecraft:phantom_membrane",tag:{Tags:["MADsetting","choose_team_setting"]}}]}] Select26 0

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{Tags:["MADsetting","cancel_game"]}}]}] Select28 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{Tags:["MADsetting","start_game"]}}]}] Select34 0

## Change to each phase
execute as @p[tag=Host,scores={Select13=1}] run function mad:system/setting/choose_setting/change_competition
execute as @p[tag=Host,scores={Select20=1}] run function mad:system/setting/choose_initial_time/change_to
execute as @p[tag=Host,scores={Select21=1}] run function mad:system/setting/choose_adding_time/change_to
execute as @p[tag=Host,scores={Select22=1}] run function mad:system/setting/choose_gamerule/change_to
execute as @p[tag=Host,scores={Select23=1}] run function mad:system/setting/choose_difficulty/change_to
execute as @p[tag=Host,scores={Select24=1}] run function mad:system/setting/choose_world_border/change_to
execute as @p[tag=Host,scores={Select26=1}] run function mad:system/setting/choose_team_setting/change_to
execute as @p[tag=Host,scores={Select28=1}] run clear @a
execute as @p[tag=Host,scores={Select28=1}] run function mad:stop
execute as @p[tag=Host,scores={Select34=1}] if score #mad IsTeam matches 0 if score #mad SetTeamManual matches 0 run function mad:system/pre_preparation_individual/change_to
execute as @p[tag=Host,scores={Select34=1}] if score #mad IsTeam matches 1 if score #mad SetTeamManual matches 0 run function mad:system/team_member_setting/random_member_set
execute as @p[tag=Host,scores={Select34=1}] if score #mad IsTeam matches 1 if score #mad SetTeamManual matches 1 run function mad:system/team_member_setting/change_to