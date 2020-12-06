#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Add scoreboards for game phase
scoreboard objectives add Phase dummy
scoreboard objectives add Death minecraft.custom:minecraft.deaths
scoreboard objectives add SpawnTime minecraft.custom:minecraft.time_since_death
scoreboard objectives add Kill dummy
scoreboard objectives add KillTemp minecraft.custom:minecraft.player_kills
scoreboard objectives add TeleportMessage trigger
scoreboard objectives add ExitMessage trigger
## Add scoreboards for timer
scoreboard objectives add Second dummy
scoreboard objectives add Tick dummy
scoreboard objectives add GeneralSecond dummy
scoreboard objectives add GeneralTick dummy
scoreboard objectives add SecondPerSurvive dummy
## Add scoreboards for participants
scoreboard objectives add Participant dummy
scoreboard objectives add NumParticipant dummy
scoreboard objectives add NumAlive dummy
scoreboard objectives add NumDead dummy
## Add scoreboards for onground
scoreboard objectives add OnGround dummy
## Add scoreboards for area
scoreboard objectives add 100 dummy
scoreboard objectives add OriginX dummy
scoreboard objectives add OriginY dummy
scoreboard objectives add OriginZ dummy
scoreboard objectives add PosX dummy
scoreboard objectives add PosY dummy
scoreboard objectives add PosZ dummy
scoreboard objectives add SummonPosition dummy
## Add scoreboards for randomizer
scoreboard objectives add RandomSeed dummy
scoreboard objectives add RandomCount dummy
scoreboard objectives add RandomAnswer dummy
scoreboard objectives add RandomModder dummy
scoreboard objectives add RandomMultiplier dummy
## Add scoreboards for setting phase - common
scoreboard objectives add ThrowItem dummy
scoreboard objectives add Select02 dummy
scoreboard objectives add Select03 dummy
scoreboard objectives add Select04 dummy
scoreboard objectives add Select05 dummy
scoreboard objectives add Select06 dummy
scoreboard objectives add Select09 dummy
scoreboard objectives add Select10 dummy
scoreboard objectives add Select11 dummy
scoreboard objectives add Select12 dummy
scoreboard objectives add Select13 dummy
scoreboard objectives add Select14 dummy
scoreboard objectives add Select15 dummy
scoreboard objectives add Select16 dummy
scoreboard objectives add Select17 dummy
scoreboard objectives add Select18 dummy
scoreboard objectives add Select19 dummy
scoreboard objectives add Select20 dummy
scoreboard objectives add Select21 dummy
scoreboard objectives add Select22 dummy
scoreboard objectives add Select23 dummy
scoreboard objectives add Select24 dummy
scoreboard objectives add Select25 dummy
scoreboard objectives add Select26 dummy
scoreboard objectives add Select28 dummy
scoreboard objectives add Select31 dummy
scoreboard objectives add Select34 dummy
scoreboard objectives add Selected dummy
## Add scoreboards for setting phase - choose time limit
scoreboard objectives add TimeLimit dummy
scoreboard objectives add TimeLimitPrv dummy
scoreboard objectives add GetTimeLimit dummy
## Add scoreboards for setting phase - choose area
scoreboard objectives add WorldBorder dummy
scoreboard objectives add WorldBorderPrv dummy
## Add scoreboards for setting phase - choose difficulty
scoreboard objectives add Difficulty dummy
scoreboard objectives add DifficultyPrv dummy
## Add scoreboards for setting phase - choose adding time
scoreboard objectives add AddingTime dummy
scoreboard objectives add AddingTimePrv dummy
## Add scoreboards for setting phase - choose gamerule
scoreboard objectives add WeatherCycle dummy
scoreboard objectives add DaylightCycle dummy
scoreboard objectives add WeatherCyclePrv dummy
scoreboard objectives add DaylightCyclePrv dummy
## Add scoreboards for setting phase - choose team setting
scoreboard objectives add IsTeam dummy
scoreboard objectives add friendlyFire dummy
scoreboard objectives add collisionRule dummy
scoreboard objectives add VisibleName dummy
scoreboard objectives add VisibleInvis dummy
scoreboard objectives add VisibleDeath dummy
scoreboard objectives add SetTeamManual dummy
scoreboard objectives add TeamNumber dummy
scoreboard objectives add friendlyFirePrv dummy
scoreboard objectives add collisionRulePrv dummy
scoreboard objectives add VisibleNamePrv dummy
scoreboard objectives add VisibleInvisPrv dummy
scoreboard objectives add VisibleDeathPrv dummy
scoreboard objectives add SetTeamManualPrv dummy
scoreboard objectives add TeamNumberPrv dummy
## Add scoreboards for advancements
scoreboard objectives add HasAdvancements dummy
## Add scoreboards for summons minecart
scoreboard objectives add 300 dummy
scoreboard objectives add SecondSummon dummy
scoreboard objectives add SecondEliminate dummy
scoreboard objectives add SummonInterval dummy
scoreboard objectives add SummonMinecart dummy
## Add scoreboards for transmitter
scoreboard objectives add UseTransmitter trigger
scoreboard objectives add TransmitterPosX dummy
scoreboard objectives add TransmitterPosY dummy
scoreboard objectives add TransmitterPosZ dummy
## Add scoreboards for respawn beacon
scoreboard objectives add UseRespawnBeacon minecraft.used:minecraft.armor_stand
scoreboard objectives add NumRespawnBeacon dummy
scoreboard objectives add Sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add Role dummy
scoreboard objectives add NumOfRespawn dummy
scoreboard objectives add 10 dummy
scoreboard objectives add PageNumer dummy
scoreboard objectives add PageDenom dummy
scoreboard objectives add TurnPageNum dummy
scoreboard objectives add TurnPageMax dummy
scoreboard objectives add TargetOfRespawn dummy
scoreboard objectives add TurnPageRight trigger
scoreboard objectives add TurnPageLeft trigger
scoreboard objectives add RespawnTrigger trigger
## Add scoreboards for team
scoreboard objectives add TeamBoolean dummy
scoreboard objectives add DeadTeamA dummy
scoreboard objectives add DeadTeamB dummy
scoreboard objectives add DeadTeamC dummy
scoreboard objectives add DeadTeamD dummy
scoreboard objectives add DeadTeamE dummy
scoreboard objectives add NumOfTeamPlayer dummy

## Set scoreboards for game phase
scoreboard players set #mad Phase 0
scoreboard players set #mad Difficulty 0
scoreboard players set #mad ExitMessage 0
## Set scoreboards for participants
scoreboard players set #mad Participant 0
scoreboard players set #mad NumParticipant 0
scoreboard players set #mad NumAlive 0
scoreboard players set #mad NumDead 0
## Set scoreboards for area
scoreboard players set #mad 100 100
scoreboard players set #mad OriginX 0
scoreboard players set #mad OriginY 63
scoreboard players set #mad OriginZ 0
scoreboard players set #mad PosX 0
scoreboard players set #mad PosY 63
scoreboard players set #mad PosZ 0
scoreboard players set #mad SummonPosition 0
## Set scoreboards for randomizer
scoreboard players set #mad RandomSeed 0
scoreboard players set #mad RandomCount 10
scoreboard players set #mad RandomAnswer 0
scoreboard players set #mad RandomModder 2147483647
scoreboard players set #mad RandomMultiplier 48271
## Set scoreboards for setting phase - choose time limit
scoreboard players set #mad TimeLimit 100
scoreboard players set #mad TimeLimitPrv 100
## Set scoreboards for setting phase - choose area
scoreboard players set #mad WorldBorder 1000
scoreboard players set #mad WorldBorderPrv 1000
## Set scoreboards for setting phase - choose difficulty
scoreboard players set #mad Difficulty 2
scoreboard players set #mad DifficultyPrv 2
## Set scoreboards for setting phase - choose adding time
scoreboard players set #mad AddingTime 100
scoreboard players set #mad AddingTimePrv 100
## Set scoreboards for setting phase - choose gamerule
scoreboard players set #mad WeatherCycle 1
scoreboard players set #mad DaylightCycle 1
scoreboard players set #mad WeatherCyclePrv 1
scoreboard players set #mad DaylightCyclePrv 1
## Set scoreboards for setting phase - choose team setting
scoreboard players set #mad IsTeam 0
scoreboard players set #mad friendlyFire 1
scoreboard players set #mad collisionRule 1
scoreboard players set #mad VisibleName 0
scoreboard players set #mad VisibleInvis 0
scoreboard players set #mad VisibleDeath 0
scoreboard players set #mad SetTeamManual 0
scoreboard players set #mad TeamNumber 2
scoreboard players set #mad friendlyFirePrv 1
scoreboard players set #mad collisionRulePrv 1
scoreboard players set #mad VisibleNamePrv 0
scoreboard players set #mad VisibleInvisPrv 0
scoreboard players set #mad VisibleDeathPrv 0
scoreboard players set #mad SetTeamManualPrv 0
scoreboard players set #mad TeamNumberPrv 2
## Set scoreboards for summons minecart
scoreboard players set #mad 300 300
scoreboard players set #mad SecondSummon 100
scoreboard players set #mad SecondEliminate 0
scoreboard players set #mad SummonInterval 100
scoreboard players set #mad SummonMinecart 0
## Set scoreboards for team
scoreboard players set #mad TeamBoolean 0
scoreboard players set #mad DeadTeamA 0
scoreboard players set #mad DeadTeamB 0
scoreboard players set #mad DeadTeamC 0
scoreboard players set #mad DeadTeamD 0
scoreboard players set #mad DeadTeamE 0
## Set scoreboards for respawn beacon
scoreboard players set #mad 10 10

## Set scoreboards for game phase
scoreboard players set @a Phase 0
scoreboard players set @a Death 0
scoreboard players set @a SpawnTime 0
scoreboard players set @a Kill 0
scoreboard players set @a KillTemp 0
scoreboard players set @a TeleportMessage 0
scoreboard players enable @a TeleportMessage
scoreboard players set @a ExitMessage 0
scoreboard players enable @a ExitMessage
## Set scoreboards for timer
scoreboard players set @a Second 0
scoreboard players set @a Tick 0
scoreboard players set @a GeneralSecond 0
scoreboard players set @a GeneralTick 0
scoreboard players set @a SecondPerSurvive 0
## Set scoreboards for participants
scoreboard players set @a Participant 0
scoreboard players set @a NumParticipant 0
scoreboard players set @a NumAlive 0
scoreboard players set @a NumDead 0
## Set scoreboards for onground
scoreboard players set @a OnGround 0
## Set scoreboards for area
scoreboard players set @a SummonPosition 0
## Set scoreboards for setting phase - common
scoreboard players set @a ThrowItem 0
scoreboard players set @a Select02 0
scoreboard players set @a Select03 0
scoreboard players set @a Select04 0
scoreboard players set @a Select05 0
scoreboard players set @a Select06 0
scoreboard players set @a Select09 0
scoreboard players set @a Select10 0
scoreboard players set @a Select11 0
scoreboard players set @a Select12 0
scoreboard players set @a Select13 0
scoreboard players set @a Select14 0
scoreboard players set @a Select15 0
scoreboard players set @a Select16 0
scoreboard players set @a Select17 0
scoreboard players set @a Select18 0
scoreboard players set @a Select19 0
scoreboard players set @a Select20 0
scoreboard players set @a Select21 0
scoreboard players set @a Select22 0
scoreboard players set @a Select23 0
scoreboard players set @a Select24 0
scoreboard players set @a Select25 0
scoreboard players set @a Select26 0
scoreboard players set @a Select28 0
scoreboard players set @a Select31 0
scoreboard players set @a Select34 0
scoreboard players set @a Selected 0
## Set scoreboards for advancements
scoreboard players set @a HasAdvancements 0
## Set scoreboards for transmitter
scoreboard players set @a UseTransmitter 0
scoreboard players enable @a UseTransmitter
scoreboard players set @a TransmitterPosX 0
scoreboard players set @a TransmitterPosY 0
scoreboard players set @a TransmitterPosZ 0
## Set scoreboards for respawn beacon
scoreboard players set @a UseRespawnBeacon 0
scoreboard players set @a NumRespawnBeacon 0
scoreboard players enable @a UseRespawnBeacon
scoreboard players set @a NumOfRespawn 0
scoreboard players set @a Role 0
scoreboard players set @a PageNumer 0
scoreboard players set @a PageDenom 0
scoreboard players set @a TurnPageNum 0
scoreboard players set @a TargetOfRespawn 0
scoreboard players set @a TurnPageRight 0
scoreboard players set @a TurnPageLeft 0
scoreboard players set @a RespawnTrigger 0
scoreboard players enable @a TurnPageRight
scoreboard players enable @a TurnPageLeft
scoreboard players enable @a RespawnTrigger
## Set scoreboards for team
scoreboard players set @a NumOfTeamPlayer 0

## Random
function mad:system/random_generator/initialize