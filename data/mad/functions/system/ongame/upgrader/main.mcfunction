#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Scoreboard
scoreboard players set @s UseUpgrader 0

## Summon armor_stand
summon minecraft:armor_stand ~ ~ ~ {Invisible:0b,Marker:0b,Invulnerable:0b,Health:1.0f,Fire:100s,Tags:["DetectUpgrader"]}

## Replace item 
data modify entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] ArmorItems[0] merge from entity @s Inventory[{Slot:100b}]
execute as @s[nbt=!{Inventory:[{Slot:100b}]}] run replaceitem entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] armor.feet minecraft:leather_boots
execute as @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] run replaceitem entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] armor.feet minecraft:golden_boots
execute as @s[nbt={Inventory:[{Slot:100b,id:"minecraft:golden_boots"}]}] run replaceitem entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] armor.feet minecraft:chainmail_boots
execute as @s[nbt={Inventory:[{Slot:100b,id:"minecraft:chainmail_boots"}]}] run replaceitem entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] armor.feet minecraft:iron_boots
execute as @s[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] run replaceitem entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] armor.feet minecraft:diamond_boots
execute as @s[nbt={Inventory:[{Slot:100b,id:"minecraft:diamond_boots"}]}] run replaceitem entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] armor.feet minecraft:netherite_boots
execute as @s[nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots"}]}] run replaceitem entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] armor.feet minecraft:netherite_boots

data modify entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] ArmorItems[1] merge from entity @s Inventory[{Slot:101b}]
execute as @s[nbt=!{Inventory:[{Slot:101b}]}] run replaceitem entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] armor.legs minecraft:leather_leggings
execute as @s[nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] run replaceitem entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] armor.legs minecraft:golden_leggings
execute as @s[nbt={Inventory:[{Slot:101b,id:"minecraft:golden_leggings"}]}] run replaceitem entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] armor.legs minecraft:chainmail_leggings
execute as @s[nbt={Inventory:[{Slot:101b,id:"minecraft:chainmail_leggings"}]}] run replaceitem entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] armor.legs minecraft:iron_leggings
execute as @s[nbt={Inventory:[{Slot:101b,id:"minecraft:iron_leggings"}]}] run replaceitem entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] armor.legs minecraft:diamond_leggings
execute as @s[nbt={Inventory:[{Slot:101b,id:"minecraft:diamond_leggings"}]}] run replaceitem entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] armor.legs minecraft:netherite_leggings
execute as @s[nbt={Inventory:[{Slot:101b,id:"minecraft:netherite_leggings"}]}] run replaceitem entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] armor.legs minecraft:netherite_leggings

data modify entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] ArmorItems[2] merge from entity @s Inventory[{Slot:102b}]
execute as @s[nbt=!{Inventory:[{Slot:102b}]}] run replaceitem entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] armor.chest minecraft:leather_chestplate
execute as @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] run replaceitem entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] armor.chest minecraft:golden_chestplate
execute as @s[nbt={Inventory:[{Slot:102b,id:"minecraft:golden_chestplate"}]}] run replaceitem entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] armor.chest minecraft:chainmail_chestplate
execute as @s[nbt={Inventory:[{Slot:102b,id:"minecraft:chainmail_chestplate"}]}] run replaceitem entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] armor.chest minecraft:iron_chestplate
execute as @s[nbt={Inventory:[{Slot:102b,id:"minecraft:iron_chestplate"}]}] run replaceitem entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] armor.chest minecraft:diamond_chestplate
execute as @s[nbt={Inventory:[{Slot:102b,id:"minecraft:diamond_chestplate"}]}] run replaceitem entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] armor.chest minecraft:netherite_chestplate
execute as @s[nbt={Inventory:[{Slot:102b,id:"minecraft:netherite_chestplate"}]}] run replaceitem entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] armor.chest minecraft:netherite_chestplate

data modify entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] ArmorItems[3] merge from entity @s Inventory[{Slot:103b}]
execute as @s[nbt=!{Inventory:[{Slot:103b}]}] run replaceitem entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] armor.head minecraft:leather_helmet
execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] run replaceitem entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] armor.head minecraft:golden_helmet
execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet"}]}] run replaceitem entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] armor.head minecraft:chainmail_helmet
execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:chainmail_helmet"}]}] run replaceitem entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] armor.head minecraft:iron_helmet
execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:iron_helmet"}]}] run replaceitem entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] armor.head minecraft:diamond_helmet
execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_helmet"}]}] run replaceitem entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] armor.head minecraft:netherite_helmet
execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:netherite_helmet"}]}] run replaceitem entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] armor.head minecraft:netherite_helmet

## Merge data
data modify entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] ArmorItems[0].tag set from entity @s Inventory[{Slot:100b}].tag
data modify entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] ArmorItems[1].tag set from entity @s Inventory[{Slot:101b}].tag
data modify entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] ArmorItems[2].tag set from entity @s Inventory[{Slot:102b}].tag
data modify entity @e[type=minecraft:armor_stand,tag=DetectUpgrader,sort=nearest,limit=1] ArmorItems[3].tag set from entity @s Inventory[{Slot:103b}].tag

## Upgrader
replaceitem entity @s armor.feet minecraft:air
replaceitem entity @s armor.legs minecraft:air
replaceitem entity @s armor.chest minecraft:air
replaceitem entity @s armor.head minecraft:air

## Message
tellraw @s ["",{"text":"[防具改修] 防具をアップグレードしました。","color":"green"}]

## Kill bat
data modify entity @e[type=minecraft:bat,nbt={CustomName:'{"extra":[{"bold":false,"italic":false,"color":"light_purple","text":"アップグレードキット"}],"text":""}'},sort=nearest,limit=1] CustomNameVisible set value 0b
effect give @e[type=minecraft:bat,nbt={CustomName:'{"extra":[{"bold":false,"italic":false,"color":"light_purple","text":"アップグレードキット"}],"text":""}'},sort=nearest,limit=1] minecraft:invisibility 100000 1 true
kill @e[type=minecraft:bat,nbt={CustomName:'{"extra":[{"bold":false,"italic":false,"color":"light_purple","text":"アップグレードキット"}],"text":""}'},sort=nearest,limit=1]