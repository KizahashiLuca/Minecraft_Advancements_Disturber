#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

## Add scoreboard
scoreboard objectives add collisionRuleTmp dummy

## Change collisionRule
execute if score #mad collisionRule matches 1 run scoreboard players set #mad collisionRuleTmp 0
execute if score #mad collisionRule matches 0 run scoreboard players set #mad collisionRuleTmp 1

scoreboard players operation #mad collisionRule = #mad collisionRuleTmp

## Remove scoreboard
scoreboard objectives remove collisionRuleTmp

## Set inventory
function mad:system/setting/choose_team_setting/change_to