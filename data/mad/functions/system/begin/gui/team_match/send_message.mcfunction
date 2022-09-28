#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 27 Sep 2022
## Version   : β-2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Send messages
tellraw @a[predicate=mad:gamerules/team_match/team_member/random] ["",{"translate":"[チームメンバー選択] %s","with":[{"text":"自動(ランダム)","bold":true}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=mad:gamerules/team_match/team_member/manual] ["",{"translate":"[チームメンバー選択] %s","with":[{"text":"手動","bold":true}],"color":"green","bold":false,"italic":false}]

tellraw @a ["",{"translate":"[チーム数] %sチーム","with":[{"score":{"name":"#mad","objective":"NumberOfTeams"},"bold":true}],"color":"green","bold":false,"italic":false}]

tellraw @a ["",{"translate":"[リスポーンビーコン数] %sヶ所","with":[{"score":{"name":"#mad","objective":"NumberOfBeacons"},"bold":true}],"color":"green","bold":false,"italic":false}]

## Change to choose setting
function mad:system/begin/gui/root/change_to