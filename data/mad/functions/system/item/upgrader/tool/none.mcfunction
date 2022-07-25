#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Give item
loot give @s loot mad:system/game/minecart/items/tool_upgrader

## Play sound
playsound minecraft:block.anvil.break block @s ~ ~ ~ 1.0 1.0 1.0

## Send message
tellraw @s ["",{"text":"[道具改修] ツールをアップグレードできませんでした。","color":"green"}]
