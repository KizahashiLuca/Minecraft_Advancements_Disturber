#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect advancement
execute as @s[predicate=mad:ongame/player/participant_alive,scores={AD_Adventure_totem_of_undying=0}] run function mad:system/ongame/advancements/adventure/totem_of_undying_branch
