#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect mainhand/offhand - wave
execute as @s[predicate=mad:ongame/evoker_fangs_wand/mainhand/is_not_sneaking] run function mad:system/ongame/evoker_fangs_wand/wave/mainhand
execute as @s[predicate=mad:ongame/evoker_fangs_wand/offhand/is_not_sneaking] run function mad:system/ongame/evoker_fangs_wand/wave/offhand

## Detect mainhand/offhand - wall
execute as @s[predicate=mad:ongame/evoker_fangs_wand/mainhand/is_sneaking] run function mad:system/ongame/evoker_fangs_wand/wall/mainhand
execute as @s[predicate=mad:ongame/evoker_fangs_wand/offhand/is_sneaking] run function mad:system/ongame/evoker_fangs_wand/wall/offhand

## Reset scoreboard
scoreboard players set @s UseFungusStick 0