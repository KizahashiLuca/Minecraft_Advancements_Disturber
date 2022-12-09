#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 04 Dec 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect mainhand/offhand
execute as @s[predicate=mad:system/item/sonic_laser/mainhand] run function mad:system/item/sonic_laser/mainhand
execute as @s[predicate=mad:system/item/sonic_laser/offhand] run function mad:system/item/sonic_laser/offhand

## Reset scoreboard
scoreboard players set @s UseSonicLaser 0