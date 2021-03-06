#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## explode minecart
playsound minecraft:entity.firework_rocket.twinkle ambient @a
particle minecraft:explosion ~ ~ ~ 1 1 1 0.5 10 force @a
kill @s

## give time randomly
tag @p[predicate=mad:ongame/player/participant_alive,sort=nearest] add GiveTimeRandomly
execute if entity @p[tag=GiveTimeRandomly,team=TeamA] run function mad:system/ongame/minecart/bonus_time/team_a
execute if entity @p[tag=GiveTimeRandomly,team=TeamB] run function mad:system/ongame/minecart/bonus_time/team_b
execute if entity @p[tag=GiveTimeRandomly,team=TeamC] run function mad:system/ongame/minecart/bonus_time/team_c
execute if entity @p[tag=GiveTimeRandomly,team=TeamD] run function mad:system/ongame/minecart/bonus_time/team_d
execute if entity @p[tag=GiveTimeRandomly,team=TeamE] run function mad:system/ongame/minecart/bonus_time/team_e
execute if score #mad IsTeam matches 0 if entity @p[tag=GiveTimeRandomly] run function mad:system/ongame/minecart/bonus_time/individual
tag @a remove GiveTimeRandomly

## next summon decided
scoreboard players operation #mad SecondSummon = #mad SummonInterval
execute as @e[type=minecraft:area_effect_cloud,tag=Minecart] run tellraw @a ["",{"text":"[支援物資] 物資が ","color":"green"},{"score":{"name":"#mad","objective":"SecondSummon"},"color":"green"},{"text":" 秒後に ","color":"green"},{"translate":"[%s, 160, %s]","with":[{"score":{"name":"@s","objective":"PosX"}},{"score":{"name":"@s","objective":"PosZ"}}],"color":"green","hoverEvent":{"action":"show_text","value":"スペクテイター時\nクリックしてテレポート"},"clickEvent":{"action":"run_command","value":"/trigger TeleportMessage set 1"}},{"text":" に投下されます。","color":"green"}]
scoreboard players operation #mad SecondSummon += #mad Second