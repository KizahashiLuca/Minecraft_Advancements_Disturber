#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Mar 2021
## Version   : β-1.2.3
#####################################

## Clear book on lectern
execute if block ~ ~ ~ minecraft:lectern[facing=north] run setblock ~ ~ ~ minecraft:lectern[facing=north] replace
execute if block ~ ~ ~ minecraft:lectern[facing=east] run setblock ~ ~ ~ minecraft:lectern[facing=east] replace
execute if block ~ ~ ~ minecraft:lectern[facing=west] run setblock ~ ~ ~ minecraft:lectern[facing=west] replace
execute if block ~ ~ ~ minecraft:lectern[facing=south] run setblock ~ ~ ~ minecraft:lectern[facing=south] replace
execute if score #mad IsTeam matches 0 run loot spawn ~ ~ ~ loot mad:ongame/chest_minecart_item/transmitter_individual
execute if score #mad IsTeam matches 1 run loot spawn ~ ~ ~ loot mad:ongame/chest_minecart_item/transmitter_team

kill @s