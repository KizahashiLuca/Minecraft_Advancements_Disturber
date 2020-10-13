#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Kill armor stand - not respawn beacon
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:armor_stand",tag:{EntityTag:{CustomName:'{"text":"リスポーンビーコン","color":"light_purple"}',ShowArms:1b,NoGravity:1b},Tags:["MinecartItem"]}}},tag=!KilledArmorStand] at @s run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:armor_stand"}},nbt=!{Item:{tag:{EntityTag:{CustomName:'{"text":"リスポーンビーコン","color":"light_purple"}',ShowArms:1b,NoGravity:1b},Tags:["MinecartItem"]}}},sort=nearest,limit=1]
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:armor_stand",tag:{EntityTag:{CustomName:'{"text":"リスポーンビーコン","color":"light_purple"}',ShowArms:1b,NoGravity:1b},Tags:["MinecartItem"]}}},tag=!KilledArmorStand] run tag @s add KilledArmorStand