#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Set next
execute as @s[tag=NotSetNext] run function mad:system/ongame/minecart/set_next

## calculate random time
scoreboard players set #mad RandomCount 1
function mad:system/random_generator/randomizing
scoreboard players operation #mad RandomAnswer %= #mad 100

## Add a tag for next
tag @s[tag=!SetNext] add NotSetNext