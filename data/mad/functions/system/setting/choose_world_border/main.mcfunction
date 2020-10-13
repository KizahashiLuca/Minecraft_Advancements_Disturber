#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
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
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:white_banner",tag:{Tags:["MADsetting","right_arrow"]}}]}] Select24 0

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{Tags:["MADsetting","cancel"]}}]}] Select28 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{Tags:["MADsetting","determine"]}}]}] Select34 0

execute if score #mad WorldBorder matches 0 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{Tags:["MADsetting","unlimit"]}}]}] Select22 0
execute if score #mad WorldBorder matches 100 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{Tags:["MADsetting","100x100"]}}]}] Select22 0
execute if score #mad WorldBorder matches 200 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{Tags:["MADsetting","200x200"]}}]}] Select22 0
execute if score #mad WorldBorder matches 300 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{Tags:["MADsetting","300x300"]}}]}] Select22 0
execute if score #mad WorldBorder matches 400 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{Tags:["MADsetting","400x400"]}}]}] Select22 0
execute if score #mad WorldBorder matches 500 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{Tags:["MADsetting","500x500"]}}]}] Select22 0
execute if score #mad WorldBorder matches 600 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{Tags:["MADsetting","600x600"]}}]}] Select22 0
execute if score #mad WorldBorder matches 700 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{Tags:["MADsetting","700x700"]}}]}] Select22 0
execute if score #mad WorldBorder matches 800 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{Tags:["MADsetting","800x800"]}}]}] Select22 0
execute if score #mad WorldBorder matches 900 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{Tags:["MADsetting","900x900"]}}]}] Select22 0
execute if score #mad WorldBorder matches 1000 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{Tags:["MADsetting","1000x1000"]}}]}] Select22 0
execute if score #mad WorldBorder matches 1100 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{Tags:["MADsetting","1100x1100"]}}]}] Select22 0
execute if score #mad WorldBorder matches 1200 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{Tags:["MADsetting","1200x1200"]}}]}] Select22 0
execute if score #mad WorldBorder matches 1300 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{Tags:["MADsetting","1300x1300"]}}]}] Select22 0
execute if score #mad WorldBorder matches 1400 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{Tags:["MADsetting","1400x1400"]}}]}] Select22 0
execute if score #mad WorldBorder matches 1500 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{Tags:["MADsetting","1500x1500"]}}]}] Select22 0
execute if score #mad WorldBorder matches 1600 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{Tags:["MADsetting","1600x1600"]}}]}] Select22 0
execute if score #mad WorldBorder matches 1700 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{Tags:["MADsetting","1700x1700"]}}]}] Select22 0
execute if score #mad WorldBorder matches 1800 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{Tags:["MADsetting","1800x1800"]}}]}] Select22 0
execute if score #mad WorldBorder matches 1900 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{Tags:["MADsetting","1900x1900"]}}]}] Select22 0
execute if score #mad WorldBorder matches 2000 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{Tags:["MADsetting","2000x2000"]}}]}] Select22 0

## Change to each phase
execute as @p[tag=Host,scores={Select20=1}] run function mad:system/setting/choose_world_border/select_left_arrow
execute as @p[tag=Host,scores={Select22=1}] run function mad:system/setting/choose_world_border/select_right_arrow
execute as @p[tag=Host,scores={Select24=1}] run function mad:system/setting/choose_world_border/select_right_arrow
execute as @p[tag=Host,scores={Select28=1}] run function mad:system/setting/choose_world_border/select_cancel
execute as @p[tag=Host,scores={Select34=1}] run function mad:system/setting/choose_world_border/select_ok