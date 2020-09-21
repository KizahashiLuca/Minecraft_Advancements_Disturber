#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Detect dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:pink_dye",tag:{display:{Name:'"\\u00A7r\\u00A7c赤チーム"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:light_blue_dye",tag:{display:{Name:'"\\u00A7r\\u00A79青チーム"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:yellow_dye",tag:{display:{Name:'"\\u00A7r\\u00A7e黄チーム"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:lime_dye",tag:{display:{Name:'"\\u00A7r\\u00A7a緑チーム"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:purple_dye",tag:{display:{Name:'"\\u00A7r\\u00A75紫チーム"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier",tag:{display:{Name:'"\\u00A7r\\u00A7dキャンセル"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:map",tag:{display:{Name:'"\\u00A7r\\u00A7eリセット"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:structure_void",tag:{display:{Name:'"\\u00A7r\\u00A7b決定"'},HideFlags:39}}}] ThrowItem 1

scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7fあなたのチームは\\u00A7c赤チーム"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7fあなたのチームは\\u00A79青チーム"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7fあなたのチームは\\u00A7e黄チーム"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7fあなたのチームは\\u00A7a緑チーム"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7fあなたのチームは\\u00A75紫チーム"'},HideFlags:39}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mad:system/team_member_setting/drop

## Detect inventory
scoreboard players set @p[tag=Host] Selected 1
execute if score #mad TeamNumber matches 1.. run scoreboard players set @p[tag=Host] Select02 1
execute if score #mad TeamNumber matches 2.. run scoreboard players set @p[tag=Host] Select03 1
execute if score #mad TeamNumber matches 3.. run scoreboard players set @p[tag=Host] Select04 1
execute if score #mad TeamNumber matches 4.. run scoreboard players set @p[tag=Host] Select05 1
execute if score #mad TeamNumber matches 5.. run scoreboard players set @p[tag=Host] Select06 1
execute if score #mad TeamNumber matches 1.. run scoreboard players set @p[tag=Host] Select20 1
execute if score #mad TeamNumber matches 2.. run scoreboard players set @p[tag=Host] Select21 1
execute if score #mad TeamNumber matches 3.. run scoreboard players set @p[tag=Host] Select22 1
execute if score #mad TeamNumber matches 4.. run scoreboard players set @p[tag=Host] Select23 1
execute if score #mad TeamNumber matches 5.. run scoreboard players set @p[tag=Host] Select24 1
scoreboard players set @p[tag=Host] Select28 1
scoreboard players set @p[tag=Host] Select31 1
execute if score #mad TeamBoolean matches 0 run scoreboard players set @p[tag=Host] Select34 1

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:2b,id:"minecraft:pink_dye",tag:{display:{Name:'"\\u00A7r\\u00A7c赤チーム"'},HideFlags:39}}]}] Select02 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:3b,id:"minecraft:light_blue_dye",tag:{display:{Name:'"\\u00A7r\\u00A79青チーム"'},HideFlags:39}}]}] Select03 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:4b,id:"minecraft:yellow_dye",tag:{display:{Name:'"\\u00A7r\\u00A7e黄チーム"'},HideFlags:39}}]}] Select04 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:5b,id:"minecraft:lime_dye",tag:{display:{Name:'"\\u00A7r\\u00A7a緑チーム"'},HideFlags:39}}]}] Select05 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:6b,id:"minecraft:purple_dye",tag:{display:{Name:'"\\u00A7r\\u00A75紫チーム"'},HideFlags:39}}]}] Select06 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:pink_dye",tag:{display:{Name:'"\\u00A7r\\u00A7c赤チーム"'},HideFlags:39}}]}] Select20 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:light_blue_dye",tag:{display:{Name:'"\\u00A7r\\u00A79青チーム"'},HideFlags:39}}]}] Select21 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:yellow_dye",tag:{display:{Name:'"\\u00A7r\\u00A7e黄チーム"'},HideFlags:39}}]}] Select22 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:lime_dye",tag:{display:{Name:'"\\u00A7r\\u00A7a緑チーム"'},HideFlags:39}}]}] Select23 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:purple_dye",tag:{display:{Name:'"\\u00A7r\\u00A75紫チーム"'},HideFlags:39}}]}] Select24 0

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{display:{Name:'"\\u00A7r\\u00A7dキャンセル"'},HideFlags:39}}]}] Select28 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:31b,id:"minecraft:map",tag:{display:{Name:'"\\u00A7r\\u00A7eリセット"'},HideFlags:39}}]}] Select31 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{display:{Name:'"\\u00A7r\\u00A7b決定"'},HideFlags:39}}]}] Select34 0

scoreboard players set @p[tag=Host,team=TeamA,nbt={Inventory:[{Slot:11b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7fあなたのチームは\\u00A7c赤チーム"'},HideFlags:39}}]}] Selected 0
scoreboard players set @p[tag=Host,team=TeamB,nbt={Inventory:[{Slot:12b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7fあなたのチームは\\u00A79青チーム"'},HideFlags:39}}]}] Selected 0
scoreboard players set @p[tag=Host,team=TeamC,nbt={Inventory:[{Slot:13b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7fあなたのチームは\\u00A7e黄チーム"'},HideFlags:39}}]}] Selected 0
scoreboard players set @p[tag=Host,team=TeamD,nbt={Inventory:[{Slot:14b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7fあなたのチームは\\u00A7a緑チーム"'},HideFlags:39}}]}] Selected 0
scoreboard players set @p[tag=Host,team=TeamE,nbt={Inventory:[{Slot:15b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7fあなたのチームは\\u00A75紫チーム"'},HideFlags:39}}]}] Selected 0

## Change to each phase
execute as @p[tag=Host,scores={Selected=1}] run function mad:system/team_member_setting/change_to
execute as @p[tag=Host,scores={Select02=1}] run function mad:system/team_member_setting/change_to
execute as @p[tag=Host,scores={Select03=1}] run function mad:system/team_member_setting/change_to
execute as @p[tag=Host,scores={Select04=1}] run function mad:system/team_member_setting/change_to
execute as @p[tag=Host,scores={Select05=1}] run function mad:system/team_member_setting/change_to
execute as @p[tag=Host,scores={Select06=1}] run function mad:system/team_member_setting/change_to
execute as @p[tag=Host,scores={Select20=1}] run function mad:system/team_member_setting/set_own_team_a
execute as @p[tag=Host,scores={Select21=1}] run function mad:system/team_member_setting/set_own_team_b
execute as @p[tag=Host,scores={Select22=1}] run function mad:system/team_member_setting/set_own_team_c
execute as @p[tag=Host,scores={Select23=1}] run function mad:system/team_member_setting/set_own_team_d
execute as @p[tag=Host,scores={Select24=1}] run function mad:system/team_member_setting/set_own_team_e
execute as @p[tag=Host,scores={Select28=1}] run clear @a
execute as @p[tag=Host,scores={Select28=1}] run function mad:stop
execute as @p[tag=Host,scores={Select31=1}] run function mad:system/team_member_setting/select_reset
execute as @p[tag=Host,scores={Select34=1}] run function mad:system/team_member_setting/random_member_set

## Detect advancements
#execute as @a[advancements={mad:set_team/be_hit_by_team_a=true}] run function mad:system/team_member_setting/set_own_team_a
#execute as @a[advancements={mad:set_team/be_hit_by_team_b=true}] run function mad:system/team_member_setting/set_own_team_b
#execute as @a[advancements={mad:set_team/be_hit_by_team_c=true}] run function mad:system/team_member_setting/set_own_team_c
#execute as @a[advancements={mad:set_team/be_hit_by_team_d=true}] run function mad:system/team_member_setting/set_own_team_d
#execute as @a[advancements={mad:set_team/be_hit_by_team_e=true}] run function mad:system/team_member_setting/set_own_team_e
#advancement revoke @a everything