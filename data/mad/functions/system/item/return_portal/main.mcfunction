#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect dimensions
execute unless predicate mad:dimension/the_end run function mad:system/item/return_portal/not_construct_return_portal
execute if predicate mad:dimension/the_end run function mad:system/item/return_portal/construct_return_portal

## Kill armor stand
kill @s