#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @s AD_ac_diamonds2u 1
scoreboard players add @s HasAdvancements 1
scoreboard players operation @s TimeLimit += #mad AddingTime
scoreboard players operation @s Second += #mad AddingTime
tellraw @s ["",{"translate":"chat.type.advancement.task","with":[{"selector":"@s"},{"translate":"[%s]","color":"green","with":[{"text":"ダイヤモンドをあなたに！","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"text":"ダイヤモンドをあなたに！"},{"text":"モブにダイヤモンドを拾わせる"}]}]}}]}]}]
