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
scoreboard players set @s Advancements_Original_kill_elder_guardian 1
scoreboard players add @s HasAdvancements 1
scoreboard players operation @s TimeLimit += #mad BonusTimeOfAdvancements
scoreboard players operation @s Second += #mad BonusTimeOfAdvancements
tellraw @s ['',{translate:'chat.type.advancement.challenge',with:[{selector:'@s'},{translate:'[%s]',color:'dark_purple',with:[{translate:'主の始末',hover_event:{action:'show_text',value:[{translate:'%s\n%s',color:'dark_purple',with:[{translate:'主の始末'},{translate:'エルダーガーディアンを倒す'}]}]}}]}]}]
