#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Store time for bossbar
execute as @s[scores={ParticipantNumber=1..4}] run function mad:system/pre_preparation/individual/branch_1
execute as @s[scores={ParticipantNumber=5..8}] run function mad:system/pre_preparation/individual/branch_2
execute as @s[scores={ParticipantNumber=9..12}] run function mad:system/pre_preparation/individual/branch_3
execute as @s[scores={ParticipantNumber=13..16}] run function mad:system/pre_preparation/individual/branch_4
execute as @s[scores={ParticipantNumber=17..20}] run function mad:system/pre_preparation/individual/branch_5