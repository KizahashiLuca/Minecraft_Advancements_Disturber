#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Mar 2021
## Version   : β-1.2.3
#####################################

## Detect dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{tag:{Tags:["MADsetting"]}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mad:system/setting/choose_gamerule/drop

## Detect inventory
scoreboard players set @p[tag=Host] Select12 1
scoreboard players set @p[tag=Host] Select14 1
scoreboard players set @p[tag=Host] Select21 1
scoreboard players set @p[tag=Host] Select23 1
scoreboard players set @p[tag=Host] Select28 1
scoreboard players set @p[tag=Host] Select31 1
scoreboard players set @p[tag=Host] Select34 1

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:tube_coral_fan",tag:{Tags:["MADsetting","weather_cycle"]}}]}] Select21 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:fire_coral_fan",tag:{Tags:["MADsetting","daylight_cycle"]}}]}] Select23 0

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{Tags:["MADsetting","cancel"]}}]}] Select28 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:31b,id:"minecraft:map",tag:{Tags:["MADsetting","reset"]}}]}] Select31 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{Tags:["MADsetting","determine"]}}]}] Select34 0

execute if score #mad WeatherCycle matches 0 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:12b,id:"minecraft:redstone_lamp",tag:{Tags:["MADsetting","off"]}}]}] Select12 0
execute if score #mad WeatherCycle matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:12b,id:"minecraft:glowstone",tag:{Tags:["MADsetting","on"]}}]}] Select12 0
execute if score #mad DaylightCycle matches 0 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:14b,id:"minecraft:redstone_lamp",tag:{Tags:["MADsetting","off"]}}]}] Select14 0
execute if score #mad DaylightCycle matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:14b,id:"minecraft:glowstone",tag:{Tags:["MADsetting","on"]}}]}] Select14 0

## Change to each phase
execute as @p[tag=Host,scores={Select12=1}] run function mad:system/setting/choose_gamerule/change_to
execute as @p[tag=Host,scores={Select14=1}] run function mad:system/setting/choose_gamerule/change_to
execute as @p[tag=Host,scores={Select21=1}] run function mad:system/setting/choose_gamerule/select_weather_cycle
execute as @p[tag=Host,scores={Select23=1}] run function mad:system/setting/choose_gamerule/select_daylight_cycle
execute as @p[tag=Host,scores={Select28=1}] run function mad:system/setting/choose_gamerule/select_cancel
execute as @p[tag=Host,scores={Select31=1}] run function mad:system/setting/choose_gamerule/select_reset
execute as @p[tag=Host,scores={Select34=1}] run function mad:system/setting/choose_gamerule/select_ok