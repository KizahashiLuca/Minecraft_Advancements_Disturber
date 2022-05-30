#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect mainhand/offhand - wave
execute as @s[predicate=mad:ongame/evoker_fangs_wand/mainhand/is_not_sneaking] run function mad:system/ongame/evoker_fangs_wand/wave/mainhand
execute as @s[predicate=mad:ongame/evoker_fangs_wand/offhand/is_not_sneaking] run function mad:system/ongame/evoker_fangs_wand/wave/offhand

## Detect mainhand/offhand - circle
execute as @s[predicate=mad:ongame/evoker_fangs_wand/mainhand/is_sneaking] run function mad:system/ongame/evoker_fangs_wand/circle/mainhand
execute as @s[predicate=mad:ongame/evoker_fangs_wand/offhand/is_sneaking] run function mad:system/ongame/evoker_fangs_wand/circle/offhand

## Reset scoreboard
scoreboard players set @s UseFungusStick 0