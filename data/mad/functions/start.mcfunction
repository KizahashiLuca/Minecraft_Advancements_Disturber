#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 31 May 2020
## Version   : α-0.1
#####################################

## Detect Gamemode
execute if entity @p[tag=Host] run function mad:system/finish/game_reject
execute unless entity @p[tag=Host] run function mad:system/setting/initial/set_game