#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Store time for bossbar
execute as @s[scores={Participant=1}] run function mad:system/time_individual/participant/001
execute as @s[scores={Participant=1..4}] run function mad:system/time_individual/participant/branch_1
execute as @s[scores={Participant=5..8}] run function mad:system/time_individual/participant/branch_2
execute as @s[scores={Participant=9..12}] run function mad:system/time_individual/participant/branch_3
execute as @s[scores={Participant=13..16}] run function mad:system/time_individual/participant/branch_4
execute as @s[scores={Participant=17..20}] run function mad:system/time_individual/participant/branch_5