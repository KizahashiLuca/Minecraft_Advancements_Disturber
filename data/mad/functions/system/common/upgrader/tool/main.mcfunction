#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Scoreboard
scoreboard players set @s UseToolUpgrader 0

## Detect none
execute as @s[predicate=mad:system/common/upgrader/tool/none] run function mad:system/common/upgrader/tool/none

## Detect axe
execute as @s[predicate=mad:system/common/upgrader/tool/axe/main] run function mad:system/common/upgrader/tool/axe

## Detect axe
execute as @s[predicate=mad:system/common/upgrader/tool/hoe/main] run function mad:system/common/upgrader/tool/hoe

## Detect axe
execute as @s[predicate=mad:system/common/upgrader/tool/pickaxe/main] run function mad:system/common/upgrader/tool/pickaxe

## Detect axe
execute as @s[predicate=mad:system/common/upgrader/tool/shovel/main] run function mad:system/common/upgrader/tool/shovel

## Detect axe
execute as @s[predicate=mad:system/common/upgrader/tool/sword/main] run function mad:system/common/upgrader/tool/sword

## Kill turtle
kill @e[predicate=mad:system/common/upgrader/tool/turtle,sort=nearest,limit=1]

## Play sound
playsound minecraft:block.anvil.destroy block @s ~ ~ ~ 1.0 1.0 1.0

## Send message
tellraw @s ["",{"text":"[道具改修] ツールをアップグレードしました。","color":"green","bold":false,"italic":false}]