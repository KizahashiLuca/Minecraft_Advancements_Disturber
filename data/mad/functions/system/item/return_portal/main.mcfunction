#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect dimensions
execute unless predicate mad:dimension/the_end run function mad:system/item/return_portal/not_construct_return_portal
execute if predicate mad:dimension/the_end run function mad:system/item/return_portal/construct_return_portal

## Kill armor stand
kill @s