#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Set scoreboard
scoreboard players set @a[team=TeamB] AD_pg_kubikari 1
scoreboard players add @a[team=TeamB] HasAdvancements 1
scoreboard players operation @p[team=TeamB,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @p[team=TeamB,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamB] only mad:kubikari_potage
tellraw @a[team=TeamB] ["",{"translate":"chat.type.advancement.challenge","with":[{"text":"青チーム","color":"blue","bold":true},{"translate":"[%s]","color":"dark_purple","with":[{"text":"首狩りぽたーじゅ","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"dark_purple","with":[{"text":"首狩りぽたーじゅ"},{"text":"ぽたーじゅの頭を手に入れろ！"}]}]}}]}]}]