#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.21
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボード設定
scoreboard players set @s Advancements_Adventure_ol_betsy 1
scoreboard players add @s HasAdvancements 1
scoreboard players operation @s TimeLimit += #mad BonusTimeOfAdvancements
scoreboard players operation @s Second += #mad BonusTimeOfAdvancements
tellraw @s ['',{translate:'chat.type.advancement.task',with:[{selector:'@s'},{translate:'[%s]',color:'green',with:[{translate:'advancements.adventure.ol_betsy.title',hover_event:{action:'show_text',value:[{translate:'%s\n%s',color:'green',with:[{translate:'advancements.adventure.ol_betsy.title'},{translate:'advancements.adventure.ol_betsy.description'}]}]}}]}]}]
