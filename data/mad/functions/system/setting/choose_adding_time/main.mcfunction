#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Detect dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:emerald",tag:{display:{Name:'"\\u00A7r\\u00A7f100秒"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:emerald",tag:{display:{Name:'"\\u00A7r\\u00A7f200秒"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:emerald",tag:{display:{Name:'"\\u00A7r\\u00A7f300秒"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:emerald",tag:{display:{Name:'"\\u00A7r\\u00A7f400秒"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:emerald",tag:{display:{Name:'"\\u00A7r\\u00A7f500秒"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier",tag:{display:{Name:'"\\u00A7r\\u00A7dキャンセル"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:structure_void",tag:{display:{Name:'"\\u00A7r\\u00A7b決定"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7f選択済"'},HideFlags:39}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mad:system/setting/choose_adding_time/drop

## Detect inventory
scoreboard players set @p[tag=Host] Select20 1
scoreboard players set @p[tag=Host] Select21 1
scoreboard players set @p[tag=Host] Select22 1
scoreboard players set @p[tag=Host] Select23 1
scoreboard players set @p[tag=Host] Select24 1
scoreboard players set @p[tag=Host] Select28 1
scoreboard players set @p[tag=Host] Select34 1
scoreboard players set @p[tag=Host] Selected 1

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:emerald",tag:{display:{Name:'"\\u00A7r\\u00A7f100秒"'},HideFlags:39}}]}] Select20 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:emerald",tag:{display:{Name:'"\\u00A7r\\u00A7f200秒"'},HideFlags:39}}]}] Select21 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:emerald",tag:{display:{Name:'"\\u00A7r\\u00A7f300秒"'},HideFlags:39}}]}] Select22 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:emerald",tag:{display:{Name:'"\\u00A7r\\u00A7f400秒"'},HideFlags:39}}]}] Select23 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:emerald",tag:{display:{Name:'"\\u00A7r\\u00A7f500秒"'},HideFlags:39}}]}] Select24 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{display:{Name:'"\\u00A7r\\u00A7dキャンセル"'},HideFlags:39}}]}] Select28 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{display:{Name:'"\\u00A7r\\u00A7b決定"'},HideFlags:39}}]}] Select34 0

execute if score #mad AddingTime matches 100 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:11b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7f選択済"'},HideFlags:39}}]}] Selected 0
execute if score #mad AddingTime matches 200 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:12b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7f選択済"'},HideFlags:39}}]}] Selected 0
execute if score #mad AddingTime matches 300 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7f選択済"'},HideFlags:39}}]}] Selected 0
execute if score #mad AddingTime matches 400 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:14b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7f選択済"'},HideFlags:39}}]}] Selected 0
execute if score #mad AddingTime matches 500 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:15b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7f選択済"'},HideFlags:39}}]}] Selected 0

## Change to each phase
execute as @p[tag=Host,scores={Select20=1}] run function mad:system/setting/choose_adding_time/select_100secs
execute as @p[tag=Host,scores={Select21=1}] run function mad:system/setting/choose_adding_time/select_200secs
execute as @p[tag=Host,scores={Select22=1}] run function mad:system/setting/choose_adding_time/select_300secs
execute as @p[tag=Host,scores={Select23=1}] run function mad:system/setting/choose_adding_time/select_400secs
execute as @p[tag=Host,scores={Select24=1}] run function mad:system/setting/choose_adding_time/select_500secs
execute as @p[tag=Host,scores={Select28=1}] run function mad:system/setting/choose_adding_time/select_cancel
execute as @p[tag=Host,scores={Select34=1}] run function mad:system/setting/choose_adding_time/select_ok
execute as @p[tag=Host,scores={Selected=1}] run function mad:system/setting/choose_adding_time/change_to