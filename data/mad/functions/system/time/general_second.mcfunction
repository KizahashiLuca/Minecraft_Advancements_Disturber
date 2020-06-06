#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Jun 2020
## Version   : α-0.2
#####################################

## Calculate time every second
scoreboard players add #mad Second 1
scoreboard players operation #mad SecondSummon = #mad Second
scoreboard players operation #mad SecondSummon %= #mad 300
scoreboard players operation #mad SecondEliminate = #mad Second
scoreboard players remove #mad SecondEliminate 200
scoreboard players operation #mad SecondEliminate %= #mad 300