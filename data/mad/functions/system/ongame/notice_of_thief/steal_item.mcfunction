#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 03 Jan 2021
## Version   : β-1.2
#####################################

## Add tags
tag @s add DetectThief

execute if score #mad IsTeam matches 0 run tag @s add NotStealPlayer
execute if score #mad IsTeam matches 1 run function mad:system/ongame/notice_of_thief/add_tag_team

tag @r[tag=Participant,tag=!NotStealPlayer,scores={Phase=21,Death=0}] add StolenPlayer

## Set scoreboard
scoreboard players set @s ResultTmp 0

## Steal item
execute as @s[scores={Phase=21,Death=0}] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:structure_void",Count:1b},PickupDelay:0s}
execute as @s[scores={Phase=21,Death=0}] store success score @s ResultTmp run data modify entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:structure_void",Count:1b}},sort=nearest,limit=1] Item set from entity @p[tag=StolenPlayer] SelectedItem

execute as @s[scores={Phase=21,Death=0,ResultTmp=1}] run replaceitem entity @p[tag=StolenPlayer] weapon.mainhand air
execute as @s[scores={Phase=21,Death=0,ResultTmp=0}] run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:structure_void",Count:1b}},sort=nearest,limit=1]

## Send messages
tellraw @s[scores={Phase=21,Death=0,ResultTmp=1}] ["",{"text":"[怪盗予告]  ","color":"green"},{"selector":"@p[tag=StolenPlayer]"},{"text":" からアイテムを盗みました。","color":"green"}]
tellraw @s[scores={Phase=21,Death=0,ResultTmp=0}] ["",{"text":"[怪盗予告]  ","color":"green"},{"selector":"@p[tag=StolenPlayer]"},{"text":" の手持ちアイテムが無いため、アイテムを盗めませんでした。","color":"green"}]
tellraw @s[scores={Phase=22,Death=2..}] ["",{"text":"[怪盗予告] あなたが死亡しているため、アイテムを盗めませんでした。","color":"green"}]

execute as @s[scores={Phase=21,Death=0,ResultTmp=1}] run tellraw @a[tag=!DetectThief] ["",{"text":"[怪盗予告]  ","color":"green"},{"selector":"@p[tag=StolenPlayer]"},{"text":" からアイテムが盗まれました。","color":"green"}]
execute as @s[scores={Phase=21,Death=0,ResultTmp=0}] run tellraw @a[tag=!DetectThief] ["",{"text":"[怪盗予告]  ","color":"green"},{"selector":"@p[tag=StolenPlayer]"},{"text":" の手持ちアイテムが無いため、アイテムは盗まれませんでした。","color":"green"}]
execute as @s[scores={Phase=22,Death=2..}] run tellraw @a[tag=!DetectThief] ["",{"text":"[怪盗予告] 怪盗が死亡しているため、アイテムは盗まれませんでした。","color":"green"}]

## Set scoreboard
scoreboard players set @s StealItemPlayer 0
scoreboard players set @s ThiefTick 0
scoreboard players set @s ThiefSecond 5

## Remove a tag
tag @s remove DetectThief
tag @s remove SetThief
tag @a remove StolenPlayer