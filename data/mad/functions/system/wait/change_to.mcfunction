#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Set game
function mad:system/wait/set_game/main

## Change bossbar
bossbar set mad:bossbar name ["",{"text":"待機フェーズ","color":"white","bold":false,"italic":false}]

## Change phase
scoreboard players set #mad Phase 19