#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Replace item 
execute as @s[predicate=mad:system/common/upgrader/tool/shovel/have_wooden] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone_shovel",Count:1b},Tags:["MAD_DetectShovelUpgrader"]}
execute as @s[predicate=mad:system/common/upgrader/tool/shovel/have_stone] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:golden_shovel",Count:1b},Tags:["MAD_DetectShovelUpgrader"]}
execute as @s[predicate=mad:system/common/upgrader/tool/shovel/have_golden] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_shovel",Count:1b},Tags:["MAD_DetectShovelUpgrader"]}
execute as @s[predicate=mad:system/common/upgrader/tool/shovel/have_iron] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:diamond_shovel",Count:1b},Tags:["MAD_DetectShovelUpgrader"]}
execute as @s[predicate=mad:system/common/upgrader/tool/shovel/have_diamond] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherite_shovel",Count:1b},Tags:["MAD_DetectShovelUpgrader"]}
execute as @s[predicate=mad:system/common/upgrader/tool/shovel/have_netherite] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherite_shovel",Count:1b},Tags:["MAD_DetectShovelUpgrader"]}

## Merge nbt tag
data modify entity @e[predicate=mad:system/common/upgrader/tool/shovel,sort=nearest,limit=1] Item.tag set from entity @s[predicate=mad:system/common/upgrader/tool/mainhand] SelectedItem.tag
data modify entity @e[predicate=mad:system/common/upgrader/tool/shovel,sort=nearest,limit=1] Item.tag set from entity @s[predicate=mad:system/common/upgrader/tool/offhand] Inventory[{Slot:-106b}].tag

## Remove armor
item replace entity @s[predicate=mad:system/common/upgrader/tool/mainhand] weapon.mainhand with minecraft:air
item replace entity @s[predicate=mad:system/common/upgrader/tool/offhand] weapon.offhand with minecraft:air

## Play sound
playsound minecraft:block.anvil.destroy block @s ~ ~ ~ 1.0 1.0 1.0

## Send message
tellraw @s ["",{"text":"[道具改修] ツールをアップグレードしました。","color":"green","bold":false,"italic":false}]