#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 03 Jan 2021
## Version   : β-1.2
#####################################

## Send title messages
title @a title ["",{"text":"降下開始","color":"white"}]

## Send setting messages
tellraw @a [""]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a ["",{"text":" Minecraft","color":"red","bold":true}]
tellraw @a ["",{"text":"  Advancements","color":"red","bold":true}]
tellraw @a ["",{"text":"   Disturber β-1.2","color":"red","bold":true}]
tellraw @a ["",{"text":"  企画 : ","color":"green","bold":true},{"text":"ぽたーじゅ","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":"Twitter @potage00"},"clickEvent":{"action":"open_url","value":"http://twitter.com/potage00"}}]
tellraw @a ["",{"text":"  制作 : ","color":"green","bold":true},{"text":"KizahashiLuca","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":"Twitter @KizahashiLuca"},"clickEvent":{"action":"open_url","value":"http://twitter.com/KizahashiLuca"}}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a ["",{"text":"  降下を開始します。","color":"white"}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
execute if score #mad TeamNumber matches 1.. run tellraw @a ["",{"text":"赤チーム","color":"red","bold":true},{"text":" メンバー : ","color":"white"}]
execute if score #mad TeamNumber matches 1.. run tellraw @a ["",{"selector":"@a[team=TeamA]"}]
execute if score #mad TeamNumber matches 2.. run tellraw @a ["",{"text":"\n青チーム","color":"blue","bold":true},{"text":" メンバー : ","color":"white"}]
execute if score #mad TeamNumber matches 2.. run tellraw @a ["",{"selector":"@a[team=TeamB]"}]
execute if score #mad TeamNumber matches 3.. run tellraw @a ["",{"text":"\n黄チーム","color":"yellow","bold":true},{"text":" メンバー : ","color":"white"}]
execute if score #mad TeamNumber matches 3.. run tellraw @a ["",{"selector":"@a[team=TeamC]"}]
execute if score #mad TeamNumber matches 4.. run tellraw @a ["",{"text":"\n緑チーム","color":"green","bold":true},{"text":" メンバー : ","color":"white"}]
execute if score #mad TeamNumber matches 4.. run tellraw @a ["",{"selector":"@a[team=TeamD]"}]
execute if score #mad TeamNumber matches 5.. run tellraw @a ["",{"text":"\n紫チーム","color":"dark_purple","bold":true},{"text":" メンバー : ","color":"white"}]
execute if score #mad TeamNumber matches 5.. run tellraw @a ["",{"selector":"@a[team=TeamE]"}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a [""]

## Teleport
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run function mad:system/preparation_team/random_teleport
execute as @a[tag=Participant] at @s run tp @s ~ 160 ~

## Set respawn beacon
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run function mad:system/ongame/respawn_beacon/set_respawn_beacon_position

## Set time
time set noon

## Set scoreboards
scoreboard players set #mad Tick 0
scoreboard players set #mad Second 0

## Change phase
scoreboard players set #mad Phase 20