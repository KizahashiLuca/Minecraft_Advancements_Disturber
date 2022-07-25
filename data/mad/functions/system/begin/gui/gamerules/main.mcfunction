#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect dropping
execute if entity @e[predicate=mad:system/begin/gui/throw_item] run function mad:system/begin/gui/gamerules/change_to
kill @e[predicate=mad:system/begin/gui/throw_item]

## Detect inventory
execute as @p[predicate=mad:system/begin/gui/gamerules/master] run function mad:system/begin/gui/gamerules/change_to
execute as @p[predicate=mad:system/begin/gui/gamerules/weather_cycle] run function mad:system/begin/gui/gamerules/change_weather_cycle
execute as @p[predicate=mad:system/begin/gui/gamerules/daylight_cycle] run function mad:system/begin/gui/gamerules/change_daylight_cycle
execute as @p[predicate=mad:system/begin/gui/gamerules/difficulty] run function mad:system/begin/gui/gamerules/change_difficulty
execute as @p[predicate=mad:system/begin/gui/gamerules/cancel] run function mad:system/begin/gui/gamerules/cancel
execute as @p[predicate=mad:system/begin/gui/gamerules/reset] run function mad:system/begin/gui/gamerules/reset
execute as @p[predicate=mad:system/begin/gui/gamerules/ok] run function mad:system/begin/gui/gamerules/ok