#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

## Reset choice
scoreboard players operation #mad Difficulty = #mad DifficultyPrv

## Send messages
function mad:system/setting/choose_difficulty/send_message