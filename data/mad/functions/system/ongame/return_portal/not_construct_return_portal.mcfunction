#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Loot
loot spawn ~ ~ ~ loot mad:ongame/chest_minecart_item/return_portal

## message
execute if predicate mad:ongame/dimension/overworld run tellraw @a[distance=..5] ["",{"text":"[帰還装置] オーバーワールドには帰還ポータルを設置できません。","color":"green"}]
execute if predicate mad:ongame/dimension/the_nether run tellraw @a[distance=..5] ["",{"text":"[帰還装置] ネザーには帰還ポータルを設置できません。","color":"green"}]