#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.17
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset choice
scoreboard players operation #mad Difficulty = #mad DifficultyPrv

## Send messages
function mad:system/setting/choose_difficulty/send_message