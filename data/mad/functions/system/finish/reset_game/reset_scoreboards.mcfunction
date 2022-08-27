#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 28 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Remove scoreboards
#### game phase
scoreboard objectives remove DataVersion
scoreboard objectives remove Version
scoreboard objectives remove Phase
scoreboard objectives remove PrevPhase
scoreboard objectives remove Death
scoreboard objectives remove Kill
scoreboard objectives remove KillTemp
scoreboard objectives remove TeleportMinecart
scoreboard objectives remove TeleportCenter
scoreboard objectives remove ExitMessage
#### timer
scoreboard objectives remove -1
scoreboard objectives remove 2
scoreboard objectives remove Second
scoreboard objectives remove Tick
scoreboard objectives remove GeneralSecond
scoreboard objectives remove GeneralTick
scoreboard objectives remove SecondPerSurvive
#### participants
scoreboard objectives remove ParticipantNumber
scoreboard objectives remove NumOfParticipants
scoreboard objectives remove NumAlive
scoreboard objectives remove NumDead
#### onground
scoreboard objectives remove OnGround
#### position
scoreboard objectives remove PosX
scoreboard objectives remove PosY
scoreboard objectives remove PosZ
scoreboard objectives remove 45
scoreboard objectives remove Angle
#### randomizer
scoreboard objectives remove RandomSeed
scoreboard objectives remove RandomCount
scoreboard objectives remove RandomAnswer
scoreboard objectives remove RandomModder
scoreboard objectives remove RandomMultiplier
#### setting phase - choose time limit
scoreboard objectives remove 10
scoreboard objectives remove 100
scoreboard objectives remove 1000
scoreboard objectives remove 10000
scoreboard objectives remove Digit0001
scoreboard objectives remove Digit0010
scoreboard objectives remove Digit0100
scoreboard objectives remove Digit1000
scoreboard objectives remove TimeLimit
scoreboard objectives remove TimeLimitPrv
scoreboard objectives remove GetTimeLimit
#### setting phase - choose area
scoreboard objectives remove WorldBorder
scoreboard objectives remove WorldBorderTmp
scoreboard objectives remove WorldBorderPrv
scoreboard objectives remove WorldBorderEnd
scoreboard objectives remove PosXCeil
scoreboard objectives remove PosZCeil
scoreboard objectives remove PosXFloor
scoreboard objectives remove PosZFloor
#### setting phase - choose difficulty
scoreboard objectives remove Difficulty
scoreboard objectives remove DifficultyPrv
#### setting phase - choose adding time
scoreboard objectives remove AddingTime
scoreboard objectives remove AddingTimePrv
#### setting phase - choose minecart interval
scoreboard objectives remove CartInterval
scoreboard objectives remove CartIntervalPrv
#### setting phase - choose gamerule
scoreboard objectives remove WeatherCycle
scoreboard objectives remove DaylightCycle
scoreboard objectives remove NumberOfMinecarts
scoreboard objectives remove WeatherCyclePrv
scoreboard objectives remove DaylightCyclePrv
scoreboard objectives remove NumberOfMinecartsPrv
#### setting phase - choose team setting
scoreboard objectives remove IsTeam
scoreboard objectives remove SetTeamManual
scoreboard objectives remove NumberOfTeams
scoreboard objectives remove NumberOfBeacons
scoreboard objectives remove RespawnBannerTime
scoreboard objectives remove KillTime
scoreboard objectives remove DeathPenaltyTime
scoreboard objectives remove friendlyFire
scoreboard objectives remove collisionRule
scoreboard objectives remove VisibleName
scoreboard objectives remove VisibleInvis
scoreboard objectives remove VisibleDeath
scoreboard objectives remove SetTeamManualPrv
scoreboard objectives remove NumberOfTeamsPrv
scoreboard objectives remove NumberOfBeaconsPrv
scoreboard objectives remove RespawnBannerTimePrv
scoreboard objectives remove KillTimePrv
scoreboard objectives remove DeathPenaltyTimePrv
scoreboard objectives remove friendlyFirePrv
scoreboard objectives remove collisionRulePrv
scoreboard objectives remove VisibleNamePrv
scoreboard objectives remove VisibleInvisPrv
scoreboard objectives remove VisibleDeathPrv
#### wait phase
scoreboard objectives remove WaitTime
scoreboard objectives remove Sidebar
#### advancements
scoreboard objectives remove HasAdvancements
#### advancements - achievements
scoreboard objectives remove FallDistance
scoreboard objectives remove RailDistance
#### advancements - originals
scoreboard objectives remove BreakSpawner
#### summons minecart
scoreboard objectives remove 300
scoreboard objectives remove SecondSummon
scoreboard objectives remove GetMinecartCount
scoreboard objectives remove HasLootTable
#### transmitter
scoreboard objectives remove UseTransmitter
scoreboard objectives remove TransmitterPosX
scoreboard objectives remove TransmitterPosY
scoreboard objectives remove TransmitterPosZ
scoreboard objectives remove BannerDimension
scoreboard objectives remove BannerPosX
scoreboard objectives remove BannerPosY
scoreboard objectives remove BannerPosZ
scoreboard objectives remove SetRespawnBanner
scoreboard objectives remove TempBannerNum
#### emergency call
scoreboard objectives remove UseEmergencyCall
#### armor upgrader
scoreboard objectives remove UseArmorUpgrader
#### tool upgrader
scoreboard objectives remove UseToolUpgrader
#### notice of thief
scoreboard objectives remove UseNoticeOfThief
scoreboard objectives remove ThiefTick
scoreboard objectives remove ThiefSecond
scoreboard objectives remove StealResult
#### evoker fangs wand
scoreboard objectives remove UseFungusStick
scoreboard objectives remove EvokerFangsCount
#### respawn beacon
scoreboard objectives remove BeaconNumber
scoreboard objectives remove CompareNames
scoreboard objectives remove DetectTeamExists
#### mobile respawn beacon
scoreboard objectives remove MobileBeaconNumber
scoreboard objectives remove MobileBeaconTmp
#### team
scoreboard objectives remove TeamMemberNotExist
scoreboard objectives remove DeadOwnTeam
scoreboard objectives remove NumOfTeamPlayer
#### result
scoreboard objectives remove ResultTmp
#### add-on
scoreboard objectives remove LoadAddon

## Reset players
scoreboard players reset @a
scoreboard players reset #mad
scoreboard players reset #mad_team_a
scoreboard players reset #mad_team_b
scoreboard players reset #mad_team_c
scoreboard players reset #mad_team_d
scoreboard players reset #mad_team_e