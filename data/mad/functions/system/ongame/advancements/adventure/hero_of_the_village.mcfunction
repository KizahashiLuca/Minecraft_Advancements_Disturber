#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect advancement
execute as @s[predicate=mad:ongame/player/participant_alive,scores={AD_Adventure_hero_of_the_village=0}] run function mad:system/ongame/advancements/adventure/hero_of_the_village_branch
