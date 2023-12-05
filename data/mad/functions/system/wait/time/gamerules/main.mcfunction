#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Send gamerules
execute if predicate mad:system/wait/time/gamerules/match_mode run function mad:system/wait/time/gamerules/match_mode
execute if predicate mad:system/wait/time/gamerules/initial_time run function mad:system/wait/time/gamerules/initial_time
execute if predicate mad:system/wait/time/gamerules/adding_time run function mad:system/wait/time/gamerules/adding_time
execute if predicate mad:system/wait/time/gamerules/minecart_interval run function mad:system/wait/time/gamerules/minecart_interval
execute if predicate mad:system/wait/time/gamerules/world_border run function mad:system/wait/time/gamerules/world_border
execute if predicate mad:system/wait/time/gamerules/weather_cycle run function mad:system/wait/time/gamerules/weather_cycle
execute if predicate mad:system/wait/time/gamerules/daylight_cycle run function mad:system/wait/time/gamerules/daylight_cycle
execute if predicate mad:system/wait/time/gamerules/difficulty run function mad:system/wait/time/gamerules/difficulty
execute if predicate mad:system/wait/time/gamerules/reset run function mad:system/wait/time/gamerules/reset