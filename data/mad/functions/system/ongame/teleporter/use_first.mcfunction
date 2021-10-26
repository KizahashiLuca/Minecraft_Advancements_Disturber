#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Scoreboard
scoreboard players set @s UseTeleporter 0

## Set teleport destination
execute as @s[predicate=mad:ongame/dimension/overworld] run scoreboard players set @s TeleportDimens 1
execute as @s[predicate=mad:ongame/dimension/the_nether] run scoreboard players set @s TeleportDimens 2
execute as @s[predicate=mad:ongame/dimension/the_end] run scoreboard players set @s TeleportDimens 3
execute store result score @s TeleportX run data get entity @s Pos[0]
execute store result score @s TeleportY run data get entity @s Pos[1]
execute store result score @s TeleportZ run data get entity @s Pos[2]

## Store scoreboard to storage
data modify storage mad:teleporter Teleporter.Temp.Pos set from entity @s Pos
data modify storage mad:teleporter Teleporter.Temp.Rotation set from entity @s Rotation
data modify storage mad:teleporter Teleporter.Temp.Dimension set from entity @s Dimension

## Give used teleporter
loot spawn ~ ~ ~ loot mad:ongame/chest_minecart_item/teleporter_set
execute as @e[predicate=mad:ongame/teleporter/dropped_soul_lantern_init,sort=nearest,limit=1] run function mad:system/ongame/teleporter/set_teleport_lore

## Merge data storage
data modify storage mad:teleporter Teleporter.Store append from storage mad:teleporter Teleporter.Temp
data remove storage mad:teleporter Teleporter.Temp

## Reset scoreboard
scoreboard players reset @s TeleportDimens
scoreboard players reset @s TeleportX
scoreboard players reset @s TeleportY
scoreboard players reset @s TeleportZ

## Message
tellraw @s ["",{"text":"[テレポーター] テレポート先を設定しました。","color":"green"}]

## Kill item
kill @e[predicate=mad:ongame/teleporter/dropped_lantern,sort=nearest,limit=1]