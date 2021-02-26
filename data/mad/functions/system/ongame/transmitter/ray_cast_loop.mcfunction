#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Teleport cloud
tp @s ^ ^ ^.5

## Detect blocks
execute at @s unless block ~ ~ ~ minecraft:air unless block ~ ~-1 ~ minecraft:lectern unless block ~ ~ ~ minecraft:lectern unless block ~ ~1 ~ minecraft:lectern if entity @p[tag=RayCasting,distance=..5] run kill @s
execute at @s positioned ~-1 ~-1 ~-1 if block ~ ~ ~ minecraft:lectern{Book:{tag:{title:"発信機",Tags:["MinecartItem"]}}} if entity @p[tag=RayCasting,distance=..5] run function mad:system/ongame/transmitter/detect_lectern
execute at @s positioned ~-1 ~-1 ~0 if block ~ ~ ~ minecraft:lectern{Book:{tag:{title:"発信機",Tags:["MinecartItem"]}}} if entity @p[tag=RayCasting,distance=..5] run function mad:system/ongame/transmitter/detect_lectern
execute at @s positioned ~-1 ~-1 ~1 if block ~ ~ ~ minecraft:lectern{Book:{tag:{title:"発信機",Tags:["MinecartItem"]}}} if entity @p[tag=RayCasting,distance=..5] run function mad:system/ongame/transmitter/detect_lectern
execute at @s positioned ~-1 ~0 ~-1 if block ~ ~ ~ minecraft:lectern{Book:{tag:{title:"発信機",Tags:["MinecartItem"]}}} if entity @p[tag=RayCasting,distance=..5] run function mad:system/ongame/transmitter/detect_lectern
execute at @s positioned ~-1 ~0 ~0 if block ~ ~ ~ minecraft:lectern{Book:{tag:{title:"発信機",Tags:["MinecartItem"]}}} if entity @p[tag=RayCasting,distance=..5] run function mad:system/ongame/transmitter/detect_lectern
execute at @s positioned ~-1 ~0 ~1 if block ~ ~ ~ minecraft:lectern{Book:{tag:{title:"発信機",Tags:["MinecartItem"]}}} if entity @p[tag=RayCasting,distance=..5] run function mad:system/ongame/transmitter/detect_lectern
execute at @s positioned ~-1 ~1 ~-1 if block ~ ~ ~ minecraft:lectern{Book:{tag:{title:"発信機",Tags:["MinecartItem"]}}} if entity @p[tag=RayCasting,distance=..5] run function mad:system/ongame/transmitter/detect_lectern
execute at @s positioned ~-1 ~1 ~0 if block ~ ~ ~ minecraft:lectern{Book:{tag:{title:"発信機",Tags:["MinecartItem"]}}} if entity @p[tag=RayCasting,distance=..5] run function mad:system/ongame/transmitter/detect_lectern
execute at @s positioned ~-1 ~1 ~1 if block ~ ~ ~ minecraft:lectern{Book:{tag:{title:"発信機",Tags:["MinecartItem"]}}} if entity @p[tag=RayCasting,distance=..5] run function mad:system/ongame/transmitter/detect_lectern
execute at @s positioned ~0 ~-1 ~-1 if block ~ ~ ~ minecraft:lectern{Book:{tag:{title:"発信機",Tags:["MinecartItem"]}}} if entity @p[tag=RayCasting,distance=..5] run function mad:system/ongame/transmitter/detect_lectern
execute at @s positioned ~0 ~-1 ~0 if block ~ ~ ~ minecraft:lectern{Book:{tag:{title:"発信機",Tags:["MinecartItem"]}}} if entity @p[tag=RayCasting,distance=..5] run function mad:system/ongame/transmitter/detect_lectern
execute at @s positioned ~0 ~-1 ~1 if block ~ ~ ~ minecraft:lectern{Book:{tag:{title:"発信機",Tags:["MinecartItem"]}}} if entity @p[tag=RayCasting,distance=..5] run function mad:system/ongame/transmitter/detect_lectern
execute at @s positioned ~0 ~0 ~-1 if block ~ ~ ~ minecraft:lectern{Book:{tag:{title:"発信機",Tags:["MinecartItem"]}}} if entity @p[tag=RayCasting,distance=..5] run function mad:system/ongame/transmitter/detect_lectern
execute at @s positioned ~0 ~0 ~0 if block ~ ~ ~ minecraft:lectern{Book:{tag:{title:"発信機",Tags:["MinecartItem"]}}} if entity @p[tag=RayCasting,distance=..5] run function mad:system/ongame/transmitter/detect_lectern
execute at @s positioned ~0 ~0 ~1 if block ~ ~ ~ minecraft:lectern{Book:{tag:{title:"発信機",Tags:["MinecartItem"]}}} if entity @p[tag=RayCasting,distance=..5] run function mad:system/ongame/transmitter/detect_lectern
execute at @s positioned ~0 ~1 ~-1 if block ~ ~ ~ minecraft:lectern{Book:{tag:{title:"発信機",Tags:["MinecartItem"]}}} if entity @p[tag=RayCasting,distance=..5] run function mad:system/ongame/transmitter/detect_lectern
execute at @s positioned ~0 ~1 ~0 if block ~ ~ ~ minecraft:lectern{Book:{tag:{title:"発信機",Tags:["MinecartItem"]}}} if entity @p[tag=RayCasting,distance=..5] run function mad:system/ongame/transmitter/detect_lectern
execute at @s positioned ~0 ~1 ~1 if block ~ ~ ~ minecraft:lectern{Book:{tag:{title:"発信機",Tags:["MinecartItem"]}}} if entity @p[tag=RayCasting,distance=..5] run function mad:system/ongame/transmitter/detect_lectern
execute at @s positioned ~1 ~-1 ~-1 if block ~ ~ ~ minecraft:lectern{Book:{tag:{title:"発信機",Tags:["MinecartItem"]}}} if entity @p[tag=RayCasting,distance=..5] run function mad:system/ongame/transmitter/detect_lectern
execute at @s positioned ~1 ~-1 ~0 if block ~ ~ ~ minecraft:lectern{Book:{tag:{title:"発信機",Tags:["MinecartItem"]}}} if entity @p[tag=RayCasting,distance=..5] run function mad:system/ongame/transmitter/detect_lectern
execute at @s positioned ~1 ~-1 ~1 if block ~ ~ ~ minecraft:lectern{Book:{tag:{title:"発信機",Tags:["MinecartItem"]}}} if entity @p[tag=RayCasting,distance=..5] run function mad:system/ongame/transmitter/detect_lectern
execute at @s positioned ~1 ~0 ~-1 if block ~ ~ ~ minecraft:lectern{Book:{tag:{title:"発信機",Tags:["MinecartItem"]}}} if entity @p[tag=RayCasting,distance=..5] run function mad:system/ongame/transmitter/detect_lectern
execute at @s positioned ~1 ~0 ~0 if block ~ ~ ~ minecraft:lectern{Book:{tag:{title:"発信機",Tags:["MinecartItem"]}}} if entity @p[tag=RayCasting,distance=..5] run function mad:system/ongame/transmitter/detect_lectern
execute at @s positioned ~1 ~0 ~1 if block ~ ~ ~ minecraft:lectern{Book:{tag:{title:"発信機",Tags:["MinecartItem"]}}} if entity @p[tag=RayCasting,distance=..5] run function mad:system/ongame/transmitter/detect_lectern
execute at @s positioned ~1 ~1 ~-1 if block ~ ~ ~ minecraft:lectern{Book:{tag:{title:"発信機",Tags:["MinecartItem"]}}} if entity @p[tag=RayCasting,distance=..5] run function mad:system/ongame/transmitter/detect_lectern
execute at @s positioned ~1 ~1 ~0 if block ~ ~ ~ minecraft:lectern{Book:{tag:{title:"発信機",Tags:["MinecartItem"]}}} if entity @p[tag=RayCasting,distance=..5] run function mad:system/ongame/transmitter/detect_lectern
execute at @s positioned ~1 ~1 ~1 if block ~ ~ ~ minecraft:lectern{Book:{tag:{title:"発信機",Tags:["MinecartItem"]}}} if entity @p[tag=RayCasting,distance=..5] run function mad:system/ongame/transmitter/detect_lectern
execute at @s unless entity @p[tag=RayCasting,distance=..5] run kill @s
execute at @s if block ~ ~ ~ minecraft:air if entity @p[tag=RayCasting,distance=..5] run function mad:system/ongame/transmitter/ray_cast_loop