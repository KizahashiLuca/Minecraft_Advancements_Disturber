#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 04 Dec 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Replace item
item replace entity @s weapon.offhand with minecraft:air

## Play sound
execute as @s at @s run playsound entity.item.break player @a ~ ~ ~ 1.0 1.0

## Add a tag
tag @s add MAD_SummonerOfSonicBoom

## Summon fangs
execute as @s at @s anchored eyes run summon minecraft:area_effect_cloud ^ ^ ^ {Tags:["MAD_SonicBoom","MAD_NotSetPlayer"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}
execute as @e[predicate=mad:system/item/sonic_laser/boom/not_set_marker] at @s run function mad:system/item/sonic_laser/set_marker

## Set evoker fangs
schedule function mad:system/item/sonic_laser/set_boom 1t append

## Remove tags
tag @s remove MAD_SummonerOfSonicBoom
tag @e[predicate=mad:system/item/sonic_laser/boom/not_set_marker] remove MAD_NotSetPlayer