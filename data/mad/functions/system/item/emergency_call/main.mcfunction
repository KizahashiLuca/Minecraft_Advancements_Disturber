#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @s UseEmergencyCall 0

## Add tags
tag @s add MAD_DetectEmergencyCall
execute if predicate mad:phase/trial run tag @a[predicate=mad:player/participant] add MAD_EmergencyCallee
execute as @s[predicate=mad:player/alive/a] run tag @a[predicate=mad:system/item/emergency_call/detect_callee/a] add MAD_EmergencyCallee
execute as @s[predicate=mad:player/alive/b] run tag @a[predicate=mad:system/item/emergency_call/detect_callee/b] add MAD_EmergencyCallee
execute as @s[predicate=mad:player/alive/c] run tag @a[predicate=mad:system/item/emergency_call/detect_callee/c] add MAD_EmergencyCallee
execute as @s[predicate=mad:player/alive/d] run tag @a[predicate=mad:system/item/emergency_call/detect_callee/d] add MAD_EmergencyCallee

## Teleport
tp @a[predicate=mad:system/item/emergency_call/emergency_callee] @s

## Playsound
execute at @s run playsound minecraft:item.goat_horn.sound.2 master @s ~ ~ ~ 1 1 1

## Message
tellraw @s ["",{"text":"[緊急招集] チームメンバーを緊急招集しました。","color":"green"}]
tellraw @a[predicate=mad:system/item/emergency_call/emergency_callee] ["",{"text":"[緊急招集]  ","color":"green"},{"selector":"@s","color":"green"},{"text":" から緊急招集を受けました。","color":"green"}]

## Remove tags
tag @a remove MAD_EmergencyCallee
tag @a remove MAD_DetectEmergencyCall

## Kill zombie_horse
kill @e[predicate=mad:system/item/emergency_call/monster_egg,sort=nearest,limit=1]