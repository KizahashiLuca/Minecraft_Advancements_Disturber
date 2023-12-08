#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @a[predicate=mad:player/team/a] AD_Achievements_overkill 1
scoreboard players add @s HasAdvancements 1
scoreboard players set #mad_team_a AD_Achievements_overkill 1
scoreboard players add #mad_team_a HasAdvancements 1
scoreboard players operation #mad_team_a TimeLimit += #mad AddingTime
scoreboard players operation #mad_team_a Second += #mad AddingTime
advancement grant @a[predicate=mad:player/team/a] only mad:achievements/overkill
tellraw @a[predicate=mad:player/team/a] ["",{"translate":"chat.type.advancement.challenge","with":[{"text":"赤チーム","color":"red","bold":true},{"translate":"[%s]","color":"dark_purple","with":[{"translate":"やり過ぎ","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"dark_purple","with":[{"translate":"やり過ぎ"},{"translate":"一撃でハート9個分のダメージを与える"}]}]}}]}]}]
