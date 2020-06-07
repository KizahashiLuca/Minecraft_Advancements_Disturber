#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Jun 2020
## Version   : α-0.2
#####################################

## Summon minecart
execute as @e[type=minecraft:area_effect_cloud,tag=WorldSpawn] at @s run summon minecraft:chest_minecart ~ 140 ~ {LootTable:"mad:chest_minecart",Tags:["Minecart"]}
execute as @e[type=minecraft:chest_minecart,tag=Minecart] run function mad:system/ongame/minecart/teleport_minecart