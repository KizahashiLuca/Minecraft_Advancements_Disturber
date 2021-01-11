#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

## Set scoreboard
scoreboard players set @s UseNoticeOfThief 0

## Add a tag
tag @s add DetectThief
tag @s add SetThief

## Send messages
tellraw @s ["",{"text":"[怪盗予告] 全員に怪盗予告しました。5秒後に誰かからアイテムを盗みます。","color":"green"}]
execute if score #mad IsTeam matches 0 run tellraw @a[tag=!DetectThief] ["",{"text":"[怪盗予告] 怪盗予告が誰かから出されました。","color":"green"}]
execute if score #mad IsTeam matches 1 run function mad:system/ongame/notice_of_thief/message_notice

## Set scoreboard
scoreboard players set @s ThiefTick 0
scoreboard players set @s ThiefSecond 5

## Remove a tag
tag @s remove DetectThief

## Kill rabbit
data modify entity @e[type=minecraft:rabbit,nbt={CustomName:'{"extra":[{"bold":false,"italic":false,"color":"light_purple","text":"怪盗予告"}],"text":""}'},sort=nearest,limit=1] CustomNameVisible set value 0b
effect give @e[type=minecraft:rabbit,nbt={CustomName:'{"extra":[{"bold":false,"italic":false,"color":"light_purple","text":"怪盗予告"}],"text":""}'},sort=nearest,limit=1] minecraft:invisibility 100000 1 true
kill @e[type=minecraft:rabbit,nbt={CustomName:'{"extra":[{"bold":false,"italic":false,"color":"light_purple","text":"怪盗予告"}],"text":""}'},sort=nearest,limit=1]