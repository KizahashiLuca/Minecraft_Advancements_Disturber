#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 13 Sep 2022
## Version   : β-2.0.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @a[predicate=mad:player/team/d] AD_Husbandry_allay_deliver_cake_to_note_block 1
scoreboard players set #mad_team_d AD_Husbandry_allay_deliver_cake_to_note_block 1
scoreboard players add #mad_team_d HasAdvancements 1
scoreboard players operation #mad_team_d TimeLimit += #mad AddingTime
scoreboard players operation #mad_team_d Second += #mad AddingTime
advancement grant @a[predicate=mad:player/team/d] only minecraft:husbandry/allay_deliver_cake_to_note_block
tellraw @a[predicate=mad:player/team/d] ["",{"translate":"chat.type.advancement.challenge","with":[{"text":"緑チーム","color":"green","bold":true},{"translate":"[%s]","color":"dark_purple","with":[{"translate":"advancements.husbandry.allay_deliver_cake_to_note_block.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"dark_purple","with":[{"translate":"advancements.husbandry.allay_deliver_cake_to_note_block.title"},{"translate":"advancements.husbandry.allay_deliver_cake_to_note_block.description"}]}]}}]}]}]
