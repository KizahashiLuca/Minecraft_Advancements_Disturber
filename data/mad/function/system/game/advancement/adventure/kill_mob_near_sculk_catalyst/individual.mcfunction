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
scoreboard players set @s Advancements_Adventure_kill_mob_near_sculk_catalyst 1
scoreboard players add @s HasAdvancements 1
scoreboard players operation @s TimeLimit += #mad BonusTimeOfAdvancements
scoreboard players operation @s Second += #mad BonusTimeOfAdvancements
tellraw @s ['',{translate:'chat.type.advancement.challenge',with:[{selector:'@s'},{translate:'[%s]',color:'dark_purple',with:[{translate:'advancements.adventure.kill_mob_near_sculk_catalyst.title',hover_event:{action:'show_text',value:[{translate:'%s\n%s',color:'dark_purple',with:[{translate:'advancements.adventure.kill_mob_near_sculk_catalyst.title'},{translate:'advancements.adventure.kill_mob_near_sculk_catalyst.description'}]}]}}]}]}]
