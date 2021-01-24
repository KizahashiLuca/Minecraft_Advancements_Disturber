#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Loot
loot spawn ~ ~ ~ loot mad:ongame/chest_minecart_item/return_portal

## message
execute if predicate mad:items/dimensions/overworld run tellraw @a[distance=..5] ["",{"text":"[帰還装置] オーバーワールドには帰還ポータルを設置できません。","color":"green"}]
execute if predicate mad:items/dimensions/the_nether run tellraw @a[distance=..5] ["",{"text":"[帰還装置] ネザーには帰還ポータルを設置できません。","color":"green"}]