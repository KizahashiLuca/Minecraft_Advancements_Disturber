#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Calculate time
scoreboard players remove @a[predicate=mad:player/alive] Second 1
kill @a[predicate=mad:system/game/timer/individual/second/lt_zero]

## Store time for bossbar
execute if predicate mad:gamerules/num_of_participants/ge_1 run function mad:system/game/timer/individual/bossbar/part_a
execute if predicate mad:gamerules/num_of_participants/ge_6 run function mad:system/game/timer/individual/bossbar/part_b
execute if predicate mad:gamerules/num_of_participants/ge_11 run function mad:system/game/timer/individual/bossbar/part_c
execute if predicate mad:gamerules/num_of_participants/ge_16 run function mad:system/game/timer/individual/bossbar/part_d

## Process the sound system
execute as @a[predicate=mad:system/game/timer/individual/second/from_4_to_10] at @s run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1 1
execute as @a[predicate=mad:system/game/timer/individual/second/from_1_to_3] at @s run playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 1 1
execute as @a[predicate=mad:system/game/timer/individual/second/eq_zero] at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1