#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Detect dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{tag:{Tags:["MADsetting"]}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mad:system/setting/choose_initial_time/drop

## Detect inventory
scoreboard players set @p[tag=Host] Select20 1
scoreboard players set @p[tag=Host] Select21 1
scoreboard players set @p[tag=Host] Select22 1
scoreboard players set @p[tag=Host] Select23 1
scoreboard players set @p[tag=Host] Select24 1
scoreboard players set @p[tag=Host] Select28 1
scoreboard players set @p[tag=Host] Select34 1
scoreboard players set @p[tag=Host] Selected 1

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:clock",tag:{Tags:["MADsetting","100secs"]}}]}] Select20 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:clock",tag:{Tags:["MADsetting","200secs"]}}]}] Select21 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:clock",tag:{Tags:["MADsetting","300secs"]}}]}] Select22 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:clock",tag:{Tags:["MADsetting","400secs"]}}]}] Select23 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:clock",tag:{Tags:["MADsetting","500secs"]}}]}] Select24 0

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{Tags:["MADsetting","cancel"]}}]}] Select28 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{Tags:["MADsetting","determine"]}}]}] Select34 0

execute if score #mad TimeLimit matches 100 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:11b,id:"minecraft:nether_star",tag:{Tags:["MADsetting","selected"]}}]}] Selected 0
execute if score #mad TimeLimit matches 200 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:12b,id:"minecraft:nether_star",tag:{Tags:["MADsetting","selected"]}}]}] Selected 0
execute if score #mad TimeLimit matches 300 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:nether_star",tag:{Tags:["MADsetting","selected"]}}]}] Selected 0
execute if score #mad TimeLimit matches 400 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:14b,id:"minecraft:nether_star",tag:{Tags:["MADsetting","selected"]}}]}] Selected 0
execute if score #mad TimeLimit matches 500 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:15b,id:"minecraft:nether_star",tag:{Tags:["MADsetting","selected"]}}]}] Selected 0

## Change to each phase
execute as @p[tag=Host,scores={Select20=1}] run function mad:system/setting/choose_initial_time/select_100secs
execute as @p[tag=Host,scores={Select21=1}] run function mad:system/setting/choose_initial_time/select_200secs
execute as @p[tag=Host,scores={Select22=1}] run function mad:system/setting/choose_initial_time/select_300secs
execute as @p[tag=Host,scores={Select23=1}] run function mad:system/setting/choose_initial_time/select_400secs
execute as @p[tag=Host,scores={Select24=1}] run function mad:system/setting/choose_initial_time/select_500secs
execute as @p[tag=Host,scores={Select28=1}] run function mad:system/setting/choose_initial_time/select_cancel
execute as @p[tag=Host,scores={Select34=1}] run function mad:system/setting/choose_initial_time/select_ok
execute as @p[tag=Host,scores={Selected=1}] run function mad:system/setting/choose_initial_time/change_to