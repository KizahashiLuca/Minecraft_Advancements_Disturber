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
scoreboard players set @a[predicate=mad:player/team/c] AD_Achievements_on_a_rail 1
scoreboard players set #mad_team_c AD_Achievements_on_a_rail 1
scoreboard players add #mad_team_c HasAdvancements 1
scoreboard players operation #mad_team_c TimeLimit += #mad AddingTime
scoreboard players operation #mad_team_c Second += #mad AddingTime
advancement grant @a[predicate=mad:player/team/c] only mad:achievements/on_a_rail
tellraw @a[predicate=mad:player/team/c] ["",{"translate":"chat.type.advancement.challenge","with":[{"text":"黄チーム","color":"yellow","bold":true},{"translate":"[%s]","color":"dark_purple","with":[{"translate":"世界のトロッコから","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"dark_purple","with":[{"translate":"世界のトロッコから"},{"translate":"トロッコに乗って出発地点から1km以上走行する"}]}]}}]}]}]
