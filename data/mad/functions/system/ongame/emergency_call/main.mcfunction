#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Scoreboard
scoreboard players set @s UseEmergencyCall 0

## Teleport
tp @a[team=TeamA] @s[team=TeamA]
tp @a[team=TeamB] @s[team=TeamB]
tp @a[team=TeamC] @s[team=TeamC]
tp @a[team=TeamD] @s[team=TeamD]
tp @a[team=TeamE] @s[team=TeamE]

## Kill zombie_horse
data modify entity @e[type=minecraft:zombie_horse,nbt={CustomName:'{"extra":[{"bold":false,"italic":false,"color":"light_purple","text":"緊急招集"}],"text":""}'},sort=nearest,limit=1] CustomNameVisible set value 0b
effect give @e[type=minecraft:zombie_horse,nbt={CustomName:'{"extra":[{"bold":false,"italic":false,"color":"light_purple","text":"緊急招集"}],"text":""}'},sort=nearest,limit=1] minecraft:invisibility 100000 1 true
kill @e[type=minecraft:zombie_horse,nbt={CustomName:'{"extra":[{"bold":false,"italic":false,"color":"light_purple","text":"緊急招集"}],"text":""}'},sort=nearest,limit=1]

## Message
tellraw @s ["",{"text":"[緊急招集] チームメンバーを緊急招集しました。","color":"green"}]
function mad:system/ongame/emergency_call/message_emergency_call