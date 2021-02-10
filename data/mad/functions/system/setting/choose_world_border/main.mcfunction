#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Detect dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{tag:{Tags:["MADsetting"]}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mad:system/setting/choose_world_border/drop

## Detect inventory
scoreboard players set @p[tag=Host] Select13 1
scoreboard players set @p[tag=Host] Select18 1
scoreboard players set @p[tag=Host] Select19 1
scoreboard players set @p[tag=Host] Select20 1
scoreboard players set @p[tag=Host] Select21 1
scoreboard players set @p[tag=Host] Select22 1
scoreboard players set @p[tag=Host] Select23 1
scoreboard players set @p[tag=Host] Select24 1
scoreboard players set @p[tag=Host] Select25 1
scoreboard players set @p[tag=Host] Select26 1
scoreboard players set @p[tag=Host] Select28 1
scoreboard players set @p[tag=Host] Select31 1
scoreboard players set @p[tag=Host] Select34 1

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:map",tag:{Tags:["MADsetting","choose_world_border"]}}]}] Select13 0

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:18b,id:"minecraft:white_banner",tag:{Tags:["MADsetting","number"]}}]}] Select18 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:19b,id:"minecraft:white_banner",tag:{Tags:["MADsetting","number"]}}]}] Select19 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:white_banner",tag:{Tags:["MADsetting","number"]}}]}] Select20 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:white_banner",tag:{Tags:["MADsetting","number"]}}]}] Select21 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:white_banner",tag:{Tags:["MADsetting","number"]}}]}] Select22 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:white_banner",tag:{Tags:["MADsetting","number"]}}]}] Select23 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:white_banner",tag:{Tags:["MADsetting","number"]}}]}] Select24 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:25b,id:"minecraft:white_banner",tag:{Tags:["MADsetting","number"]}}]}] Select25 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:26b,id:"minecraft:white_banner",tag:{Tags:["MADsetting","number"]}}]}] Select26 0

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{Tags:["MADsetting","cancel"]}}]}] Select28 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:31b,id:"minecraft:map",tag:{Tags:["MADsetting","reset"]}}]}] Select31 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{Tags:["MADsetting","determine"]}}]}] Select34 0

## Change to each phase
execute as @p[tag=Host,scores={Select13=1}] run function mad:system/setting/choose_world_border/change_to
execute as @p[tag=Host,scores={Select18=1}] run function mad:system/setting/choose_world_border/select_digit_1000
execute as @p[tag=Host,scores={Select19=1}] run function mad:system/setting/choose_world_border/select_digit_0100
execute as @p[tag=Host,scores={Select20=1}] run function mad:system/setting/choose_world_border/select_digit_0010
execute as @p[tag=Host,scores={Select21=1}] run function mad:system/setting/choose_world_border/select_digit_0001
execute as @p[tag=Host,scores={Select22=1}] run function mad:system/setting/choose_world_border/select_multi
execute as @p[tag=Host,scores={Select23=1}] run function mad:system/setting/choose_world_border/select_digit_1000
execute as @p[tag=Host,scores={Select24=1}] run function mad:system/setting/choose_world_border/select_digit_0100
execute as @p[tag=Host,scores={Select25=1}] run function mad:system/setting/choose_world_border/select_digit_0010
execute as @p[tag=Host,scores={Select26=1}] run function mad:system/setting/choose_world_border/select_digit_0001
execute as @p[tag=Host,scores={Select28=1}] run function mad:system/setting/choose_world_border/select_cancel
execute as @p[tag=Host,scores={Select31=1}] run function mad:system/setting/choose_world_border/select_reset
execute as @p[tag=Host,scores={Select34=1}] run function mad:system/setting/choose_world_border/select_ok