#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Scoreboard
scoreboard players set @s UseToolUpgrader 0

## Summon armor_stand
summon minecraft:armor_stand ~ ~ ~ {Invisible:0b,Marker:0b,Invulnerable:0b,Health:1.0f,Fire:100s,Tags:["DetectUpgrader"]}

## Branch
execute unless predicate mad:items/mainhand/axe unless predicate mad:items/mainhand/hoe unless predicate mad:items/mainhand/pickaxe unless predicate mad:items/mainhand/shovel unless predicate mad:items/mainhand/sword unless predicate mad:items/offhand/axe unless predicate mad:items/offhand/hoe unless predicate mad:items/offhand/pickaxe unless predicate mad:items/offhand/shovel unless predicate mad:items/offhand/sword run function mad:system/ongame/tool_upgrader/not_upgrade
execute if predicate mad:items/mainhand/axe run function mad:system/ongame/tool_upgrader/upgrade_mainhand_axe
execute if predicate mad:items/mainhand/hoe run function mad:system/ongame/tool_upgrader/upgrade_mainhand_hoe
execute if predicate mad:items/mainhand/pickaxe run function mad:system/ongame/tool_upgrader/upgrade_mainhand_pickaxe
execute if predicate mad:items/mainhand/shovel run function mad:system/ongame/tool_upgrader/upgrade_mainhand_shovel
execute if predicate mad:items/mainhand/sword run function mad:system/ongame/tool_upgrader/upgrade_mainhand_sword
execute if predicate mad:items/offhand/axe run function mad:system/ongame/tool_upgrader/upgrade_offhand_axe
execute if predicate mad:items/offhand/hoe run function mad:system/ongame/tool_upgrader/upgrade_offhand_hoe
execute if predicate mad:items/offhand/pickaxe run function mad:system/ongame/tool_upgrader/upgrade_offhand_pickaxe
execute if predicate mad:items/offhand/shovel run function mad:system/ongame/tool_upgrader/upgrade_offhand_shovel
execute if predicate mad:items/offhand/sword run function mad:system/ongame/tool_upgrader/upgrade_offhand_sword

## Kill turtle
data modify entity @e[type=minecraft:turtle,nbt={CustomName:'{"extra":[{"bold":false,"italic":false,"color":"light_purple","text":"ツールアップグレードキット"}],"text":""}'},sort=nearest,limit=1] CustomNameVisible set value 0b
effect give @e[type=minecraft:turtle,nbt={CustomName:'{"extra":[{"bold":false,"italic":false,"color":"light_purple","text":"ツールアップグレードキット"}],"text":""}'},sort=nearest,limit=1] minecraft:invisibility 100000 1 true
kill @e[type=minecraft:turtle,nbt={CustomName:'{"extra":[{"bold":false,"italic":false,"color":"light_purple","text":"ツールアップグレードキット"}],"text":""}'},sort=nearest,limit=1]