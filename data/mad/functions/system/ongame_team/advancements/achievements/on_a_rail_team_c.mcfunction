#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Set scoreboard
scoreboard players set @a[team=TeamC] AD_ac_on_a_rail 1
scoreboard players add @a[team=TeamC] HasAdvancements 1
scoreboard players operation @a[team=TeamC,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @a[team=TeamC,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamC] only mad:achievements/on_a_rail
tellraw @a[team=TeamC] ["",{"translate":"chat.type.advancement.challenge","with":[{"text":"黄チーム","color":"yellow","bold":true},{"translate":"[%s]","color":"dark_purple","with":[{"text":"世界のトロッコから","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"dark_purple","with":[{"text":"世界のトロッコから"},{"text":"トロッコに乗って出発地点から1km以上走行する"}]}]}}]}]}]
