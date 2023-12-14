#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboards
#### game phase
scoreboard players set #mad DataVersion 1444
scoreboard players set #mad Version 13
scoreboard players set #mad Phase 1
scoreboard players set #mad PvP 0
scoreboard players set #mad Difficulty 0
scoreboard players set #mad ExitMessage 0
#### timer
scoreboard players set #mad 2 2
scoreboard players set #mad PvPSecond 900
#### participants
scoreboard players set #mad ParticipantNumber 0
scoreboard players set #mad NumOfParticipants 0
scoreboard players set #mad NumAlive 0
scoreboard players set #mad NumDead 0
#### position
scoreboard players set #mad PosX 0
scoreboard players set #mad PosY 63
scoreboard players set #mad PosZ 0
scoreboard players set #mad 45 45
#### randomizer
scoreboard players set #mad RandomSeed 0
scoreboard players set #mad RandomCount 10
scoreboard players set #mad RandomAnswer 0
scoreboard players set #mad RandomModder 2147483647
scoreboard players set #mad RandomMultiplier 48271
#### setting phase - choose time limit
scoreboard players set #mad 10 10
scoreboard players set #mad 100 100
scoreboard players set #mad 1000 1000
scoreboard players set #mad 10000 10000
scoreboard players set #mad TimeLimit 300
scoreboard players set #mad TimeLimitPrv 300
#### setting phase - choose area
scoreboard players set #mad WorldBorder 1000
scoreboard players set #mad WorldBorderPrv 1000
scoreboard players set #mad WorldBorderEnd 0
#### setting phase - choose difficulty
scoreboard players set #mad Difficulty 2
scoreboard players set #mad DifficultyPrv 2
#### setting phase - choose adding time
scoreboard players set #mad AddingTime 100
scoreboard players set #mad AddingTimePrv 100
#### setting phase - choose minecart interval
scoreboard players set #mad CartInterval 300
scoreboard players set #mad CartIntervalPrv 300
#### setting phase - choose gamerule
scoreboard players set #mad WeatherCycle 1
scoreboard players set #mad DaylightCycle 1
scoreboard players set #mad NumberOfMinecarts 1
scoreboard players set #mad WeatherCyclePrv 1
scoreboard players set #mad DaylightCyclePrv 1
scoreboard players set #mad NumberOfMinecartsPrv 1
#### setting phase - choose team setting
scoreboard players set #mad IsTeam 0
scoreboard players set #mad SetTeamManual 0
scoreboard players set #mad NumberOfTeams 2
scoreboard players set #mad NumberOfBeacons 1
scoreboard players set #mad RespawnBannerTime -60
scoreboard players set #mad KillTime 200
scoreboard players set #mad DeathPenaltyTime 0
scoreboard players set #mad friendlyFire 1
scoreboard players set #mad collisionRule 1
scoreboard players set #mad VisibleName 1
scoreboard players set #mad VisibleInvis 1
scoreboard players set #mad VisibleDeath 1
scoreboard players set #mad SetTeamManualPrv 0
scoreboard players set #mad NumberOfTeamsPrv 2
scoreboard players set #mad NumberOfBeaconsPrv 1
scoreboard players set #mad RespawnBannerTimePrv -60
scoreboard players set #mad KillTimePrv 200
scoreboard players set #mad DeathPenaltyTimePrv 0
scoreboard players set #mad friendlyFirePrv 1
scoreboard players set #mad collisionRulePrv 1
scoreboard players set #mad VisibleNamePrv 1
scoreboard players set #mad VisibleInvisPrv 1
scoreboard players set #mad VisibleDeathPrv 1
#### wait phase
scoreboard players set #mad WaitTime 30
#### summons minecart
scoreboard players set #mad SecondSummon 300
#### team
scoreboard players set #mad TeamMemberNotExist 0
#### maze maker
scoreboard players set #mad MazeNumber 1
#### respawn beacon
scoreboard players set #mad CompareNames 1
scoreboard players set #mad DetectTeamExists 1
#### mobile respawn beacon
scoreboard players set #mad MobileBeaconNumber 1
#### add-on
scoreboard players set #mad LoadAddon 0

#### game phase
scoreboard players set @a Phase 0
scoreboard players set @a Death 0
scoreboard players set @a Kill 0
scoreboard players set @a KillTemp 0
scoreboard players set @a TeleportMinecart 0
scoreboard players enable @a TeleportMinecart
scoreboard players set @a TeleportCenter 0
scoreboard players enable @a TeleportCenter
scoreboard players set @a ExitMessage 0
scoreboard players enable @a ExitMessage
#### timer
scoreboard players set @a Second 0
scoreboard players set @a Tick 0
scoreboard players set @a GeneralSecond 0
scoreboard players set #mad GeneralSecond 0
scoreboard players set #mad GeneralTick 0
scoreboard players set @a SecondPerSurvive 0
#### participants
scoreboard players set @a ParticipantNumber 0
scoreboard players set @a NumOfParticipants 0
scoreboard players set @a NumAlive 0
scoreboard players set @a NumDead 0
#### onground
scoreboard players set @a OnGround 0
#### setting phase - choose time limit
scoreboard players set @a GetTimeLimit 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_1 run scoreboard players set #mad_team_a GetTimeLimit 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_2 run scoreboard players set #mad_team_b GetTimeLimit 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_3 run scoreboard players set #mad_team_c GetTimeLimit 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_4 run scoreboard players set #mad_team_d GetTimeLimit 0
#### setting phase - choose area
scoreboard players set @a WorldBorder 1000
scoreboard players set @a WorldBorderPrv 1000
#### advancements
scoreboard players set @a HasAdvancements 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_1 run scoreboard players set #mad_team_a HasAdvancements 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_2 run scoreboard players set #mad_team_b HasAdvancements 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_3 run scoreboard players set #mad_team_c HasAdvancements 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_4 run scoreboard players set #mad_team_d HasAdvancements 0
#### advancements - originals
scoreboard players set @a BreakSpawner 0
#### advancements - achievements
scoreboard players set @a FallDistance 0
scoreboard players set @a RailDistance 0
#### summons minecart
scoreboard players set @a GetMinecartCount 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_1 run scoreboard players set #mad_team_a GetMinecartCount 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_2 run scoreboard players set #mad_team_b GetMinecartCount 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_3 run scoreboard players set #mad_team_c GetMinecartCount 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_4 run scoreboard players set #mad_team_d GetMinecartCount 0
#### transmitter
scoreboard players set @a UseTransmitter 0
scoreboard players set @a TransmitterPosX 0
scoreboard players set @a TransmitterPosY 0
scoreboard players set @a TransmitterPosZ 0
scoreboard players set @a SetRespawnBanner 0
#### emergency call
scoreboard players set @a UseEmergencyCall 0
#### armor upgrader
scoreboard players set @a UseArmorUpgrader 0
#### tool upgrader
scoreboard players set @a UseToolUpgrader 0
#### notice of thief
scoreboard players set @a UseNoticeOfThief 0
scoreboard players set @a ThiefTick 0
scoreboard players set @a ThiefSecond 5
scoreboard players set #mad ThiefSecond 5
scoreboard players set @a StealResult 0
#### warden fangs wand
scoreboard players set @a UseFungusStick 0
#### maze maker
scoreboard players set @a UseMazeMaker 0
#### teleport arrow
scoreboard players set @a ArrowTeleportTick 0
scoreboard players set @a ArrowTeleportPosX 0
scoreboard players set @a ArrowTeleportPosY 0
scoreboard players set @a ArrowTeleportPosZ 0
#### mobile respawn beacon
scoreboard players set @a MobileBeaconNumber 0
#### respawn banner
execute as @a store result score @s UUID0 run data get entity @s UUID[0]
execute as @a store result score @s UUID1 run data get entity @s UUID[1]
execute as @a store result score @s UUID2 run data get entity @s UUID[2]
execute as @a store result score @s UUID3 run data get entity @s UUID[3]
#### team
execute if predicate mad:gamerules/team_match/number_of_teams/ge_1 run scoreboard players set #mad_team_a DeadOwnTeam 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_2 run scoreboard players set #mad_team_b DeadOwnTeam 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_3 run scoreboard players set #mad_team_c DeadOwnTeam 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_4 run scoreboard players set #mad_team_d DeadOwnTeam 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_1 run scoreboard players set #mad_team_a NumOfTeamPlayer 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_2 run scoreboard players set #mad_team_b NumOfTeamPlayer 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_3 run scoreboard players set #mad_team_c NumOfTeamPlayer 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_4 run scoreboard players set #mad_team_d NumOfTeamPlayer 0
#### result
scoreboard players set @a ResultTmp 0