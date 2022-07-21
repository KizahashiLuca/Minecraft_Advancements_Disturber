#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
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