#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @a[team=TeamA] AD_ac_fly_pig 1
scoreboard players add @a[team=TeamA] HasAdvancements 1
scoreboard players operation @a[team=TeamA,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @a[team=TeamA,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamA] only mad:achievements/fly_pig
tellraw @a[team=TeamA] ["",{"translate":"chat.type.advancement.challenge","with":[{"text":"赤チーム","color":"red","bold":true},{"translate":"[%s]","color":"dark_purple","with":[{"text":"ブタさんの飛ぶ頃に","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"dark_purple","with":[{"text":"ブタさんの飛ぶ頃に"},{"text":"ブタに乗って崖から落ちる"}]}]}}]}]}]
