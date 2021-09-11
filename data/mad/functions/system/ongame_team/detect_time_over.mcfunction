#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect time over
execute as @s[team=TeamA] run kill @a[predicate=mad:ongame/player/team_a_alive]
execute as @s[team=TeamB] run kill @a[predicate=mad:ongame/player/team_b_alive]
execute as @s[team=TeamC] run kill @a[predicate=mad:ongame/player/team_c_alive]
execute as @s[team=TeamD] run kill @a[predicate=mad:ongame/player/team_d_alive]
execute as @s[team=TeamE] run kill @a[predicate=mad:ongame/player/team_e_alive]