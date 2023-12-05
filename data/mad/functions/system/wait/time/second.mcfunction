#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Calculate time
scoreboard players remove #mad Second 1
execute if predicate mad:system/wait/time/second/lt_zero run scoreboard players set #mad Second 59

## Send title message
function mad:system/wait/time/title

## Send gamerules
function mad:system/wait/time/gamerules/main

## Process the sound system
execute as @a[predicate=mad:system/wait/time/second/yellow_gage] at @s run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1 1
execute as @a[predicate=mad:system/wait/time/second/red_gage] at @s run playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 1 1
execute as @a[predicate=mad:system/wait/time/second/eq_zero] at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1