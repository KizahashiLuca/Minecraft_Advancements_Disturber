#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Store soul lantern lore
data modify storage mad:teleporter Teleporter.TempLore set from entity @s Item.tag.display.Lore

## Take stored storage out temporary storage
data modify storage mad:teleporter Teleporter.Temp set from storage mad:teleporter Teleporter.Store[0]
data remove storage mad:teleporter Teleporter.Store[0]

## Compare soul_lantern's tag to temporary storage
execute store success score @p[tag=DetectUseSetTelep] TeleporterTemp2 run data modify entity @s Item.tag.display.Lore[0] set from storage mad:teleporter Teleporter.Temp.Message[0]
execute store success score @p[tag=DetectUseSetTelep] TeleporterTemp3 run data modify entity @s Item.tag.display.Lore[1] set from storage mad:teleporter Teleporter.Temp.Message[1]

## If not equal soul_lantern's tag to temporary storage, return soul_lantern's tag
execute if entity @p[predicate=mad:ongame/teleporter/detect_use_set_teleporter] run data modify entity @s Item.tag.display.Lore set from storage mad:teleporter Teleporter.TempLore

## Return temporary storage to stored storage
execute as @p[predicate=mad:ongame/teleporter/detect_use_set_teleporter] run data modify storage mad:teleporter Teleporter.Store append from storage mad:teleporter Teleporter.Temp

## If equal soul_lantern's tag to temporary storage, summon area_effect_cloud
execute if entity @p[predicate=mad:ongame/teleporter/detect_teleporter_dest] if data storage mad:teleporter Teleporter.Temp{Dimension:"minecraft:overworld"} in minecraft:overworld run function mad:system/ongame/teleporter/summon_area_effect_cloud
execute if entity @p[predicate=mad:ongame/teleporter/detect_teleporter_dest] if data storage mad:teleporter Teleporter.Temp{Dimension:"minecraft:the_nether"} in minecraft:the_nether run function mad:system/ongame/teleporter/summon_area_effect_cloud
execute if entity @p[predicate=mad:ongame/teleporter/detect_teleporter_dest] if data storage mad:teleporter Teleporter.Temp{Dimension:"minecraft:the_end"} in minecraft:the_end run function mad:system/ongame/teleporter/summon_area_effect_cloud

## Loop
execute if entity @p[tag=DetectUseSetTelep,scores={TeleporterTemp2=1..,TeleporterTemp3=1..}] as @s run function mad:system/ongame/teleporter/compare_soul_lantern_tag