#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Jun 2020
## Version   : α-0.2
#####################################

## Set scoreboard
scoreboard players set @s AD_mc_enter_end 1
scoreboard players add @s HasAdvancements 1
scoreboard players add @s TimeLimit 100
scoreboard players add @s Second 100
tellraw @s ["",{"translate":"chat.type.advancement.task","with":[{"selector":"@s"},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.story.enter_the_end.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.story.enter_the_end.title"},{"translate":"advancements.story.enter_the_end.description"}]}]}}]}]}]