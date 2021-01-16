#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

## Detect Gamemode
execute if entity @p[tag=Host] run function mad:system/finish/game_reject
execute unless entity @p[tag=Host] run function mad:system/setting/initial/set_game