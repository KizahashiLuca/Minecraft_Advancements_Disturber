#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Sep 2021
## Version   : β-1.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Title
title @a title ["",{"selector":"@a[predicate=mad:ongame/player/participant_alive]","color":"red","bold":true}]
title @a subtitle ["",{"text":"WIN","color":"red","bold":true}]

## Display Winners
tellraw @a ["",{"text":"  勝者は ","color":"white"},{"selector":"@a[predicate=mad:ongame/player/participant_alive]","bold":true,"color":"red"},{"text":" です！","color":"white"}]