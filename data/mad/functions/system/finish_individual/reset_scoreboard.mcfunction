#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Remove scoreboards for game phase
scoreboard objectives remove Version
scoreboard objectives remove Phase
scoreboard objectives remove Death
scoreboard objectives remove SpawnTime
scoreboard objectives remove Kill
scoreboard objectives remove KillTemp
scoreboard objectives remove TeleportMessage
scoreboard objectives remove ExitMessage
## Remove scoreboards for timer
scoreboard objectives remove Second
scoreboard objectives remove Tick
scoreboard objectives remove GeneralSecond
scoreboard objectives remove GeneralTick
scoreboard objectives remove SecondPerSurvive
## Remove scoreboards for participants
scoreboard objectives remove Participant
scoreboard objectives remove NumParticipant
scoreboard objectives remove NumAlive
scoreboard objectives remove NumDead
## Remove scoreboards for onground
scoreboard objectives remove OnGround
## Remove scoreboards for area
scoreboard objectives remove 2
scoreboard objectives remove 100
scoreboard objectives remove OriginX
scoreboard objectives remove OriginY
scoreboard objectives remove OriginZ
scoreboard objectives remove PosX
scoreboard objectives remove PosY
scoreboard objectives remove PosZ
scoreboard objectives remove SummonPosition
## Remove scoreboards for randomizer
scoreboard objectives remove RandomSeed
scoreboard objectives remove RandomCount
scoreboard objectives remove RandomAnswer
scoreboard objectives remove RandomModder
scoreboard objectives remove RandomMultiplier
## Remove scoreboards for setting phase - common
scoreboard objectives remove ThrowItem
scoreboard objectives remove Select02
scoreboard objectives remove Select03
scoreboard objectives remove Select04
scoreboard objectives remove Select05
scoreboard objectives remove Select06
scoreboard objectives remove Select09
scoreboard objectives remove Select10
scoreboard objectives remove Select11
scoreboard objectives remove Select12
scoreboard objectives remove Select13
scoreboard objectives remove Select14
scoreboard objectives remove Select15
scoreboard objectives remove Select16
scoreboard objectives remove Select17
scoreboard objectives remove Select18
scoreboard objectives remove Select19
scoreboard objectives remove Select20
scoreboard objectives remove Select21
scoreboard objectives remove Select22
scoreboard objectives remove Select23
scoreboard objectives remove Select24
scoreboard objectives remove Select25
scoreboard objectives remove Select26
scoreboard objectives remove Select28
scoreboard objectives remove Select31
scoreboard objectives remove Select34
scoreboard objectives remove Selected
## Remove scoreboards for setting phase - choose time limit
scoreboard objectives remove TimeLimit
scoreboard objectives remove TimeLimitPrv
scoreboard objectives remove GetTimeLimit
## Remove scoreboards for setting phase - choose area
scoreboard objectives remove WorldBorder
scoreboard objectives remove WorldBorderPrv
## Remove scoreboards for setting phase - choose difficulty
scoreboard objectives remove Difficulty
scoreboard objectives remove DifficultyPrv
## Remove scoreboards for setting phase - choose adding time
scoreboard objectives remove AddingTime
scoreboard objectives remove AddingTimePrv
## Remove scoreboards for setting phase - choose gamerule
scoreboard objectives remove WeatherCycle
scoreboard objectives remove DaylightCycle
scoreboard objectives remove WeatherCyclePrv
scoreboard objectives remove DaylightCyclePrv
## Remove scoreboards for setting phase - choose team setting
scoreboard objectives remove IsTeam
scoreboard objectives remove friendlyFire
scoreboard objectives remove collisionRule
scoreboard objectives remove VisibleName
scoreboard objectives remove VisibleInvis
scoreboard objectives remove VisibleDeath
scoreboard objectives remove SetTeamManual
scoreboard objectives remove TeamNumber
scoreboard objectives remove friendlyFirePrv
scoreboard objectives remove collisionRulePrv
scoreboard objectives remove VisibleNamePrv
scoreboard objectives remove VisibleInvisPrv
scoreboard objectives remove VisibleDeathPrv
scoreboard objectives remove SetTeamManualPrv
scoreboard objectives remove TeamNumberPrv
## Remove scoreboards for advancements
scoreboard objectives remove HasAdvancements
## Remove scoreboards for summons minecart
scoreboard objectives remove 300
scoreboard objectives remove SecondSummon
scoreboard objectives remove SecondEliminate
scoreboard objectives remove SummonMinecart
## Remove scoreboards for transmitter
scoreboard objectives remove UseTransmitter
scoreboard objectives remove TransmitterPosX
scoreboard objectives remove TransmitterPosY
scoreboard objectives remove TransmitterPosZ
## Remove scoreboards for respawn beacon
scoreboard objectives remove UseRespawnBeacon
scoreboard objectives remove NumRespawnBeacon
scoreboard objectives remove Sneak
scoreboard objectives remove Role
scoreboard objectives remove NumOfRespawn
scoreboard objectives remove 10
scoreboard objectives remove PageNumer
scoreboard objectives remove PageDenom
scoreboard objectives remove TurnPageNum
scoreboard objectives remove TurnPageMax
scoreboard objectives remove TargetOfRespawn
scoreboard objectives remove TurnPageRight
scoreboard objectives remove TurnPageLeft
scoreboard objectives remove RespawnTrigger
## Remove scoreboards for team
scoreboard objectives remove TeamBoolean
scoreboard objectives remove DeadTeamA
scoreboard objectives remove DeadTeamB
scoreboard objectives remove DeadTeamC
scoreboard objectives remove DeadTeamD
scoreboard objectives remove DeadTeamE
scoreboard objectives remove NumOfTeamPlayer

## Remove players
scoreboard players reset @a
scoreboard players reset #mad