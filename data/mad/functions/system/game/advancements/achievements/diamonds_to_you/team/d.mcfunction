#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @a[predicate=mad:player/team/d] AD_Achievements_diamonds_to_you 1
scoreboard players set #mad_team_d AD_Achievements_diamonds_to_you 1
scoreboard players add #mad_team_d HasAdvancements 1
scoreboard players operation #mad_team_d TimeLimit += #mad AddingTime
scoreboard players operation #mad_team_d Second += #mad AddingTime
advancement grant @a[predicate=mad:player/team/d] only mad:achievements/diamonds_to_you
tellraw @a[predicate=mad:player/team/d] ["",{"translate":"chat.type.advancement.task","with":[{"text":"緑チーム","color":"green","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"ダイヤモンドをあなたに！","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"ダイヤモンドをあなたに！"},{"translate":"モブにダイヤモンドを拾わせる"}]}]}}]}]}]
