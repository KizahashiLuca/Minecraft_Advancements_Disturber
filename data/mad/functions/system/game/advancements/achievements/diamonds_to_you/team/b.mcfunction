#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 28 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @a[predicate=mad:player/team/b] AD_Achievements_diamonds_to_you 1
scoreboard players set #mad_team_b AD_Achievements_diamonds_to_you 1
scoreboard players add #mad_team_b HasAdvancements 1
scoreboard players operation #mad_team_b TimeLimit += #mad AddingTime
scoreboard players operation #mad_team_b Second += #mad AddingTime
advancement grant @a[predicate=mad:player/team/b] only mad:achievements/diamonds_to_you
tellraw @a[predicate=mad:player/team/b] ["",{"translate":"chat.type.advancement.task","with":[{"text":"青チーム","color":"blue","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"ダイヤモンドをあなたに！","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"ダイヤモンドをあなたに！"},{"translate":"モブにダイヤモンドを拾わせる"}]}]}}]}]}]
