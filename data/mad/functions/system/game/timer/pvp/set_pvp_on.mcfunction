#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set #mad PvP 1

## Send messages
tellraw @a ["",{"text":"[PvP解禁]","color":"green","bold":false,"italic":false}]
tellraw @a ["",{"text":"  PvPが解禁されました。","color":"green","bold":false,"italic":false}]
tellraw @a ["",{"text":"  敵プレイヤーをキルするとキル報酬があり、","color":"green","bold":false,"italic":false}]
tellraw @a ["",{"text":"  バナーも生成されます。","color":"green","bold":false,"italic":false}]