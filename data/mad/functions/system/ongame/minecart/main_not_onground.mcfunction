#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Set next
execute as @s[tag=NotSetNext] run function mad:system/ongame/minecart/set_next

## calculate random time
scoreboard players set #mad RandomCount 1
function mad:system/random_generator/randomizing
scoreboard players operation #mad RandomAnswer %= #mad 100

## Add a tag for next
tag @s[tag=!SetNext] add NotSetNext