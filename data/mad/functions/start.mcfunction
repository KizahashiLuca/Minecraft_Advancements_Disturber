#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 03 Jan 2021
## Version   : β-1.2
#####################################

## Detect Gamemode
execute unless entity @p[tag=Host] run function mad:system/setting/initial/set_game
execute if entity @p[tag=Host] run function mad:system/finish_individual/game_reject