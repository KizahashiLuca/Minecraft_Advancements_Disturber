#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 04 Dec 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Create respawn beacon
fill ~-1 ~-1 ~ ~1 ~-1 ~ minecraft:bedrock
fill ~ ~-1 ~-1 ~ ~-1 ~1 minecraft:bedrock
setblock ~ ~-2 ~ minecraft:bedrock
setblock ~ ~-1 ~ minecraft:end_portal

## message
tellraw @a[distance=..5] ["",{"text":"[帰還装置] 帰還ポータルを設置しました。","color":"green"}]