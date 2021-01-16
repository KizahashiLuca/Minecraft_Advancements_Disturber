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
scoreboard players set @p[tag=Host] Select20 1
scoreboard players set @p[tag=Host] Select22 1
scoreboard players set @p[tag=Host] Select24 1
scoreboard players set @p[tag=Host] Select28 1
scoreboard players set @p[tag=Host] Select34 1

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:white_banner",tag:{Tags:["MADsetting","left_arrow"]}}]}] Select20 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{Tags:["MADsetting","world_border"]}}]}] Select22 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:white_banner",tag:{Tags:["MADsetting","right_arrow"]}}]}] Select24 0

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{Tags:["MADsetting","cancel"]}}]}] Select28 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{Tags:["MADsetting","determine"]}}]}] Select34 0

## Change to each phase
execute as @p[tag=Host,scores={Select20=1}] run function mad:system/setting/choose_world_border/select_left_arrow
execute as @p[tag=Host,scores={Select22=1}] run function mad:system/setting/choose_world_border/select_right_arrow
execute as @p[tag=Host,scores={Select24=1}] run function mad:system/setting/choose_world_border/select_right_arrow
execute as @p[tag=Host,scores={Select28=1}] run function mad:system/setting/choose_world_border/select_cancel
execute as @p[tag=Host,scores={Select34=1}] run function mad:system/setting/choose_world_border/select_ok