#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 13 Sep 2022
## Version   : β-2.0.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Loot
loot spawn ~ ~ ~ loot mad:system/game/minecart/items/return_portal

## message
execute if predicate mad:dimension/overworld run tellraw @a[distance=..5] ["",{"text":"[帰還装置] オーバーワールドには帰還ポータルを設置できません。","color":"green","bold":false,"italic":false}]
execute if predicate mad:dimension/the_nether run tellraw @a[distance=..5] ["",{"text":"[帰還装置] ネザーには帰還ポータルを設置できません。","color":"green","bold":false,"italic":false}]