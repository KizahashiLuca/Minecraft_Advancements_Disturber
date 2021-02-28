#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Mar 2021
## Version   : β-1.2.3
#####################################

## Calculate time
scoreboard players remove @s Second 1
scoreboard players set @s[scores={Second=..-1}] Second 0

## Store time for bossbar
function mad:system/time_individual/participant/branch

## Process the sound system
playsound minecraft:item.trident.return master @s[scores={Second=4..10}] ~ ~ ~ 1 1 1
playsound minecraft:item.trident.throw master @s[scores={Second=1..3}] ~ ~ ~ 1 1 1
playsound minecraft:item.trident.thunder master @s[scores={Second=0}] ~ ~ ~ 1 1 1