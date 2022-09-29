#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 29 Sep 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @a[predicate=mad:player/team/e] AD_Achievements_diamonds_to_you 1
scoreboard players set #mad_team_e AD_Achievements_diamonds_to_you 1
scoreboard players add #mad_team_e HasAdvancements 1
scoreboard players operation #mad_team_e TimeLimit += #mad AddingTime
scoreboard players operation #mad_team_e Second += #mad AddingTime
advancement grant @a[predicate=mad:player/team/e] only mad:achievements/diamonds_to_you
tellraw @a[predicate=mad:player/team/e] ["",{"translate":"chat.type.advancement.task","with":[{"text":"紫チーム","color":"dark_purple","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"ダイヤモンドをあなたに！","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"ダイヤモンドをあなたに！"},{"translate":"モブにダイヤモンドを拾わせる"}]}]}}]}]}]
