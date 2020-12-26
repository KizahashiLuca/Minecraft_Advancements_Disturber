#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Set scoreboard
scoreboard players set @s AD_pg_tsutenkaku 1
scoreboard players add @s HasAdvancements 1
scoreboard players operation @s TimeLimit += #mad AddingTime
scoreboard players operation @s Second += #mad AddingTime
tellraw @s ["",{"translate":"chat.type.advancement.challenge","with":[{"selector":"@s"},{"translate":"[%s]","color":"dark_purple","with":[{"text":"通天閣からの眺め","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"dark_purple","with":[{"text":"通天閣からの眺め"},{"text":"海抜3m+108mの高さ\n(Y=174)に達する"}]}]}}]}]}]
