#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Title
title @a title ["",{"text":"PURPLE","color":"dark_purple","bold":true}]
title @a subtitle ["",{"text":"WIN","color":"dark_purple","bold":true}]

## Display Winners
tellraw @a ["",{"translate":"  試合が終了しました。","color":"white","bold":false,"italic":false}]
tellraw @a ["",{"translate":"  勝者は %s です！","with": [{"text":"紫チーム","color":"dark_purple","bold":true}],"color":"white","bold":false,"italic":false}]