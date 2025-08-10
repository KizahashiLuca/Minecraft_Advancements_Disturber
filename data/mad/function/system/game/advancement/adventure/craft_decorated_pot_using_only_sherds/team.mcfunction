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
$scoreboard players set @a[predicate=mad:player/team/$(team)] Advancements_Adventure_craft_decorated_pot_using_only_sherds 1
scoreboard players add @s HasAdvancements 1
$scoreboard players set #mad_team_$(team) Advancements_Adventure_craft_decorated_pot_using_only_sherds 1
$scoreboard players add #mad_team_$(team) HasAdvancements 1
$scoreboard players operation #mad_team_$(team) TimeLimit += #mad BonusTimeOfAdvancements
$scoreboard players operation #mad_team_$(team) Second += #mad BonusTimeOfAdvancements
$advancement grant @a[predicate=mad:player/team/$(team)] only minecraft:adventure/craft_decorated_pot_using_only_sherds
$tellraw @a[predicate=mad:player/team/$(team)] ['',{translate:'chat.type.advancement.task',with:[{text:'$(text)チーム',color:'$(color)',bold:true},{translate:'[%s]',color:'green',with:[{translate:'advancements.adventure.craft_decorated_pot_using_only_sherds.title',hover_event:{action:'show_text',value:[{translate:'%s\n%s',color:'green',with:[{translate:'advancements.adventure.craft_decorated_pot_using_only_sherds.title'},{translate:'advancements.adventure.craft_decorated_pot_using_only_sherds.description'}]}]}}]}]}]
