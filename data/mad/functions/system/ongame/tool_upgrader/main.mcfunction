#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Scoreboard
scoreboard players set @s UseToolUpgrader 0

## Summon armor_stand
summon minecraft:armor_stand ~ ~ ~ {Invisible:0b,Marker:0b,Invulnerable:0b,Health:1.0f,Fire:100s,Tags:["DetectUpgrader"]}

## Branch
execute if predicate mad:ongame/tool_upgrader/mainhand/none if predicate mad:ongame/tool_upgrader/offhand/none run function mad:system/ongame/tool_upgrader/not_upgrade
execute if predicate mad:ongame/tool_upgrader/mainhand/axe run function mad:system/ongame/tool_upgrader/upgrade_mainhand_axe
execute if predicate mad:ongame/tool_upgrader/mainhand/hoe run function mad:system/ongame/tool_upgrader/upgrade_mainhand_hoe
execute if predicate mad:ongame/tool_upgrader/mainhand/pickaxe run function mad:system/ongame/tool_upgrader/upgrade_mainhand_pickaxe
execute if predicate mad:ongame/tool_upgrader/mainhand/shovel run function mad:system/ongame/tool_upgrader/upgrade_mainhand_shovel
execute if predicate mad:ongame/tool_upgrader/mainhand/sword run function mad:system/ongame/tool_upgrader/upgrade_mainhand_sword
execute if predicate mad:ongame/tool_upgrader/offhand/axe run function mad:system/ongame/tool_upgrader/upgrade_offhand_axe
execute if predicate mad:ongame/tool_upgrader/offhand/hoe run function mad:system/ongame/tool_upgrader/upgrade_offhand_hoe
execute if predicate mad:ongame/tool_upgrader/offhand/pickaxe run function mad:system/ongame/tool_upgrader/upgrade_offhand_pickaxe
execute if predicate mad:ongame/tool_upgrader/offhand/shovel run function mad:system/ongame/tool_upgrader/upgrade_offhand_shovel
execute if predicate mad:ongame/tool_upgrader/offhand/sword run function mad:system/ongame/tool_upgrader/upgrade_offhand_sword

## Kill turtle
kill @e[type=minecraft:turtle,nbt={CustomName:'{"extra":[{"bold":false,"italic":false,"color":"light_purple","text":"ツールアップグレードキット"}],"text":""}'},sort=nearest,limit=1]