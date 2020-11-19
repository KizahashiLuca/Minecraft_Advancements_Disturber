#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Replace item
clear @a[scores={Phase=22,Death=2}]

## Set armor_stand
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:armor_stand",tag:{Tags:["RespawnBeaconByDead"]}}},tag=!SetArmorStand] run function mad:system/ongame/respawn_beacon/set_beacon

## Compare participant
execute as @a[scores={Phase=22,Death=2},tag=NotSetPlayerResBeacon] run function mad:system/ongame/respawn_beacon/compare_player