#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Title
title @a title ["",{"text":"YELLOW","color":"yellow","bold":true}]
title @a subtitle ["",{"text":"WIN","color":"yellow","bold":true}]

## Display Winners
tellraw @a ["",{"translate":"  試合が終了しました。","color":"white","bold":false,"italic":false}]
tellraw @a ["",{"translate":"  勝者は %s です！","with": [{"text":"黄チーム","color":"yellow","bold":true}],"color":"white","bold":false,"italic":false}]