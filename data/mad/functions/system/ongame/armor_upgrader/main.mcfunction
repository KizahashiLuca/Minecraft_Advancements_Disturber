#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Scoreboard
scoreboard players set @s UseArmorUpgrader 0

# ## Set data to storage
# data modify storage mad:armor_upgrader armor.head set from entity @s Inventory[{Slot:103b}].tag
# data modify storage mad:armor_upgrader armor.chest set from entity @s Inventory[{Slot:102b}].tag
# data modify storage mad:armor_upgrader armor.legs set from entity @s Inventory[{Slot:101b}].tag
# data modify storage mad:armor_upgrader armor.feet set from entity @s Inventory[{Slot:100b}].tag

# ## Replaceitem
# loot replace entity @s armor.head loot mad:ongame/armor_upgrader/head
# loot replace entity @s armor.chest loot mad:ongame/armor_upgrader/chest
# loot replace entity @s armor.legs loot mad:ongame/armor_upgrader/legs
# loot replace entity @s armor.feet loot mad:ongame/armor_upgrader/feet

# item modify entity @s armor.head mad:ongame/armor_upgrader/head
# item modify entity @s armor.chest mad:ongame/armor_upgrader/chest
# item modify entity @s armor.legs mad:ongame/armor_upgrader/legs
# item modify entity @s armor.feet mad:ongame/armor_upgrader/feet

# data remove storage mad:armor_upgrader armor

## Summon armor_stand
summon minecraft:armor_stand ~ ~ ~ {Invisible:0b,Marker:0b,Invulnerable:0b,Health:1.0f,Fire:100s,Tags:["DetectUpgrader"]}

## Replace item 
data modify entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] ArmorItems[0] merge from entity @s Inventory[{Slot:100b}]
execute as @s[nbt=!{Inventory:[{Slot:100b}]}] run item replace entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] armor.feet with minecraft:leather_boots
execute as @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] run item replace entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] armor.feet with minecraft:golden_boots
execute as @s[nbt={Inventory:[{Slot:100b,id:"minecraft:golden_boots"}]}] run item replace entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] armor.feet with minecraft:chainmail_boots
execute as @s[nbt={Inventory:[{Slot:100b,id:"minecraft:chainmail_boots"}]}] run item replace entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] armor.feet with minecraft:iron_boots
execute as @s[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] run item replace entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] armor.feet with minecraft:diamond_boots
execute as @s[nbt={Inventory:[{Slot:100b,id:"minecraft:diamond_boots"}]}] run item replace entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] armor.feet with minecraft:netherite_boots
execute as @s[nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots"}]}] run item replace entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] armor.feet with minecraft:netherite_boots

data modify entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] ArmorItems[1] merge from entity @s Inventory[{Slot:101b}]
execute as @s[nbt=!{Inventory:[{Slot:101b}]}] run item replace entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] armor.legs with minecraft:leather_leggings
execute as @s[nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] run item replace entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] armor.legs with minecraft:golden_leggings
execute as @s[nbt={Inventory:[{Slot:101b,id:"minecraft:golden_leggings"}]}] run item replace entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] armor.legs with minecraft:chainmail_leggings
execute as @s[nbt={Inventory:[{Slot:101b,id:"minecraft:chainmail_leggings"}]}] run item replace entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] armor.legs with minecraft:iron_leggings
execute as @s[nbt={Inventory:[{Slot:101b,id:"minecraft:iron_leggings"}]}] run item replace entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] armor.legs with minecraft:diamond_leggings
execute as @s[nbt={Inventory:[{Slot:101b,id:"minecraft:diamond_leggings"}]}] run item replace entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] armor.legs with minecraft:netherite_leggings
execute as @s[nbt={Inventory:[{Slot:101b,id:"minecraft:netherite_leggings"}]}] run item replace entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] armor.legs with minecraft:netherite_leggings

data modify entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] ArmorItems[2] merge from entity @s Inventory[{Slot:102b}]
execute as @s[nbt=!{Inventory:[{Slot:102b}]}] run item replace entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] armor.chest with minecraft:leather_chestplate
execute as @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] run item replace entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] armor.chest with minecraft:golden_chestplate
execute as @s[nbt={Inventory:[{Slot:102b,id:"minecraft:golden_chestplate"}]}] run item replace entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] armor.chest with minecraft:chainmail_chestplate
execute as @s[nbt={Inventory:[{Slot:102b,id:"minecraft:chainmail_chestplate"}]}] run item replace entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] armor.chest with minecraft:iron_chestplate
execute as @s[nbt={Inventory:[{Slot:102b,id:"minecraft:iron_chestplate"}]}] run item replace entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] armor.chest with minecraft:diamond_chestplate
execute as @s[nbt={Inventory:[{Slot:102b,id:"minecraft:diamond_chestplate"}]}] run item replace entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] armor.chest with minecraft:netherite_chestplate
execute as @s[nbt={Inventory:[{Slot:102b,id:"minecraft:netherite_chestplate"}]}] run item replace entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] armor.chest with minecraft:netherite_chestplate

data modify entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] ArmorItems[3] merge from entity @s Inventory[{Slot:103b}]
execute as @s[nbt=!{Inventory:[{Slot:103b}]}] run item replace entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] armor.head with minecraft:leather_helmet
execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] run item replace entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] armor.head with minecraft:golden_helmet
execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet"}]}] run item replace entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] armor.head with minecraft:chainmail_helmet
execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:chainmail_helmet"}]}] run item replace entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] armor.head with minecraft:iron_helmet
execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:iron_helmet"}]}] run item replace entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] armor.head with minecraft:diamond_helmet
execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_helmet"}]}] run item replace entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] armor.head with minecraft:netherite_helmet
execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:netherite_helmet"}]}] run item replace entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] armor.head with minecraft:netherite_helmet

## Merge data
data modify entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] ArmorItems[0].tag set from entity @s Inventory[{Slot:100b}].tag
data modify entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] ArmorItems[1].tag set from entity @s Inventory[{Slot:101b}].tag
data modify entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] ArmorItems[2].tag set from entity @s Inventory[{Slot:102b}].tag
data modify entity @e[predicate=mad:ongame/armor_upgrader,sort=nearest,limit=1] ArmorItems[3].tag set from entity @s Inventory[{Slot:103b}].tag

## Upgrader
item replace entity @s armor.feet with minecraft:air
item replace entity @s armor.legs with minecraft:air
item replace entity @s armor.chest with minecraft:air
item replace entity @s armor.head with minecraft:air

## Message
tellraw @s ["",{"text":"[防具改修] 防具をアップグレードしました。","color":"green"}]

## Kill bat
kill @e[type=minecraft:bat,nbt={CustomName:'{"extra":[{"bold":false,"italic":false,"color":"light_purple","text":"防具アップグレードキット"}],"text":""}'},sort=nearest,limit=1]