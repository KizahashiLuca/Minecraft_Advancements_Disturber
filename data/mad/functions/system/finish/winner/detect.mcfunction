#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Title
title @a times 20 80 20
execute if predicate mad:gamerules/match_mode/individual if entity @p[predicate=mad:player/alive] run function mad:system/finish/winner/individual
execute if predicate mad:gamerules/match_mode/team if entity @p[predicate=mad:player/alive/a] run function mad:system/finish/winner/a
execute if predicate mad:gamerules/match_mode/team if entity @p[predicate=mad:player/alive/b] run function mad:system/finish/winner/b
execute if predicate mad:gamerules/match_mode/team if entity @p[predicate=mad:player/alive/c] run function mad:system/finish/winner/c
execute if predicate mad:gamerules/match_mode/team if entity @p[predicate=mad:player/alive/d] run function mad:system/finish/winner/d
execute if predicate mad:gamerules/match_mode/team if entity @p[predicate=mad:player/alive/e] run function mad:system/finish/winner/e