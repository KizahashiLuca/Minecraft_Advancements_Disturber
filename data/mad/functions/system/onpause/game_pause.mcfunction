#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Send messages
function mad:system/onpause/message_pause

## Set scoreboards
scoreboard players operation #mad PrevPhase = #mad Phase
scoreboard players set #mad Phase 99

## Summon clouds
execute as @a[tag=Participant] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["PausePosition"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,Duration:2147483647}
