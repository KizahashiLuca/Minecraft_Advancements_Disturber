#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Detect time over
execute as @s[team=TeamA] run kill @a[predicate=mad:ongame/player/team_a_alive]
execute as @s[team=TeamB] run kill @a[predicate=mad:ongame/player/team_b_alive]
execute as @s[team=TeamC] run kill @a[predicate=mad:ongame/player/team_c_alive]
execute as @s[team=TeamD] run kill @a[predicate=mad:ongame/player/team_d_alive]
execute as @s[team=TeamE] run kill @a[predicate=mad:ongame/player/team_e_alive]