#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect mainhand/offhand
execute as @s[predicate=mad:system/item/warden_fangs_wand/mainhand/have_wand] run function mad:system/item/warden_fangs_wand/mainhand
execute as @s[predicate=mad:system/item/warden_fangs_wand/offhand/have_wand] run function mad:system/item/warden_fangs_wand/offhand

## Reset scoreboard
scoreboard players set @s UseFungusStick 0