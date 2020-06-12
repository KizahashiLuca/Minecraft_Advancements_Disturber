#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Set scoreboard
scoreboard players set @s AD_ed_legitate 1
scoreboard players add @s HasAdvancements 1
scoreboard players add @s TimeLimit 100
scoreboard players add @s Second 100
tellraw @s ["",{"translate":"chat.type.advancement.challenge","with":[{"selector":"@s"},{"translate":"[%s]","color":"dark_purple","with":[{"translate":"advancements.end.levitate.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"dark_purple","with":[{"translate":"advancements.end.levitate.title"},{"translate":"advancements.end.levitate.description"}]}]}}]}]}]
