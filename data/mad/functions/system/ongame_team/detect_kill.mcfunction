#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Add a tag
tag @s add Killer

## Detect killed
scoreboard objectives add SecondTmp dummy
execute as @a[tag=TeamA,scores={Death=1}] run scoreboard players operation @p[tag=Participant,tag=Killer] SecondTmp = @p[team=TeamA,tag=Leader] SecondPerSurvive
execute as @a[tag=TeamB,scores={Death=1}] run scoreboard players operation @p[tag=Participant,tag=Killer] SecondTmp = @p[team=TeamB,tag=Leader] SecondPerSurvive
execute as @a[tag=TeamC,scores={Death=1}] run scoreboard players operation @p[tag=Participant,tag=Killer] SecondTmp = @p[team=TeamC,tag=Leader] SecondPerSurvive
execute as @a[tag=TeamD,scores={Death=1}] run scoreboard players operation @p[tag=Participant,tag=Killer] SecondTmp = @p[team=TeamD,tag=Leader] SecondPerSurvive
execute as @a[tag=TeamE,scores={Death=1}] run scoreboard players operation @p[tag=Participant,tag=Killer] SecondTmp = @p[team=TeamE,tag=Leader] SecondPerSurvive

execute if entity @p[tag=Killer,team=TeamA] run scoreboard players operation @p[team=TeamA,tag=Leader] Second += @p[tag=Participant,tag=Killer] SecondTmp
execute if entity @p[tag=Killer,team=TeamB] run scoreboard players operation @p[team=TeamB,tag=Leader] Second += @p[tag=Participant,tag=Killer] SecondTmp
execute if entity @p[tag=Killer,team=TeamC] run scoreboard players operation @p[team=TeamC,tag=Leader] Second += @p[tag=Participant,tag=Killer] SecondTmp
execute if entity @p[tag=Killer,team=TeamD] run scoreboard players operation @p[team=TeamD,tag=Leader] Second += @p[tag=Participant,tag=Killer] SecondTmp
execute if entity @p[tag=Killer,team=Teame] run scoreboard players operation @p[team=TeamE,tag=Leader] Second += @p[tag=Participant,tag=Killer] SecondTmp
scoreboard objectives remove SecondTmp

scoreboard players operation @p[tag=Participant,tag=Killer] Kill += @p[tag=Participant,tag=Killer] KillTemp
scoreboard players set @p[tag=Participant,tag=Killer] KillTemp 0

## Remove a tag
tag @p[tag=Participant,tag=Killer] remove Killer