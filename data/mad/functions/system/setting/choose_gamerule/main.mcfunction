#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Detect dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:tube_coral_fan",tag:{display:{Name:'"\\u00A7r\\u00A7f天気サイクル"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:fire_coral_fan",tag:{display:{Name:'"\\u00A7r\\u00A7f昼夜サイクル"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier",tag:{display:{Name:'"\\u00A7r\\u00A7dキャンセル"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:map",tag:{display:{Name:'"\\u00A7r\\u00A7eリセット"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:structure_void",tag:{display:{Name:'"\\u00A7r\\u00A7b決定"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:redstone_lamp",tag:{display:{Name:'"\\u00A7r\\u00A7fOFF"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:glowstone",tag:{display:{Name:'"\\u00A7r\\u00A7fON"'},HideFlags:39}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mad:system/setting/choose_gamerule/drop

## Detect inventory
scoreboard players set @p[tag=Host] Select12 1
scoreboard players set @p[tag=Host] Select14 1
scoreboard players set @p[tag=Host] Select21 1
scoreboard players set @p[tag=Host] Select23 1
scoreboard players set @p[tag=Host] Select28 1
scoreboard players set @p[tag=Host] Select31 1
scoreboard players set @p[tag=Host] Select34 1

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:tube_coral_fan",tag:{display:{Name:'"\\u00A7r\\u00A7f天気サイクル"'},HideFlags:39}}]}] Select21 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:fire_coral_fan",tag:{display:{Name:'"\\u00A7r\\u00A7f昼夜サイクル"'},HideFlags:39}}]}] Select23 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{display:{Name:'"\\u00A7r\\u00A7dキャンセル"'},HideFlags:39}}]}] Select28 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:31b,id:"minecraft:map",tag:{display:{Name:'"\\u00A7r\\u00A7eリセット"'},HideFlags:39}}]}] Select31 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{display:{Name:'"\\u00A7r\\u00A7b決定"'},HideFlags:39}}]}] Select34 0

execute if score #mad WeatherCycle matches 0 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:12b,id:"minecraft:redstone_lamp",tag:{display:{Name:'"\\u00A7r\\u00A7fOFF"'},HideFlags:39}}]}] Select12 0
execute if score #mad DaylightCycle matches 0 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:14b,id:"minecraft:redstone_lamp",tag:{display:{Name:'"\\u00A7r\\u00A7fOFF"'},HideFlags:39}}]}] Select14 0
execute if score #mad WeatherCycle matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:12b,id:"minecraft:glowstone",tag:{display:{Name:'"\\u00A7r\\u00A7fON"'},HideFlags:39}}]}] Select12 0
execute if score #mad DaylightCycle matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:14b,id:"minecraft:glowstone",tag:{display:{Name:'"\\u00A7r\\u00A7fON"'},HideFlags:39}}]}] Select14 0

## Change to each phase
execute as @p[tag=Host,scores={Select12=1}] run function mad:system/setting/choose_gamerule/change_to
execute as @p[tag=Host,scores={Select14=1}] run function mad:system/setting/choose_gamerule/change_to
execute as @p[tag=Host,scores={Select21=1}] run function mad:system/setting/choose_gamerule/select_weather_cycle
execute as @p[tag=Host,scores={Select23=1}] run function mad:system/setting/choose_gamerule/select_daylight_cycle
execute as @p[tag=Host,scores={Select28=1}] run function mad:system/setting/choose_gamerule/select_cancel
execute as @p[tag=Host,scores={Select31=1}] run function mad:system/setting/choose_gamerule/select_reset
execute as @p[tag=Host,scores={Select34=1}] run function mad:system/setting/choose_gamerule/select_ok