#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Jun 2020
## Version   : α-0.2
#####################################

## Detect dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:wooden_sword",tag:{display:{Name:"\"\\u00A7rイージー\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:stone_sword",tag:{display:{Name:"\"\\u00A7rノーマル\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_sword",tag:{display:{Name:"\"\\u00A7rハード\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7r\\u00A7dキャンセル\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:structure_void",tag:{display:{Name:"\"\\u00A7r\\u00A7b決定\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済\""},HideFlags:39}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mad:system/setting/choose_difficulty/drop

## Detect inventory
scoreboard players set @p[tag=Host] Select21 1
scoreboard players set @p[tag=Host] Select22 1
scoreboard players set @p[tag=Host] Select23 1
scoreboard players set @p[tag=Host] Select28 1
scoreboard players set @p[tag=Host] Select34 1
scoreboard players set @p[tag=Host] Selected 1

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:wooden_sword",tag:{display:{Name:"\"\\u00A7rイージー\""},HideFlags:39}}]}] Select21 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:stone_sword",tag:{display:{Name:"\"\\u00A7rノーマル\""},HideFlags:39}}]}] Select22 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:diamond_sword",tag:{display:{Name:"\"\\u00A7rハード\""},HideFlags:39}}]}] Select23 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7r\\u00A7dキャンセル\""},HideFlags:39}}]}] Select28 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{display:{Name:"\"\\u00A7r\\u00A7b決定\""},HideFlags:39}}]}] Select34 0

execute if score #mad Difficulty matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:12b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済\""},HideFlags:39}}]}] Selected 0
execute if score #mad Difficulty matches 2 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済\""},HideFlags:39}}]}] Selected 0
execute if score #mad Difficulty matches 3 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:14b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済\""},HideFlags:39}}]}] Selected 0

## Change to each phase
execute as @p[tag=Host,scores={Select21=1}] run function mad:system/setting/choose_difficulty/select_easy
execute as @p[tag=Host,scores={Select22=1}] run function mad:system/setting/choose_difficulty/select_normal
execute as @p[tag=Host,scores={Select23=1}] run function mad:system/setting/choose_difficulty/select_hard
execute as @p[tag=Host,scores={Select28=1}] run function mad:system/setting/choose_difficulty/select_cancel
execute as @p[tag=Host,scores={Select34=1}] run function mad:system/setting/choose_difficulty/select_ok
execute as @p[tag=Host,scores={Selected=1}] run function mad:system/setting/choose_difficulty/change_to