#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Set difficulty
execute if predicate mad:gamerules/difficulty/peaceful run difficulty peaceful
execute if predicate mad:gamerules/difficulty/easy run difficulty easy
execute if predicate mad:gamerules/difficulty/normal run difficulty normal
execute if predicate mad:gamerules/difficulty/hard run difficulty hard

## Set time
time set noon

## Set weather
weather clear