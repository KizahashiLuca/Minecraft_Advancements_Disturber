#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Delete minecart
kill @e[type=minecraft:chest_minecart,tag=Minecart]

## Summon minecart
execute at @e[type=minecraft:area_effect_cloud,tag=Minecart] run summon minecraft:chest_minecart ~ 320 ~ {Invulnerable:1b,Tags:["Minecart"]}
execute if predicate mad:gamerules/minecart/one_player_no_end run data modify entity @e[type=minecraft:chest_minecart,tag=Minecart,limit=1] LootTable set value "mad:ongame/chest_minecart/one_player_no_end"
execute if predicate mad:gamerules/minecart/one_player_with_end run data modify entity @e[type=minecraft:chest_minecart,tag=Minecart,limit=1] LootTable set value "mad:ongame/chest_minecart/one_player_with_end"
execute if predicate mad:gamerules/minecart/individual_no_end run data modify entity @e[type=minecraft:chest_minecart,tag=Minecart,limit=1] LootTable set value "mad:ongame/chest_minecart/individual_no_end"
execute if predicate mad:gamerules/minecart/individual_with_end run data modify entity @e[type=minecraft:chest_minecart,tag=Minecart,limit=1] LootTable set value "mad:ongame/chest_minecart/individual_with_end"
execute if predicate mad:gamerules/minecart/team_no_end run data modify entity @e[type=minecraft:chest_minecart,tag=Minecart,limit=1] LootTable set value "mad:ongame/chest_minecart/team_no_end"
execute if predicate mad:gamerules/minecart/team_with_end run data modify entity @e[type=minecraft:chest_minecart,tag=Minecart,limit=1] LootTable set value "mad:ongame/chest_minecart/team_with_end"

## Send messages
execute as @e[type=minecraft:chest_minecart,tag=Minecart] store result score @s PosX align x run data get entity @s Pos[0] 1
execute as @e[type=minecraft:chest_minecart,tag=Minecart] store result score @s PosZ align z run data get entity @s Pos[2] 1
execute as @e[type=minecraft:chest_minecart,tag=Minecart] run tellraw @a ["",{"text":"[支援物資] 物資が ","color":"green"},{"translate":"[%s, 320, %s]","with":[{"score":{"name":"@s","objective":"PosX"}},{"score":{"name":"@s","objective":"PosZ"}}],"color":"green","hoverEvent":{"action":"show_text","value":"スペクテイター時\nクリックしてテレポート"},"clickEvent":{"action":"run_command","value":"/trigger TeleportMinecart set 1"}},{"text":" に投下されました。","color":"green"}]

## Set scoreboard
scoreboard players set #mad SummonMinecart 1

## Kill cloud
kill @e[type=minecraft:area_effect_cloud,tag=Minecart]