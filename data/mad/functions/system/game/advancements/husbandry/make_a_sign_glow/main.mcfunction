#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect advancement
execute as @s[predicate=mad:player/alive,scores={AD_Husbandry_make_a_sign_glow=0}] run function mad:system/game/advancements/husbandry/make_a_sign_glow/branch
