#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Sep 2021
## Version   : β-1.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Store time for bossbar
execute as @s[scores={Participant=1..4}] run function mad:system/pre_preparation/individual/branch_1
execute as @s[scores={Participant=5..8}] run function mad:system/pre_preparation/individual/branch_2
execute as @s[scores={Participant=9..12}] run function mad:system/pre_preparation/individual/branch_3
execute as @s[scores={Participant=13..16}] run function mad:system/pre_preparation/individual/branch_4
execute as @s[scores={Participant=17..20}] run function mad:system/pre_preparation/individual/branch_5