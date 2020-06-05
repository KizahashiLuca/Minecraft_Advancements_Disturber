#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 31 May 2020
## Version   : α-0.1
#####################################

## Reset choice
scoreboard players operation #mad Difficulty = #mad DifficultyPrv

## Send messages
function mad:system/setting/choose_difficulty/send_message