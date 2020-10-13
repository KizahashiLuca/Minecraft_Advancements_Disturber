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
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mad:system/setting/choose_team_setting/drop

## Detect inventory
scoreboard players set @p[tag=Host] Select09 1
scoreboard players set @p[tag=Host] Select10 1
scoreboard players set @p[tag=Host] Select11 1
scoreboard players set @p[tag=Host] Select12 1
scoreboard players set @p[tag=Host] Select13 1
scoreboard players set @p[tag=Host] Select15 1
scoreboard players set @p[tag=Host] Select17 1
scoreboard players set @p[tag=Host] Select18 1
scoreboard players set @p[tag=Host] Select19 1
scoreboard players set @p[tag=Host] Select20 1
scoreboard players set @p[tag=Host] Select21 1
scoreboard players set @p[tag=Host] Select22 1
scoreboard players set @p[tag=Host] Select24 1
scoreboard players set @p[tag=Host] Select26 1
scoreboard players set @p[tag=Host] Select28 1
scoreboard players set @p[tag=Host] Select31 1
scoreboard players set @p[tag=Host] Select34 1

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:18b,id:"minecraft:wooden_sword",tag:{Tags:["MADsetting","friendly_fire"]}}]}] Select18 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:19b,id:"minecraft:stone_sword",tag:{Tags:["MADsetting","collision_rule"]}}]}] Select19 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:golden_sword",tag:{Tags:["MADsetting","nametag_visibility"]}}]}] Select20 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:iron_sword",tag:{Tags:["MADsetting","see_friendly_invisibles"]}}]}] Select21 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:diamond_sword",tag:{Tags:["MADsetting","death_message_visibility"]}}]}] Select22 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:jack_o_lantern",tag:{Tags:["MADsetting","set_team_member_manual"]}}]}] Select24 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:26b,id:"minecraft:armor_stand",tag:{Tags:["MADsetting","set_team_number"]}}]}] Select26 0

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{Tags:["MADsetting","cancel"]}}]}] Select28 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:31b,id:"minecraft:map",tag:{Tags:["MADsetting","reset"]}}]}] Select31 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{Tags:["MADsetting","determine"]}}]}] Select34 0

execute if score #mad friendlyFire matches 0 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:9b,id:"minecraft:redstone_lamp",tag:{Tags:["MADsetting","off"]}}]}] Select09 0
execute if score #mad friendlyFire matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:9b,id:"minecraft:glowstone",tag:{Tags:["MADsetting","on"]}}]}] Select09 0

execute if score #mad collisionRule matches 0 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:10b,id:"minecraft:redstone_lamp",tag:{Tags:["MADsetting","off"]}}]}] Select10 0
execute if score #mad collisionRule matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:10b,id:"minecraft:glowstone",tag:{Tags:["MADsetting","on"]}}]}] Select10 0

execute if score #mad VisibleName matches 0 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:11b,id:"minecraft:redstone_lamp",tag:{Tags:["MADsetting","off"]}}]}] Select11 0
execute if score #mad VisibleName matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:11b,id:"minecraft:glowstone",tag:{Tags:["MADsetting","on"]}}]}] Select11 0

execute if score #mad VisibleInvis matches 0 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:12b,id:"minecraft:redstone_lamp",tag:{Tags:["MADsetting","off"]}}]}] Select12 0
execute if score #mad VisibleInvis matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:12b,id:"minecraft:glowstone",tag:{Tags:["MADsetting","on"]}}]}] Select12 0

execute if score #mad VisibleDeath matches 0 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:redstone_lamp",tag:{Tags:["MADsetting","off"]}}]}] Select13 0
execute if score #mad VisibleDeath matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:glowstone",tag:{Tags:["MADsetting","on"]}}]}] Select13 0

execute if score #mad SetTeamManual matches 0 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:15b,id:"minecraft:redstone_lamp",tag:{Tags:["MADsetting","off"]}}]}] Select15 0
execute if score #mad SetTeamManual matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:15b,id:"minecraft:glowstone",tag:{Tags:["MADsetting","on"]}}]}] Select15 0

execute if score #mad TeamNumber matches 2 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:17b,Count:2b,id:"minecraft:nether_star",tag:{Tags:["MADsetting","2_team"]}}]}] Select17 0
execute if score #mad TeamNumber matches 3 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:17b,Count:3b,id:"minecraft:nether_star",tag:{Tags:["MADsetting","3_team"]}}]}] Select17 0
execute if score #mad TeamNumber matches 4 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:17b,Count:4b,id:"minecraft:nether_star",tag:{Tags:["MADsetting","4_team"]}}]}] Select17 0
execute if score #mad TeamNumber matches 5 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:17b,Count:5b,id:"minecraft:nether_star",tag:{Tags:["MADsetting","5_team"]}}]}] Select17 0

## Change to each phase
execute as @p[tag=Host,scores={Select09=1}] run function mad:system/setting/choose_team_setting/change_to
execute as @p[tag=Host,scores={Select10=1}] run function mad:system/setting/choose_team_setting/change_to
execute as @p[tag=Host,scores={Select11=1}] run function mad:system/setting/choose_team_setting/change_to
execute as @p[tag=Host,scores={Select12=1}] run function mad:system/setting/choose_team_setting/change_to
execute as @p[tag=Host,scores={Select13=1}] run function mad:system/setting/choose_team_setting/change_to
execute as @p[tag=Host,scores={Select17=1}] run function mad:system/setting/choose_team_setting/change_to
execute as @p[tag=Host,scores={Select18=1}] run function mad:system/setting/choose_team_setting/select_friendly_fire
execute as @p[tag=Host,scores={Select19=1}] run function mad:system/setting/choose_team_setting/select_collision_rule
execute as @p[tag=Host,scores={Select20=1}] run function mad:system/setting/choose_team_setting/select_visible_nametag
execute as @p[tag=Host,scores={Select21=1}] run function mad:system/setting/choose_team_setting/select_visible_invisible
execute as @p[tag=Host,scores={Select22=1}] run function mad:system/setting/choose_team_setting/select_visible_death_message
execute as @p[tag=Host,scores={Select24=1}] run function mad:system/setting/choose_team_setting/select_set_team_manual
execute as @p[tag=Host,scores={Select26=1}] run function mad:system/setting/choose_team_setting/select_team_number
execute as @p[tag=Host,scores={Select28=1}] run function mad:system/setting/choose_team_setting/select_cancel
execute as @p[tag=Host,scores={Select31=1}] run function mad:system/setting/choose_team_setting/select_reset
execute as @p[tag=Host,scores={Select34=1}] run function mad:system/setting/choose_team_setting/select_ok