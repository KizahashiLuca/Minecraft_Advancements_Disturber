#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @a[team=TeamC] AD_pg_kill_phant 1
scoreboard players add @a[team=TeamC] HasAdvancements 1
scoreboard players operation @p[team=TeamC,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @p[team=TeamC,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamC] only mad:potage00/no_bed_no_life
tellraw @a[team=TeamC] ["",{"translate":"chat.type.advancement.task","with":[{"text":"黄チーム","color":"yellow","bold":true},{"translate":"[%s]","color":"green","with":[{"text":"NO BED NO LIFE","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"text":"NO BED NO LIFE"},{"text":"ファントムを倒す"}]}]}}]}]}]
