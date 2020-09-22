#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Calculate Scoreboard
scoreboard players operation @s TargetOfRespawn = @s TurnPageNum
scoreboard players operation @s TargetOfRespawn *= #mad 10
scoreboard players operation @s TargetOfRespawn += @s RespawnTrigger
