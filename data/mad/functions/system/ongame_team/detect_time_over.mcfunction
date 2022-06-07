#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect time over
execute as @s[team=TeamA] run kill @a[predicate=mad:ongame/player/team_a_alive]
execute as @s[team=TeamB] run kill @a[predicate=mad:ongame/player/team_b_alive]
execute as @s[team=TeamC] run kill @a[predicate=mad:ongame/player/team_c_alive]
execute as @s[team=TeamD] run kill @a[predicate=mad:ongame/player/team_d_alive]
execute as @s[team=TeamE] run kill @a[predicate=mad:ongame/player/team_e_alive]