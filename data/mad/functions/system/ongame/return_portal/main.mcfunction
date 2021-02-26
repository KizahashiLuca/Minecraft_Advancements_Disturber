#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Detect dimensions
execute unless predicate mad:ongame/return_portal/the_end run function mad:system/ongame/return_portal/not_construct_return_portal
execute if predicate mad:ongame/return_portal/the_end run function mad:system/ongame/return_portal/construct_return_portal

## Kill armor stand
kill @s