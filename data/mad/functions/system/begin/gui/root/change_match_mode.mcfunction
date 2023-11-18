#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Change competitiion
execute if predicate mad:gamerules/num_of_participants/not_one run scoreboard players add #mad IsTeam 1
execute if score #mad IsTeam matches 2.. run scoreboard players set #mad IsTeam 0

## Send message
tellraw @a[predicate=mad:gamerules/match_mode/individual] ["",{"text":"[初期設定] マッチモード : ","color":"green"},{"text":"個人戦","color":"green","bold":true}]
tellraw @a[predicate=mad:gamerules/match_mode/team] ["",{"text":"[初期設定] マッチモード : ","color":"green"},{"text":"チーム戦","color":"green","bold":true}]

## Set inventory
function mad:system/begin/gui/root/change_to
