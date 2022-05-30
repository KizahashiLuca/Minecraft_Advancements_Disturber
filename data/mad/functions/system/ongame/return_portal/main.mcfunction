#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect dimensions
execute unless predicate mad:ongame/dimension/the_end run function mad:system/ongame/return_portal/not_construct_return_portal
execute if predicate mad:ongame/dimension/the_end run function mad:system/ongame/return_portal/construct_return_portal

## Kill armor stand
kill @s