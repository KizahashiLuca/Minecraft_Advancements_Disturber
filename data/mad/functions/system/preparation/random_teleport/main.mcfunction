#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Jun 2020
## Version   : α-0.2
#####################################

## Teleport
execute as @a[team=Participant,tag=!Teleported] run function mad:system/preparation/random_teleport/branch

## Loop
execute if entity @p[tag=!Teleported] run function mad:system/preparation/random_teleport/main