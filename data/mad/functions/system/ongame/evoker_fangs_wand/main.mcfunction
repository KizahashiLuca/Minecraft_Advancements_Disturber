#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect mainhand/offhand
execute as @s[predicate=mad:ongame/evoker_fangs_wand/mainhand] run function mad:system/ongame/evoker_fangs_wand/mainhand
execute as @s[predicate=mad:ongame/evoker_fangs_wand/offhand] run function mad:system/ongame/evoker_fangs_wand/offhand

## Reset scoreboard
scoreboard players set @s UseFungusStick 0