#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 29 Sep 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect advancement
execute as @s[predicate=mad:player/alive,scores={AD_Adventure_very_very_frightening=0}] run function mad:system/game/advancements/adventure/very_very_frightening/branch
