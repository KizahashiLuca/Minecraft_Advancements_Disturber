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
execute as @s[predicate=mad:player/alive,scores={AD_Story_enter_the_end=0}] run function mad:system/game/advancements/story/enter_the_end/branch
