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

## Add tags
tag @s add DetectEmergencyCall

execute as @s[team=TeamA] run tag @a[team=TeamA,tag=!DetectEmergencyCall] add EmergencyCallee
execute as @s[team=TeamB] run tag @a[team=TeamB,tag=!DetectEmergencyCall] add EmergencyCallee
execute as @s[team=TeamC] run tag @a[team=TeamC,tag=!DetectEmergencyCall] add EmergencyCallee
execute as @s[team=TeamD] run tag @a[team=TeamD,tag=!DetectEmergencyCall] add EmergencyCallee
execute as @s[team=TeamE] run tag @a[team=TeamE,tag=!DetectEmergencyCall] add EmergencyCallee

## Teleport
tp @a[tag=EmergencyCallee] @s

## Message
tellraw @s ["",{"text":"[緊急招集] チームメンバーを緊急招集しました。","color":"green"}]
tellraw @a[tag=EmergencyCallee] ["",{"text":"[緊急招集]  ","color":"green"},{"selector":"@s","color":"green"},{"text":" から緊急招集を受けました。","color":"green"}]

## Kill zombie_horse
data modify entity @e[type=minecraft:zombie_horse,nbt={CustomName:'{"extra":[{"bold":false,"italic":false,"color":"light_purple","text":"緊急招集"}],"text":""}'},sort=nearest,limit=1] CustomNameVisible set value 0b
effect give @e[type=minecraft:zombie_horse,nbt={CustomName:'{"extra":[{"bold":false,"italic":false,"color":"light_purple","text":"緊急招集"}],"text":""}'},sort=nearest,limit=1] minecraft:invisibility 100000 1 true
kill @e[type=minecraft:zombie_horse,nbt={CustomName:'{"extra":[{"bold":false,"italic":false,"color":"light_purple","text":"緊急招集"}],"text":""}'},sort=nearest,limit=1]

## Remove tags
tag @a remove EmergencyCallee
tag @s remove DetectEmergencyCall