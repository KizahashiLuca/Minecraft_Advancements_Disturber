#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Calculate time
scoreboard players remove @s Second 1
scoreboard players set @s[scores={Second=..-1}] Second 0

## Store time for bossbar
function mad:system/time_indivisual/participant/branch

## Process the sound system
playsound minecraft:item.trident.return master @s[scores={Second=4..10}] ~ ~ ~ 1 1 1
playsound minecraft:item.trident.throw master @s[scores={Second=1..3}] ~ ~ ~ 1 1 1
playsound minecraft:item.trident.thunder master @s[scores={Second=0}] ~ ~ ~ 1 1 1