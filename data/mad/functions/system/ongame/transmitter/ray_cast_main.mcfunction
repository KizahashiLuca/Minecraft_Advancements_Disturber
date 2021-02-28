#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Mar 2021
## Version   : β-1.2.3
#####################################

## Ray cast
data modify entity @s Rotation[0] set from entity @p[tag=RayCasting] Rotation[0]
data modify entity @s Rotation[1] set from entity @p[tag=RayCasting] Rotation[1]
execute at @s run function mad:system/ongame/transmitter/ray_cast_loop

## Detect lectern
# execute as @e[type=minecraft:area_effect_cloud,tag=TransmitterRayCast] at @s if block ~ ~-1 ~ minecraft:lectern{Book:{tag:{title:"発信機",Tags:["MinecartItem"]}}} run function mad:system/ongame/transmitter/detect_lectern
# execute as @e[type=minecraft:area_effect_cloud,tag=TransmitterRayCast] at @s if block ~ ~ ~ minecraft:lectern{Book:{tag:{title:"発信機",Tags:["MinecartItem"]}}} run function mad:system/ongame/transmitter/detect_lectern
# execute as @e[type=minecraft:area_effect_cloud,tag=TransmitterRayCast] at @s if block ~ ~1 ~ minecraft:lectern{Book:{tag:{title:"発信機",Tags:["MinecartItem"]}}} run function mad:system/ongame/transmitter/detect_lectern

# ## Kill cloud
# kill @s