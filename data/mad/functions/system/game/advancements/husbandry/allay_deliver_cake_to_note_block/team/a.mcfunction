#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 28 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @a[predicate=mad:player/team/a] AD_Husbandry_allay_deliver_cake_to_note_block 1
scoreboard players set #mad_team_a AD_Husbandry_allay_deliver_cake_to_note_block 1
scoreboard players add #mad_team_a HasAdvancements 1
scoreboard players operation #mad_team_a TimeLimit += #mad AddingTime
scoreboard players operation #mad_team_a Second += #mad AddingTime
advancement grant @a[predicate=mad:player/team/a] only minecraft:husbandry/allay_deliver_cake_to_note_block
tellraw @a[predicate=mad:player/team/a] ["",{"translate":"chat.type.advancement.challenge","with":[{"text":"赤チーム","color":"red","bold":true},{"translate":"[%s]","color":"dark_purple","with":[{"translate":"advancements.husbandry.allay_deliver_cake_to_note_block.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"dark_purple","with":[{"translate":"advancements.husbandry.allay_deliver_cake_to_note_block.title"},{"translate":"advancements.husbandry.allay_deliver_cake_to_note_block.description"}]}]}}]}]}]
