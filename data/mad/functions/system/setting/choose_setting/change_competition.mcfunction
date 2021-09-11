#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Add scoreboard
scoreboard objectives add IsTeamTmp dummy

## Change competitiion
execute if score #mad IsTeam matches 1 run scoreboard players set #mad IsTeamTmp 0
execute if score #mad NumParticipant matches ..1 if score #mad IsTeam matches 0 run scoreboard players set #mad IsTeamTmp 0
execute if score #mad NumParticipant matches 2.. if score #mad IsTeam matches 0 run scoreboard players set #mad IsTeamTmp 1

scoreboard players operation #mad IsTeam = #mad IsTeamTmp

## Send message
execute if score #mad IsTeam matches 0 run tellraw @a ["",{"text":"[初期設定] ","color":"green"},{"text":"個人戦","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]
execute if score #mad IsTeam matches 1 run tellraw @a ["",{"text":"[初期設定] ","color":"green"},{"text":"チーム戦","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]

## Remove scoreboard
scoreboard objectives remove IsTeamTmp

## Set inventory
function mad:system/setting/choose_setting/change_to
