#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Send messages
function mad:system/onpause/message_restart

## Set scoreboards
scoreboard players operation #mad Phase = #mad PrevPhase
scoreboard players set #mad PrevPhase 0

## Kill clouds
kill @e[type=minecraft:area_effect_cloud,tag=PausePosition]