#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Title
title @a times 20 80 20
title @a title ["",{"text":"DRAW","color":"white","bold":true}]

## Display Winners
tellraw @a ["",{"translate":"  試合が終了しました。","color":"white","bold":false,"italic":false}]
tellraw @a ["",{"translate":"  %s です！","with": [{"text":"勝者無し","bold":true}],"color":"white","bold":false,"italic":false}]