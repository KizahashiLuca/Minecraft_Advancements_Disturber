#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Replace item 
execute as @s[predicate=mad:system/item/upgrader/tool/hoe/have_wooden] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone_hoe",Count:1b},Tags:["MAD_DetectHoeUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/tool/hoe/have_stone] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:golden_hoe",Count:1b},Tags:["MAD_DetectHoeUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/tool/hoe/have_golden] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_hoe",Count:1b},Tags:["MAD_DetectHoeUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/tool/hoe/have_iron] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:diamond_hoe",Count:1b},Tags:["MAD_DetectHoeUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/tool/hoe/have_diamond] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherite_hoe",Count:1b},Tags:["MAD_DetectHoeUpgrader"],PickupDelay:0s}
execute as @s[predicate=mad:system/item/upgrader/tool/hoe/have_netherite] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherite_hoe",Count:1b},Tags:["MAD_DetectHoeUpgrader"],PickupDelay:0s}

## Merge nbt tag
data modify entity @e[predicate=mad:system/item/upgrader/tool/hoe,sort=nearest,limit=1] Item.tag set from entity @s[predicate=mad:system/item/upgrader/tool/mainhand] SelectedItem.tag
data modify entity @e[predicate=mad:system/item/upgrader/tool/hoe,sort=nearest,limit=1] Item.tag set from entity @s[predicate=mad:system/item/upgrader/tool/offhand] Inventory[{Slot:-106b}].tag

## Remove armor
item replace entity @s[predicate=mad:system/item/upgrader/tool/mainhand] weapon.mainhand with minecraft:air
item replace entity @s[predicate=mad:system/item/upgrader/tool/offhand] weapon.offhand with minecraft:air

## Play sound
playsound minecraft:block.anvil.use block @s ~ ~ ~ 1.0 1.0 1.0

## Send message
tellraw @s ["",{"text":"[道具改修] ツールをアップグレードしました。","color":"green","bold":false,"italic":false}]