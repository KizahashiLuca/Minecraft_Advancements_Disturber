#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Add a tag
tag @s add Killer

## Detect killed
execute as @a[team=Participant,scores={Death=1}] at @s run scoreboard players operation @s SecondPerSurvive += @s Second
execute as @a[team=Participant,scores={Death=1}] at @s run scoreboard players operation @s SecondPerSurvive /= #mad 2
execute as @a[team=Participant,scores={Death=1}] at @s run scoreboard players operation @p[team=Participant,tag=Killer,sort=nearest] Second += @s SecondPerSurvive
execute as @a[team=Participant,scores={Death=1}] at @s run scoreboard players operation @p[team=Participant,tag=Killer,sort=nearest] TimeLimit += @s SecondPerSurvive
execute as @a[team=Participant,scores={Death=1}] at @s run scoreboard players operation @p[team=Participant,tag=Killer,sort=nearest] GetTimeLimit += @s SecondPerSurvive
scoreboard players operation @p[team=Participant,tag=Killer] Kill += @p[team=Participant,tag=Killer] KillTemp
scoreboard players set @p[team=Participant,tag=Killer] KillTemp 0

## Remove a tag
tag @p[team=Participant,tag=Killer] remove Killer