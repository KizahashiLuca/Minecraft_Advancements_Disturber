#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Detect dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:white_banner",tag:{display:{Name:"\"\\u00A7r\\u00A7c前へ\""},BlockEntityTag:{Patterns:[{Pattern:mr,Color:14},{Pattern:vhr,Color:14},{Pattern:br,Color:0},{Pattern:tr,Color:0},{Pattern:bts,Color:0},{Pattern:tts,Color:0},{Pattern:bo,Color:0}]},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:white_banner",tag:{display:{Name:"\"\\u00A7r\\u00A7c次へ\""},BlockEntityTag:{Patterns:[{Pattern:mr,Color:14},{Pattern:vh,Color:14},{Pattern:bl,Color:0},{Pattern:tl,Color:0},{Pattern:bts,Color:0},{Pattern:tts,Color:0},{Pattern:bo,Color:0}]},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:map",tag:{HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7r\\u00A7dキャンセル\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:structure_void",tag:{display:{Name:"\"\\u00A7r\\u00A7b決定\""},HideFlags:39}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mad:system/setting/choose_world_border/drop

## Detect inventory
scoreboard players set @p[tag=Host] Select20 1
scoreboard players set @p[tag=Host] Select22 1
scoreboard players set @p[tag=Host] Select24 1
scoreboard players set @p[tag=Host] Select28 1
scoreboard players set @p[tag=Host] Select34 1

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,Count:1b,id:"minecraft:white_banner",tag:{display:{Name:"\"\\u00A7r\\u00A7c前へ\""},BlockEntityTag:{Patterns:[{Pattern:mr,Color:14},{Pattern:vhr,Color:14},{Pattern:br,Color:0},{Pattern:tr,Color:0},{Pattern:bts,Color:0},{Pattern:tts,Color:0},{Pattern:bo,Color:0}]},HideFlags:39}}]}] Select20 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,Count:1b,id:"minecraft:white_banner",tag:{display:{Name:"\"\\u00A7r\\u00A7c次へ\""},BlockEntityTag:{Patterns:[{Pattern:mr,Color:14},{Pattern:vh,Color:14},{Pattern:bl,Color:0},{Pattern:tl,Color:0},{Pattern:bts,Color:0},{Pattern:tts,Color:0},{Pattern:bo,Color:0}]},HideFlags:39}}]}] Select24 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7r\\u00A7dキャンセル\""},HideFlags:39}}]}] Select28 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{display:{Name:"\"\\u00A7r\\u00A7b決定\""},HideFlags:39}}]}] Select34 0

execute if score #mad WorldBorder matches 0 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{display:{Name:"\"\\u00A7r制限なし\""},HideFlags:39}}]}] Select22 0
execute if score #mad WorldBorder matches 100 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{display:{Name:"\"\\u00A7r100×100\""},HideFlags:39}}]}] Select22 0
execute if score #mad WorldBorder matches 200 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{display:{Name:"\"\\u00A7r200×200\""},HideFlags:39}}]}] Select22 0
execute if score #mad WorldBorder matches 300 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{display:{Name:"\"\\u00A7r300×300\""},HideFlags:39}}]}] Select22 0
execute if score #mad WorldBorder matches 400 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{display:{Name:"\"\\u00A7r400×400\""},HideFlags:39}}]}] Select22 0
execute if score #mad WorldBorder matches 500 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{display:{Name:"\"\\u00A7r500×500\""},HideFlags:39}}]}] Select22 0
execute if score #mad WorldBorder matches 600 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{display:{Name:"\"\\u00A7r600×600\""},HideFlags:39}}]}] Select22 0
execute if score #mad WorldBorder matches 700 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{display:{Name:"\"\\u00A7r700×700\""},HideFlags:39}}]}] Select22 0
execute if score #mad WorldBorder matches 800 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{display:{Name:"\"\\u00A7r800×800\""},HideFlags:39}}]}] Select22 0
execute if score #mad WorldBorder matches 900 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{display:{Name:"\"\\u00A7r900×900\""},HideFlags:39}}]}] Select22 0
execute if score #mad WorldBorder matches 1000 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{display:{Name:"\"\\u00A7r1000×1000\""},HideFlags:39}}]}] Select22 0
execute if score #mad WorldBorder matches 1100 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{display:{Name:"\"\\u00A7r1100×1100\""},HideFlags:39}}]}] Select22 0
execute if score #mad WorldBorder matches 1200 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{display:{Name:"\"\\u00A7r1200×1200\""},HideFlags:39}}]}] Select22 0
execute if score #mad WorldBorder matches 1300 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{display:{Name:"\"\\u00A7r1300×1300\""},HideFlags:39}}]}] Select22 0
execute if score #mad WorldBorder matches 1400 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{display:{Name:"\"\\u00A7r1400×1400\""},HideFlags:39}}]}] Select22 0
execute if score #mad WorldBorder matches 1500 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{display:{Name:"\"\\u00A7r1500×1500\""},HideFlags:39}}]}] Select22 0
execute if score #mad WorldBorder matches 1600 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{display:{Name:"\"\\u00A7r1600×1600\""},HideFlags:39}}]}] Select22 0
execute if score #mad WorldBorder matches 1700 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{display:{Name:"\"\\u00A7r1700×1700\""},HideFlags:39}}]}] Select22 0
execute if score #mad WorldBorder matches 1800 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{display:{Name:"\"\\u00A7r1800×1800\""},HideFlags:39}}]}] Select22 0
execute if score #mad WorldBorder matches 1900 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{display:{Name:"\"\\u00A7r1900×1900\""},HideFlags:39}}]}] Select22 0
execute if score #mad WorldBorder matches 2000 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{display:{Name:"\"\\u00A7r2000×2000\""},HideFlags:39}}]}] Select22 0

## Change to each phase
execute as @p[tag=Host,scores={Select20=1}] run function mad:system/setting/choose_world_border/select_left_arrow
execute as @p[tag=Host,scores={Select22=1}] run function mad:system/setting/choose_world_border/change_to
execute as @p[tag=Host,scores={Select24=1}] run function mad:system/setting/choose_world_border/select_right_arrow
execute as @p[tag=Host,scores={Select28=1}] run function mad:system/setting/choose_world_border/select_cancel
execute as @p[tag=Host,scores={Select34=1}] run function mad:system/setting/choose_world_border/select_ok