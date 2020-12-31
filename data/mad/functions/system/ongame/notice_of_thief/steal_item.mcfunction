#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Add tags
tag @s add DetectThief

execute if score #mad IsTeam matches 0 run tag @s add NotStealPlayer
execute if score #mad IsTeam matches 1 run function mad:system/ongame/notice_of_thief/add_tag_team

tag @r[scores={Phase=21,Death=0},tag=!NotStealPlayer] add StolenPlayer

## Steal item
execute as @s[scores={Phase=21,Death=0}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:structure_void",Count:1b}}
execute as @s[scores={Phase=21,Death=0}] run data modify entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:structure_void",Count:1b}},sort=nearest,limit=1] Item set from entity @p[tag=StolenPlayer] SelectedItem
execute as @s[scores={Phase=21,Death=0}] run replaceitem entity @p[tag=StolenPlayer] weapon.mainhand air

## Send messages
tellraw @s[scores={Phase=21,Death=0}] ["",{"text":"[怪盗予告]  ","color":"green"},{"selector":"@p[tag=StolenPlayer]"},{"text":" からアイテムを盗みました。","color":"green"}]
tellraw @s[scores={Phase=22,Death=2..}] ["",{"text":"[怪盗予告] あなたが死亡しているため、アイテムを盗めませんでした。","color":"green"}]

execute as @s[scores={Phase=21,Death=0}] run tellraw @a[tag=!DetectThief] ["",{"text":"[怪盗予告]  ","color":"green"},{"selector":"@p[tag=StolenPlayer]"},{"text":" からアイテムが盗まれました。","color":"green"}]
execute as @s[scores={Phase=22,Death=2..}] run tellraw @a[tag=!DetectThief] ["",{"text":"[怪盗予告] 怪盗が死亡しているため、アイテムは盗まれませんでした。","color":"green"}]

## Set scoreboard
scoreboard players set @s StealItemPlayer 0
scoreboard players set @s ThiefTick 0
scoreboard players set @s ThiefSecond 5

## Remove a tag
tag @s remove DetectThief
tag @s remove SetThief
tag @a remove StolenPlayer