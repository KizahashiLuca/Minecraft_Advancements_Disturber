#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Detect dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:wooden_sword",tag:{display:{Name:'"\\u00A7r\\u00A7fフレンドリーファイア"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:stone_sword",tag:{display:{Name:'"\\u00A7r\\u00A7f当たり判定"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:golden_sword",tag:{display:{Name:'"\\u00A7r\\u00A7fネームタグ表示"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_sword",tag:{display:{Name:'"\\u00A7r\\u00A7f透明可視化"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_sword",tag:{display:{Name:'"\\u00A7r\\u00A7f死亡メッセージ"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier",tag:{display:{Name:'"\\u00A7r\\u00A7dキャンセル"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:map",tag:{display:{Name:'"\\u00A7r\\u00A7eリセット"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:structure_void",tag:{display:{Name:'"\\u00A7r\\u00A7b決定"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:redstone_lamp",tag:{display:{Name:'"\\u00A7r\\u00A7fOFF"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:glowstone",tag:{display:{Name:'"\\u00A7r\\u00A7fON"'},HideFlags:39}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mad:system/setting/choose_team_setting/drop

## Detect inventory
scoreboard players set @p[tag=Host] Select11 1
scoreboard players set @p[tag=Host] Select12 1
scoreboard players set @p[tag=Host] Select13 1
scoreboard players set @p[tag=Host] Select14 1
scoreboard players set @p[tag=Host] Select15 1
scoreboard players set @p[tag=Host] Select20 1
scoreboard players set @p[tag=Host] Select21 1
scoreboard players set @p[tag=Host] Select22 1
scoreboard players set @p[tag=Host] Select23 1
scoreboard players set @p[tag=Host] Select24 1
scoreboard players set @p[tag=Host] Select28 1
scoreboard players set @p[tag=Host] Select31 1
scoreboard players set @p[tag=Host] Select34 1

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:wooden_sword",tag:{display:{Name:'"\\u00A7r\\u00A7fフレンドリーファイア"'},HideFlags:39}}]}] Select20 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:stone_sword",tag:{display:{Name:'"\\u00A7r\\u00A7f当たり判定"'},HideFlags:39}}]}] Select21 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:golden_sword",tag:{display:{Name:'"\\u00A7r\\u00A7fネームタグ表示"'},HideFlags:39}}]}] Select22 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:iron_sword",tag:{display:{Name:'"\\u00A7r\\u00A7f透明可視化"'},HideFlags:39}}]}] Select23 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:diamond_sword",tag:{display:{Name:'"\\u00A7r\\u00A7f死亡メッセージ"'},HideFlags:39}}]}] Select24 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{display:{Name:'"\\u00A7r\\u00A7dキャンセル"'},HideFlags:39}}]}] Select28 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:31b,id:"minecraft:map",tag:{display:{Name:'"\\u00A7r\\u00A7eリセット"'},HideFlags:39}}]}] Select31 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{display:{Name:'"\\u00A7r\\u00A7b決定"'},HideFlags:39}}]}] Select34 0

execute if score #mad friendlyFire matches 0 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:11b,id:"minecraft:redstone_lamp",tag:{display:{Name:'"\\u00A7r\\u00A7fOFF"'},HideFlags:39}}]}] Select11 0
execute if score #mad collisionRule matches 0 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:12b,id:"minecraft:redstone_lamp",tag:{display:{Name:'"\\u00A7r\\u00A7fOFF"'},HideFlags:39}}]}] Select12 0
execute if score #mad VisibleName matches 0 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:redstone_lamp",tag:{display:{Name:'"\\u00A7r\\u00A7fOFF"'},HideFlags:39}}]}] Select13 0
execute if score #mad VisibleInvis matches 0 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:14b,id:"minecraft:redstone_lamp",tag:{display:{Name:'"\\u00A7r\\u00A7fOFF"'},HideFlags:39}}]}] Select14 0
execute if score #mad VisibleDeath matches 0 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:15b,id:"minecraft:redstone_lamp",tag:{display:{Name:'"\\u00A7r\\u00A7fOFF"'},HideFlags:39}}]}] Select15 0
execute if score #mad friendlyFire matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:11b,id:"minecraft:glowstone",tag:{display:{Name:'"\\u00A7r\\u00A7fON"'},HideFlags:39}}]}] Select11 0
execute if score #mad collisionRule matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:12b,id:"minecraft:glowstone",tag:{display:{Name:'"\\u00A7r\\u00A7fON"'},HideFlags:39}}]}] Select12 0
execute if score #mad VisibleName matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:glowstone",tag:{display:{Name:'"\\u00A7r\\u00A7fON"'},HideFlags:39}}]}] Select13 0
execute if score #mad VisibleInvis matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:14b,id:"minecraft:glowstone",tag:{display:{Name:'"\\u00A7r\\u00A7fON"'},HideFlags:39}}]}] Select14 0
execute if score #mad VisibleDeath matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:15b,id:"minecraft:glowstone",tag:{display:{Name:'"\\u00A7r\\u00A7fON"'},HideFlags:39}}]}] Select15 0

## Change to each phase
execute as @p[tag=Host,scores={Select11=1}] run function mad:system/setting/choose_team_setting/change_to
execute as @p[tag=Host,scores={Select12=1}] run function mad:system/setting/choose_team_setting/change_to
execute as @p[tag=Host,scores={Select13=1}] run function mad:system/setting/choose_team_setting/change_to
execute as @p[tag=Host,scores={Select14=1}] run function mad:system/setting/choose_team_setting/change_to
execute as @p[tag=Host,scores={Select15=1}] run function mad:system/setting/choose_team_setting/change_to
execute as @p[tag=Host,scores={Select20=1}] run function mad:system/setting/choose_team_setting/select_friendly_fire
execute as @p[tag=Host,scores={Select21=1}] run function mad:system/setting/choose_team_setting/select_collision_rule
execute as @p[tag=Host,scores={Select22=1}] run function mad:system/setting/choose_team_setting/select_visible_nametag
execute as @p[tag=Host,scores={Select23=1}] run function mad:system/setting/choose_team_setting/select_visible_invisible
execute as @p[tag=Host,scores={Select24=1}] run function mad:system/setting/choose_team_setting/select_visible_death_message
execute as @p[tag=Host,scores={Select28=1}] run function mad:system/setting/choose_team_setting/select_cancel
execute as @p[tag=Host,scores={Select31=1}] run function mad:system/setting/choose_team_setting/select_reset
execute as @p[tag=Host,scores={Select34=1}] run function mad:system/setting/choose_team_setting/select_ok