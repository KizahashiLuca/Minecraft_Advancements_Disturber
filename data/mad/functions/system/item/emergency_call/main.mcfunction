#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 28 Aug 2022
## Version   : β-2.0
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
execute as @s[predicate=mad:player/alive/e] run tag @a[predicate=mad:system/item/emergency_call/detect_callee/e] add MAD_EmergencyCallee

## Teleport
tp @a[predicate=mad:system/item/emergency_call/emergency_callee] @s

## Message
tellraw @s ["",{"text":"[緊急招集] チームメンバーを緊急招集しました。","color":"green"}]
tellraw @a[predicate=mad:system/item/emergency_call/emergency_callee] ["",{"text":"[緊急招集]  ","color":"green"},{"selector":"@s","color":"green"},{"text":" から緊急招集を受けました。","color":"green"}]

## Remove tags
tag @a remove MAD_EmergencyCallee
tag @a remove MAD_DetectEmergencyCall

## Kill zombie_horse
kill @e[predicate=mad:system/item/emergency_call/monster_egg,sort=nearest,limit=1]