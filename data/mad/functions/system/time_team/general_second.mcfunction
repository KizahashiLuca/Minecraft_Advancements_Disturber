#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Detect leaving in midgame
execute if score #mad TeamNumber matches 1.. unless entity @p[team=TeamA,scores={Phase=21,Death=0}] run scoreboard players operation @p[team=TeamA,tag=Leader] GeneralSecond -= #mad Second
execute if score #mad TeamNumber matches 2.. unless entity @p[team=TeamB,scores={Phase=21,Death=0}] run scoreboard players operation @p[team=TeamB,tag=Leader] GeneralSecond -= #mad Second
execute if score #mad TeamNumber matches 3.. unless entity @p[team=TeamC,scores={Phase=21,Death=0}] run scoreboard players operation @p[team=TeamC,tag=Leader] GeneralSecond -= #mad Second
execute if score #mad TeamNumber matches 4.. unless entity @p[team=TeamD,scores={Phase=21,Death=0}] run scoreboard players operation @p[team=TeamD,tag=Leader] GeneralSecond -= #mad Second
execute if score #mad TeamNumber matches 5.. unless entity @p[team=TeamE,scores={Phase=21,Death=0}] run scoreboard players operation @p[team=TeamE,tag=Leader] GeneralSecond -= #mad Second
execute as @a[tag=Leader] if score @s GeneralSecond matches ..-1 run scoreboard players operation @s Second += @s GeneralSecond

## Calculate time every second
scoreboard players add #mad Second 1

## Detect leaving in midgame
scoreboard players operation @a[tag=Leader] GeneralSecond = #mad Second

## Calculate time per players
scoreboard players set @a NumOfTeamPlayer 0
execute as @a[tag=Leader] run scoreboard players operation @s SecondPerSurvive = @s Second
execute as @a[team=TeamA,scores={Phase=21,Death=0}] run scoreboard players add @p[team=TeamA,tag=Leader] NumOfTeamPlayer 1
execute as @a[team=TeamB,scores={Phase=21,Death=0}] run scoreboard players add @p[team=TeamB,tag=Leader] NumOfTeamPlayer 1
execute as @a[team=TeamC,scores={Phase=21,Death=0}] run scoreboard players add @p[team=TeamC,tag=Leader] NumOfTeamPlayer 1
execute as @a[team=TeamD,scores={Phase=21,Death=0}] run scoreboard players add @p[team=TeamD,tag=Leader] NumOfTeamPlayer 1
execute as @a[team=TeamE,scores={Phase=21,Death=0}] run scoreboard players add @p[team=TeamE,tag=Leader] NumOfTeamPlayer 1
execute as @a[tag=Leader] run scoreboard players operation @s SecondPerSurvive /= @s NumOfTeamPlayer

## Summon minecart
execute if score #mad Second = #mad SecondSummon run function mad:system/ongame_team/minecart/summon_minecart