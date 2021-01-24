#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Set scoreboard
scoreboard players set @a[team=TeamC] AD_ac_fly_pig 1
scoreboard players add @a[team=TeamC] HasAdvancements 1
scoreboard players operation @a[team=TeamC,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @a[team=TeamC,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamC] only mad:achievements/fly_pig
tellraw @a[team=TeamC] ["",{"translate":"chat.type.advancement.challenge","with":[{"text":"黄チーム","color":"yellow","bold":true},{"translate":"[%s]","color":"dark_purple","with":[{"text":"ブタさんの飛ぶ頃に","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"dark_purple","with":[{"text":"ブタさんの飛ぶ頃に"},{"text":"ブタに乗って崖から落ちる"}]}]}}]}]}]
