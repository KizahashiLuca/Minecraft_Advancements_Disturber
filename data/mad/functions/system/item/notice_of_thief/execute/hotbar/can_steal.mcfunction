#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Randomize
scoreboard players set #mad RandomMax 9
scoreboard players operation #mad RandomSeed *= #mad RandomMultiplier
scoreboard players operation #mad RandomSeed %= #mad RandomModder
scoreboard players operation #mad RandomAnswer = #mad RandomSeed
scoreboard players operation #mad RandomAnswer %= #mad RandomMax

## Set hotbar
execute if predicate mad:system/item/notice_of_thief/hotbar/hotbar_0 run function mad:system/item/notice_of_thief/execute/hotbar/hotbar_0
execute if predicate mad:system/item/notice_of_thief/hotbar/hotbar_1 run function mad:system/item/notice_of_thief/execute/hotbar/hotbar_1
execute if predicate mad:system/item/notice_of_thief/hotbar/hotbar_2 run function mad:system/item/notice_of_thief/execute/hotbar/hotbar_2
execute if predicate mad:system/item/notice_of_thief/hotbar/hotbar_3 run function mad:system/item/notice_of_thief/execute/hotbar/hotbar_3
execute if predicate mad:system/item/notice_of_thief/hotbar/hotbar_4 run function mad:system/item/notice_of_thief/execute/hotbar/hotbar_4
execute if predicate mad:system/item/notice_of_thief/hotbar/hotbar_5 run function mad:system/item/notice_of_thief/execute/hotbar/hotbar_5
execute if predicate mad:system/item/notice_of_thief/hotbar/hotbar_6 run function mad:system/item/notice_of_thief/execute/hotbar/hotbar_6
execute if predicate mad:system/item/notice_of_thief/hotbar/hotbar_7 run function mad:system/item/notice_of_thief/execute/hotbar/hotbar_7
execute if predicate mad:system/item/notice_of_thief/hotbar/hotbar_8 run function mad:system/item/notice_of_thief/execute/hotbar/hotbar_8

## loop
execute as @s[predicate=mad:system/item/notice_of_thief/result/failure] run function mad:system/item/notice_of_thief/execute/hotbar/can_steal