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
scoreboard players set @s SecondTmp 0
execute as @a[team=TeamA,scores={Death=1}] run scoreboard players operation @p[tag=Participant,tag=Killer] SecondTmp += @p[team=TeamA,tag=Leader] SecondPerSurvive
execute as @a[team=TeamB,scores={Death=1}] run scoreboard players operation @p[tag=Participant,tag=Killer] SecondTmp += @p[team=TeamB,tag=Leader] SecondPerSurvive
execute as @a[team=TeamC,scores={Death=1}] run scoreboard players operation @p[tag=Participant,tag=Killer] SecondTmp += @p[team=TeamC,tag=Leader] SecondPerSurvive
execute as @a[team=TeamD,scores={Death=1}] run scoreboard players operation @p[tag=Participant,tag=Killer] SecondTmp += @p[team=TeamD,tag=Leader] SecondPerSurvive
execute as @a[team=TeamE,scores={Death=1}] run scoreboard players operation @p[tag=Participant,tag=Killer] SecondTmp += @p[team=TeamE,tag=Leader] SecondPerSurvive

scoreboard players operation @p[team=TeamA,tag=Leader] Second += @p[tag=Participant,tag=Killer,team=TeamA] SecondTmp
scoreboard players operation @p[team=TeamB,tag=Leader] Second += @p[tag=Participant,tag=Killer,team=TeamB] SecondTmp
scoreboard players operation @p[team=TeamC,tag=Leader] Second += @p[tag=Participant,tag=Killer,team=TeamC] SecondTmp
scoreboard players operation @p[team=TeamD,tag=Leader] Second += @p[tag=Participant,tag=Killer,team=TeamD] SecondTmp
scoreboard players operation @p[team=TeamE,tag=Leader] Second += @p[tag=Participant,tag=Killer,team=TeamE] SecondTmp
scoreboard players operation @p[team=TeamA,tag=Leader] TimeLimit += @p[tag=Participant,tag=Killer,team=TeamA] SecondTmp
scoreboard players operation @p[team=TeamB,tag=Leader] TimeLimit += @p[tag=Participant,tag=Killer,team=TeamB] SecondTmp
scoreboard players operation @p[team=TeamC,tag=Leader] TimeLimit += @p[tag=Participant,tag=Killer,team=TeamC] SecondTmp
scoreboard players operation @p[team=TeamD,tag=Leader] TimeLimit += @p[tag=Participant,tag=Killer,team=TeamD] SecondTmp
scoreboard players operation @p[team=TeamE,tag=Leader] TimeLimit += @p[tag=Participant,tag=Killer,team=TeamE] SecondTmp
scoreboard objectives remove SecondTmp

scoreboard players operation @p[tag=Participant,tag=Killer] Kill += @p[tag=Participant,tag=Killer] KillTemp
scoreboard players set @p[tag=Participant,tag=Killer] KillTemp 0

## Remove a tag
tag @p[tag=Participant,tag=Killer] remove Killer