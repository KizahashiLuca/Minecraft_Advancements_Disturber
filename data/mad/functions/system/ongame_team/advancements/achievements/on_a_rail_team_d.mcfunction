#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @a[team=TeamD] AD_ac_on_a_rail 1
scoreboard players add @a[team=TeamD] HasAdvancements 1
scoreboard players operation @a[team=TeamD,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @a[team=TeamD,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamD] only mad:achievements/on_a_rail
tellraw @a[team=TeamD] ["",{"translate":"chat.type.advancement.challenge","with":[{"text":"緑チーム","color":"green","bold":true},{"translate":"[%s]","color":"dark_purple","with":[{"text":"世界のトロッコから","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"dark_purple","with":[{"text":"世界のトロッコから"},{"text":"トロッコに乗って出発地点から1km以上走行する"}]}]}}]}]}]
