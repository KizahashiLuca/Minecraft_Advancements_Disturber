#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Title
title @a title ["",{"text":"GREEN","color":"green","bold":true}]
title @a subtitle ["",{"text":"WIN","color":"green","bold":true}]

## Display Winners
tellraw @a ["",{"translate":"  試合が終了しました。","color":"white","bold":false,"italic":false}]
tellraw @a ["",{"translate":"  勝者は %s です！","with": [{"text":"緑チーム","color":"green","bold":true}],"color":"white","bold":false,"italic":false}]