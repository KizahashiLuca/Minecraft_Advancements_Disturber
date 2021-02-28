#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Mar 2021
## Version   : β-1.2.3
#####################################

## Delete minecart
execute as @e[type=minecraft:chest_minecart,tag=Minecart] run kill @s

## Summon minecart
scoreboard players operation @e[type=minecraft:chest_minecart,tag=Minecart] IsTeam = #mad IsTeam
scoreboard players operation @e[type=minecraft:chest_minecart,tag=Minecart] WorldBorderEnd = #mad WorldBorderEnd
execute at @e[type=minecraft:area_effect_cloud,tag=Minecart] run summon minecraft:chest_minecart ~ 160 ~ {LootTable:"mad:ongame/chest_minecart",Invulnerable:1b,Tags:["Minecart"]}

## Send messages
execute as @e[type=minecraft:chest_minecart,tag=Minecart] store result score @s PosX align x run data get entity @s Pos[0] 1
execute as @e[type=minecraft:chest_minecart,tag=Minecart] store result score @s PosZ align z run data get entity @s Pos[2] 1
execute as @e[type=minecraft:chest_minecart,tag=Minecart] run tellraw @a ["",{"text":"[支援物資] 物資が ","color":"green"},{"translate":"[%s, 160, %s]","with":[{"score":{"name":"@s","objective":"PosX"}},{"score":{"name":"@s","objective":"PosZ"}}],"color":"green","hoverEvent":{"action":"show_text","value":"スペクテイター時\nクリックしてテレポート"},"clickEvent":{"action":"run_command","value":"/trigger TeleportMessage set 1"}},{"text":" に投下されました。","color":"green"}]

## Set scoreboard
scoreboard players set #mad SummonMinecart 1

## Kill cloud
kill @e[type=minecraft:area_effect_cloud,tag=Minecart]