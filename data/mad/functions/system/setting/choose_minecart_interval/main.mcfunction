#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Sep 2021
## Version   : β-1.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{tag:{Tags:["MADsetting"]}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mad:system/setting/choose_minecart_interval/drop

## Detect inventory
scoreboard players set @p[tag=Host] Select13 1
scoreboard players set @p[tag=Host] Select21 1
scoreboard players set @p[tag=Host] Select22 1
scoreboard players set @p[tag=Host] Select23 1
scoreboard players set @p[tag=Host] Select28 1
scoreboard players set @p[tag=Host] Select31 1
execute if score #mad CartInterval matches 1.. run scoreboard players set @p[tag=Host] Select34 1

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:chest_minecart",tag:{Tags:["MADsetting","choose_minecart_interval"]}}]}] Select13 0

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:white_banner",tag:{Tags:["MADsetting","number"]}}]}] Select21 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:white_banner",tag:{Tags:["MADsetting","number"]}}]}] Select22 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:white_banner",tag:{Tags:["MADsetting","number"]}}]}] Select23 0

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{Tags:["MADsetting","cancel"]}}]}] Select28 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:31b,id:"minecraft:map",tag:{Tags:["MADsetting","reset"]}}]}] Select31 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{Tags:["MADsetting","determine"]}}]}] Select34 0

## Change to each phase
execute as @p[tag=Host,scores={Select13=1}] run function mad:system/setting/choose_minecart_interval/change_to
execute as @p[tag=Host,scores={Select21=1}] run function mad:system/setting/choose_minecart_interval/select_digit_0100
execute as @p[tag=Host,scores={Select22=1}] run function mad:system/setting/choose_minecart_interval/select_digit_0010
execute as @p[tag=Host,scores={Select23=1}] run function mad:system/setting/choose_minecart_interval/select_digit_0001
execute as @p[tag=Host,scores={Select28=1}] run function mad:system/setting/choose_minecart_interval/select_cancel
execute as @p[tag=Host,scores={Select31=1}] run function mad:system/setting/choose_minecart_interval/select_reset
execute as @p[tag=Host,scores={Select34=1}] run function mad:system/setting/choose_minecart_interval/select_ok