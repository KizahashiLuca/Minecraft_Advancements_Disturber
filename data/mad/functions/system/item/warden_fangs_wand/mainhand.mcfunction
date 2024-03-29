#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Replace item
loot replace entity @s weapon.mainhand loot mad:system/item/warden_fangs_wand/mainhand

## Play sound
execute as @s[predicate=mad:system/item/warden_fangs_wand/mainhand/no_item] run playsound entity.item.break player @a ~ ~ ~ 1.0 1.0
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1.0 2.0

## Add a tag
tag @s add MAD_SummonerOfSonicBoom

## Summon sonic boom
summon minecraft:area_effect_cloud ^ ^1.0 ^4.0 {Tags:["MAD_SonicBoom","MAD_NotSetPlayer"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}
execute as @e[predicate=mad:system/item/warden_fangs_wand/not_set_marker] at @s run function mad:system/item/warden_fangs_wand/set_marker

## Set sonic boom
schedule function mad:system/item/warden_fangs_wand/set_sonic_boom 1t append

## Remove tags
tag @s remove MAD_SummonerOfSonicBoom
tag @e[predicate=mad:system/item/warden_fangs_wand/not_set_marker] remove MAD_NotSetPlayer