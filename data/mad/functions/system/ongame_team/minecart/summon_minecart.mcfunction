#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Delete minecart
execute as @e[type=minecraft:chest_minecart,tag=Minecart] run kill @s

## Summon minecart
execute at @e[type=minecraft:area_effect_cloud,tag=Minecart] run summon minecraft:chest_minecart ~ 160 ~ {LootTable:"mad:ongame/chest_minecart_team",Invulnerable:1b,Tags:["Minecart"]}

## Send messages
execute as @e[type=minecraft:chest_minecart,tag=Minecart] store result score @s PosX align x run data get entity @s Pos[0] 1
execute as @e[type=minecraft:chest_minecart,tag=Minecart] store result score @s PosZ align z run data get entity @s Pos[2] 1
execute as @e[type=minecraft:chest_minecart,tag=Minecart] run tellraw @a[gamemode=survival] ["",{"text":"[支援物資] 物資が ","color":"green"},{"translate":"[%s, 160, %s]","with":[{"score":{"name":"@s","objective":"PosX"}},{"score":{"name":"@s","objective":"PosZ"}}],"color":"green"},{"text":" に投下されました。","color":"green"}]

execute if score #mad TeamNumber matches 1.. if score #mad DeadTeamA matches 1 as @e[type=minecraft:chest_minecart,tag=Minecart] run tellraw @a[team=TeamA] ["",{"text":"[支援物資] 物資が ","color":"green"},{"translate":"[%s, 160, %s]","with":[{"score":{"name":"@s","objective":"PosX"}},{"score":{"name":"@s","objective":"PosZ"}}],"color":"green","hoverEvent":{"action":"show_text","value":"クリックしてテレポート"},"clickEvent":{"action":"run_command","value":"/trigger TeleportMessage set 1"}},{"text":" に投下されました。","color":"green"}]
execute if score #mad TeamNumber matches 2.. if score #mad DeadTeamB matches 1 as @e[type=minecraft:chest_minecart,tag=Minecart] run tellraw @a[team=TeamB] ["",{"text":"[支援物資] 物資が ","color":"green"},{"translate":"[%s, 160, %s]","with":[{"score":{"name":"@s","objective":"PosX"}},{"score":{"name":"@s","objective":"PosZ"}}],"color":"green","hoverEvent":{"action":"show_text","value":"クリックしてテレポート"},"clickEvent":{"action":"run_command","value":"/trigger TeleportMessage set 1"}},{"text":" に投下されました。","color":"green"}]
execute if score #mad TeamNumber matches 3.. if score #mad DeadTeamC matches 1 as @e[type=minecraft:chest_minecart,tag=Minecart] run tellraw @a[team=TeamC] ["",{"text":"[支援物資] 物資が ","color":"green"},{"translate":"[%s, 160, %s]","with":[{"score":{"name":"@s","objective":"PosX"}},{"score":{"name":"@s","objective":"PosZ"}}],"color":"green","hoverEvent":{"action":"show_text","value":"クリックしてテレポート"},"clickEvent":{"action":"run_command","value":"/trigger TeleportMessage set 1"}},{"text":" に投下されました。","color":"green"}]
execute if score #mad TeamNumber matches 4.. if score #mad DeadTeamD matches 1 as @e[type=minecraft:chest_minecart,tag=Minecart] run tellraw @a[team=TeamD] ["",{"text":"[支援物資] 物資が ","color":"green"},{"translate":"[%s, 160, %s]","with":[{"score":{"name":"@s","objective":"PosX"}},{"score":{"name":"@s","objective":"PosZ"}}],"color":"green","hoverEvent":{"action":"show_text","value":"クリックしてテレポート"},"clickEvent":{"action":"run_command","value":"/trigger TeleportMessage set 1"}},{"text":" に投下されました。","color":"green"}]
execute if score #mad TeamNumber matches 5.. if score #mad DeadTeamE matches 1 as @e[type=minecraft:chest_minecart,tag=Minecart] run tellraw @a[team=TeamE] ["",{"text":"[支援物資] 物資が ","color":"green"},{"translate":"[%s, 160, %s]","with":[{"score":{"name":"@s","objective":"PosX"}},{"score":{"name":"@s","objective":"PosZ"}}],"color":"green","hoverEvent":{"action":"show_text","value":"クリックしてテレポート"},"clickEvent":{"action":"run_command","value":"/trigger TeleportMessage set 1"}},{"text":" に投下されました。","color":"green"}]

## Set scoreboard
scoreboard players set #mad SummonMinecart 1