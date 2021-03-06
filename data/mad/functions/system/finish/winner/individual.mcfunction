#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Title
title @a title ["",{"selector":"@a[predicate=mad:ongame/player/participant_alive]","color":"red","bold":true}]
title @a subtitle ["",{"text":"WIN","color":"red","bold":true}]

## Display Winners
tellraw @a ["",{"text":"  勝者は ","color":"white"},{"selector":"@a[predicate=mad:ongame/player/participant_alive]","bold":true,"color":"red"},{"text":" です！","color":"white"}]