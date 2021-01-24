#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Set scoreboard
scoreboard players set @a[team=TeamB] AD_ac_fly_pig 1
scoreboard players add @a[team=TeamB] HasAdvancements 1
scoreboard players operation @a[team=TeamB,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @a[team=TeamB,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamB] only mad:achievements/fly_pig
tellraw @a[team=TeamB] ["",{"translate":"chat.type.advancement.challenge","with":[{"text":"青チーム","color":"blue","bold":true},{"translate":"[%s]","color":"dark_purple","with":[{"text":"ブタさんの飛ぶ頃に","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"dark_purple","with":[{"text":"ブタさんの飛ぶ頃に"},{"text":"ブタに乗って崖から落ちる"}]}]}}]}]}]
