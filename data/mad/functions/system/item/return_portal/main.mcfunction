#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 13 Sep 2022
## Version   : β-2.0.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect dimensions
execute unless predicate mad:dimension/the_end run function mad:system/item/return_portal/not_construct_return_portal
execute if predicate mad:dimension/the_end run function mad:system/item/return_portal/construct_return_portal

## Kill armor stand
kill @s