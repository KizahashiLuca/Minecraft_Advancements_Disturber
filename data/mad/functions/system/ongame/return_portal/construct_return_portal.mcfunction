#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Create respawn beacon
fill ~-1 ~-1 ~ ~1 ~-1 ~ minecraft:bedrock
fill ~ ~-1 ~-1 ~ ~-1 ~1 minecraft:bedrock
setblock ~ ~-2 ~ minecraft:bedrock
setblock ~ ~-1 ~ minecraft:end_portal

## message
tellraw @a[distance=..5] ["",{"text":"[帰還装置] 帰還ポータルを設置しました。","color":"green"}]