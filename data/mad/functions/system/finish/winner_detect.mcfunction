###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Title
title @a times 20 40 20
title @a title ["",{"selector":"@a[team=Participant,scores={Phase=21,Death=0}]","color":"red","bold":true}]
title @a subtitle ["",{"text":"WIN","color":"red","bold":true}]

## Display Winners
tellraw @a ["",{"text":"  勝者は ","color":"white"},{"selector":"@a[team=Participant,scores={Phase=21,Death=0}]","bold":true,"color":"red"},{"text":" です！","color":"white"}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]