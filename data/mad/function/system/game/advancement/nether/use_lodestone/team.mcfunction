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
$scoreboard players set @a[predicate=mad:player/team/$(team)] Advancements_Nether_use_lodestone 1
scoreboard players add @s HasAdvancements 1
$scoreboard players set #mad_team_$(team) Advancements_Nether_use_lodestone 1
$scoreboard players add #mad_team_$(team) HasAdvancements 1
$scoreboard players operation #mad_team_$(team) TimeLimit += #mad BonusTimeOfAdvancements
$scoreboard players operation #mad_team_$(team) Second += #mad BonusTimeOfAdvancements
$advancement grant @a[predicate=mad:player/team/$(team)] only minecraft:nether/use_lodestone
$tellraw @a[predicate=mad:player/team/$(team)] ['',{translate:'chat.type.advancement.task',with:[{text:'$(text)チーム',color:'$(color)',bold:true},{translate:'[%s]',color:'green',with:[{translate:'advancements.nether.use_lodestone.title',hover_event:{action:'show_text',value:[{translate:'%s\n%s',color:'green',with:[{translate:'advancements.nether.use_lodestone.title'},{translate:'advancements.nether.use_lodestone.description'}]}]}}]}]}]
