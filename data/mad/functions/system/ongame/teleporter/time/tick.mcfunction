#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Calculate time every tick
scoreboard players remove @s TeleportTick 1

execute as @s[scores={TeleportTick=..0}] run function mad:system/ongame/teleporter/teleport_player