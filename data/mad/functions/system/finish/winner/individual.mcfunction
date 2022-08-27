#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 28 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Title
title @a title ["",{"selector":"@a[predicate=mad:player/alive]","color":"red","bold":true}]
title @a subtitle ["",{"text":"WIN","color":"red","bold":true}]

## Display Winners
tellraw @a ["",{"translate":"  試合が終了しました。","color":"white","bold":false,"italic":false}]
tellraw @a ["",{"translate":"  勝者は %s です！","with": [{"selector":"@a[predicate=mad:player/alive]","color":"red","bold":true}],"color":"white","bold":false,"italic":false}]