#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.21
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボード設定
$scoreboard players set @a[predicate=mad:player/team/$(team)] Advancements_Original_obtain_creeper_banner_pattern 1
scoreboard players add @s HasAdvancements 1
$scoreboard players set #mad_team_$(team) Advancements_Original_obtain_creeper_banner_pattern 1
$scoreboard players add #mad_team_$(team) HasAdvancements 1
$scoreboard players operation #mad_team_$(team) TimeLimit += #mad BonusTimeOfAdvancements
$scoreboard players operation #mad_team_$(team) Second += #mad BonusTimeOfAdvancements
$advancement grant @a[predicate=mad:player/team/$(team)] only mad:original/obtain_creeper_banner_pattern
$tellraw @a[predicate=mad:player/team/$(team)] ['',{translate:'chat.type.advancement.task',with:[{text:'$(text)チーム',color:'$(color)',bold:true},{translate:'[%s]',color:'green',with:[{translate:'どこかで見たような顔……',hover_event:{action:'show_text',value:[{translate:'%s\n%s',color:'green',with:[{translate:'どこかで見たような顔……'},{translate:'クリーパーの頭を手に入れて、クリーパー模様の旗の模様を作成する'}]}]}}]}]}]
