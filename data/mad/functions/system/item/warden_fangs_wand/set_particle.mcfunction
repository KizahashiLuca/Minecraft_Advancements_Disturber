#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Set particle
particle minecraft:sonic_boom ^ ^ ^1.5
playsound minecraft:entity.warden.sonic_boom hostile @a ^ ^ ^1.5
execute if predicate mad:gamerules/difficulty/peaceful positioned ^ ^ ^1.5 as @e[distance=..3.0] run damage @s 3.0 minecraft:sonic_boom
execute if predicate mad:gamerules/difficulty/easy positioned ^ ^ ^1.5 as @e[distance=..1.0] run damage @s 6.0 minecraft:sonic_boom
execute if predicate mad:gamerules/difficulty/normal positioned ^ ^ ^1.5 as @e[distance=..1.0] run damage @s 10.0 minecraft:sonic_boom
execute if predicate mad:gamerules/difficulty/hard positioned ^ ^ ^1.5 as @e[distance=..1.0] run damage @s 15.0 minecraft:sonic_boom
execute if predicate mad:gamerules/difficulty/hardcore positioned ^ ^ ^1.5 as @e[distance=..1.0] run damage @s 15.0 minecraft:sonic_boom