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
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mad:system/setting/team_member_setting/drop

## Detect inventory
scoreboard players set @p[predicate=mad:player/host] Selected 1
execute if score #mad NumberOfTeams matches 1.. run scoreboard players set @p[predicate=mad:player/host] Select02 1
execute if score #mad NumberOfTeams matches 2.. run scoreboard players set @p[predicate=mad:player/host] Select03 1
execute if score #mad NumberOfTeams matches 3.. run scoreboard players set @p[predicate=mad:player/host] Select04 1
execute if score #mad NumberOfTeams matches 4.. run scoreboard players set @p[predicate=mad:player/host] Select05 1
execute if score #mad NumberOfTeams matches 5.. run scoreboard players set @p[predicate=mad:player/host] Select06 1
execute if score #mad NumberOfTeams matches 1.. run scoreboard players set @p[predicate=mad:player/host] Select20 1
execute if score #mad NumberOfTeams matches 2.. run scoreboard players set @p[predicate=mad:player/host] Select21 1
execute if score #mad NumberOfTeams matches 3.. run scoreboard players set @p[predicate=mad:player/host] Select22 1
execute if score #mad NumberOfTeams matches 4.. run scoreboard players set @p[predicate=mad:player/host] Select23 1
execute if score #mad NumberOfTeams matches 5.. run scoreboard players set @p[predicate=mad:player/host] Select24 1
scoreboard players set @p[predicate=mad:player/host] Select28 1
scoreboard players set @p[predicate=mad:player/host] Select31 1
execute if score #mad TeamMemberNotExist matches 0 run scoreboard players set @p[predicate=mad:player/host] Select34 1

scoreboard players set @p[predicate=mad:player/host,nbt={Inventory:[{Slot:2b,id:"minecraft:pink_dye",tag:{Tags:["MADsetting","team_a","host_inventory"]}}]}] Select02 0
scoreboard players set @p[predicate=mad:player/host,nbt={Inventory:[{Slot:3b,id:"minecraft:light_blue_dye",tag:{Tags:["MADsetting","team_b","host_inventory"]}}]}] Select03 0
scoreboard players set @p[predicate=mad:player/host,nbt={Inventory:[{Slot:4b,id:"minecraft:yellow_dye",tag:{Tags:["MADsetting","team_c","host_inventory"]}}]}] Select04 0
scoreboard players set @p[predicate=mad:player/host,nbt={Inventory:[{Slot:5b,id:"minecraft:lime_dye",tag:{Tags:["MADsetting","team_d","host_inventory"]}}]}] Select05 0
scoreboard players set @p[predicate=mad:player/host,nbt={Inventory:[{Slot:6b,id:"minecraft:purple_dye",tag:{Tags:["MADsetting","team_e","host_inventory"]}}]}] Select06 0
scoreboard players set @p[predicate=mad:player/host,nbt={Inventory:[{Slot:20b,id:"minecraft:pink_dye",tag:{Tags:["MADsetting","team_a","host_inventory"]}}]}] Select20 0
scoreboard players set @p[predicate=mad:player/host,nbt={Inventory:[{Slot:21b,id:"minecraft:light_blue_dye",tag:{Tags:["MADsetting","team_b","host_inventory"]}}]}] Select21 0
scoreboard players set @p[predicate=mad:player/host,nbt={Inventory:[{Slot:22b,id:"minecraft:yellow_dye",tag:{Tags:["MADsetting","team_c","host_inventory"]}}]}] Select22 0
scoreboard players set @p[predicate=mad:player/host,nbt={Inventory:[{Slot:23b,id:"minecraft:lime_dye",tag:{Tags:["MADsetting","team_d","host_inventory"]}}]}] Select23 0
scoreboard players set @p[predicate=mad:player/host,nbt={Inventory:[{Slot:24b,id:"minecraft:purple_dye",tag:{Tags:["MADsetting","team_e","host_inventory"]}}]}] Select24 0

scoreboard players set @p[predicate=mad:player/host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{Tags:["MADsetting","cancel"]}}]}] Select28 0
scoreboard players set @p[predicate=mad:player/host,nbt={Inventory:[{Slot:31b,id:"minecraft:map",tag:{Tags:["MADsetting","reset"]}}]}] Select31 0
scoreboard players set @p[predicate=mad:player/host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{Tags:["MADsetting","determine"]}}]}] Select34 0

scoreboard players set @p[predicate=mad:player/host,nbt={Inventory:[{Slot:11b,id:"minecraft:nether_star",tag:{Tags:["MADsetting","team_a"]}}]}] Selected 0
scoreboard players set @p[predicate=mad:player/host,nbt={Inventory:[{Slot:12b,id:"minecraft:nether_star",tag:{Tags:["MADsetting","team_b"]}}]}] Selected 0
scoreboard players set @p[predicate=mad:player/host,nbt={Inventory:[{Slot:13b,id:"minecraft:nether_star",tag:{Tags:["MADsetting","team_c"]}}]}] Selected 0
scoreboard players set @p[predicate=mad:player/host,nbt={Inventory:[{Slot:14b,id:"minecraft:nether_star",tag:{Tags:["MADsetting","team_d"]}}]}] Selected 0
scoreboard players set @p[predicate=mad:player/host,nbt={Inventory:[{Slot:15b,id:"minecraft:nether_star",tag:{Tags:["MADsetting","team_e"]}}]}] Selected 0

## Change to each phase
execute as @p[predicate=mad:player/host,scores={Selected=1}] run function mad:system/setting/team_member_setting/change_to
execute as @p[predicate=mad:player/host,scores={Select02=1}] run function mad:system/setting/team_member_setting/change_to
execute as @p[predicate=mad:player/host,scores={Select03=1}] run function mad:system/setting/team_member_setting/change_to
execute as @p[predicate=mad:player/host,scores={Select04=1}] run function mad:system/setting/team_member_setting/change_to
execute as @p[predicate=mad:player/host,scores={Select05=1}] run function mad:system/setting/team_member_setting/change_to
execute as @p[predicate=mad:player/host,scores={Select06=1}] run function mad:system/setting/team_member_setting/change_to
execute as @p[predicate=mad:player/host,scores={Select20=1}] run function mad:system/setting/team_member_setting/set_team_with_hit/team_a
execute as @p[predicate=mad:player/host,scores={Select21=1}] run function mad:system/setting/team_member_setting/set_team_with_hit/team_b
execute as @p[predicate=mad:player/host,scores={Select22=1}] run function mad:system/setting/team_member_setting/set_team_with_hit/team_c
execute as @p[predicate=mad:player/host,scores={Select23=1}] run function mad:system/setting/team_member_setting/set_team_with_hit/team_d
execute as @p[predicate=mad:player/host,scores={Select24=1}] run function mad:system/setting/team_member_setting/set_team_with_hit/team_e
execute as @p[predicate=mad:player/host,scores={Select28=1}] run function mad:system/setting/team_member_setting/game_cancel
execute as @p[predicate=mad:player/host,scores={Select31=1}] run function mad:system/setting/team_member_setting/select_reset
execute as @p[predicate=mad:player/host,scores={Select34=1}] run function mad:system/setting/team_member_setting/random_member_set