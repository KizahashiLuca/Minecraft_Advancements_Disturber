#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Send messages
function mad:system/onpause/message_restart

## Set scoreboards
scoreboard players operation #mad Phase = #mad PrevPhase
scoreboard players set #mad PrevPhase 0

## Kill clouds
kill @e[type=minecraft:area_effect_cloud,tag=PausePosition]