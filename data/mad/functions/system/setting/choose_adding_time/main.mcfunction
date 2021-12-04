#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.17
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{tag:{Tags:["MADsetting"]}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mad:system/setting/choose_adding_time/drop

## Detect inventory
scoreboard players set @p[tag=Host] Select13 1
scoreboard players set @p[tag=Host] Select21 1
scoreboard players set @p[tag=Host] Select22 1
scoreboard players set @p[tag=Host] Select23 1
scoreboard players set @p[tag=Host] Select28 1
scoreboard players set @p[tag=Host] Select31 1
execute if score #mad AddingTime matches 1.. run scoreboard players set @p[tag=Host] Select34 1

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:emerald",tag:{Tags:["MADsetting","choose_adding_time"]}}]}] Select13 0

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:white_banner",tag:{Tags:["MADsetting","number"]}}]}] Select21 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:white_banner",tag:{Tags:["MADsetting","number"]}}]}] Select22 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:white_banner",tag:{Tags:["MADsetting","number"]}}]}] Select23 0

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{Tags:["MADsetting","cancel"]}}]}] Select28 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:31b,id:"minecraft:map",tag:{Tags:["MADsetting","reset"]}}]}] Select31 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{Tags:["MADsetting","determine"]}}]}] Select34 0

## Change to each phase
execute as @p[tag=Host,scores={Select13=1}] run function mad:system/setting/choose_adding_time/change_to
execute as @p[tag=Host,scores={Select21=1}] run function mad:system/setting/choose_adding_time/select_digit_0100
execute as @p[tag=Host,scores={Select22=1}] run function mad:system/setting/choose_adding_time/select_digit_0010
execute as @p[tag=Host,scores={Select23=1}] run function mad:system/setting/choose_adding_time/select_digit_0001
execute as @p[tag=Host,scores={Select28=1}] run function mad:system/setting/choose_adding_time/select_cancel
execute as @p[tag=Host,scores={Select31=1}] run function mad:system/setting/choose_adding_time/select_reset
execute as @p[tag=Host,scores={Select34=1}] run function mad:system/setting/choose_adding_time/select_ok