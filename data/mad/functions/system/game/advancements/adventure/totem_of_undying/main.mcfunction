#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 28 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect advancement
execute as @s[predicate=mad:player/alive,scores={AD_Adventure_totem_of_undying=0}] run function mad:system/game/advancements/adventure/totem_of_undying/branch
