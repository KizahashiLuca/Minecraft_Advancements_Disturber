#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Send kill time messages
tellraw @a ["",{"translate":"[キル報酬時間] %s秒","with":[{"score":{"name":"#mad","objective":"KillTime"},"bold":true}],"color":"green","bold":false,"italic":false}]

## Change to team_match
function mad:system/begin/gui/team_match/change_to