#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Title
title @a title ["",{"selector":"@a[team=Participant,scores={Phase=21,Death=0}]","color":"red","bold":true}]
title @a subtitle ["",{"text":"WIN","color":"red","bold":true}]

## Display Winners
tellraw @a ["",{"text":"  勝者は ","color":"white"},{"selector":"@a[team=Participant,scores={Phase=21,Death=0}]","bold":true,"color":"red"},{"text":" です！","color":"white"}]