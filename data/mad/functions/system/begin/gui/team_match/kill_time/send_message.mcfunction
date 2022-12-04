#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 29 Sep 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Send kill time messages
tellraw @a ["",{"translate":"[キル取得時間] %s秒","with":[{"score":{"name":"#mad","objective":"KillTime"},"bold":true}],"color":"green","bold":false,"italic":false}]

## Change to team_match
function mad:system/begin/gui/team_match/change_to