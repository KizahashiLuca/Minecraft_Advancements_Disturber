#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Remove scoreboards
#### game phase
scoreboard objectives remove DataVersion
scoreboard objectives remove Version
scoreboard objectives remove Phase
scoreboard objectives remove PvP
scoreboard objectives remove Death
scoreboard objectives remove Kill
scoreboard objectives remove KillTemp
scoreboard objectives remove TimeSinceDeath
scoreboard objectives remove TeleportMinecart
scoreboard objectives remove TeleportCenter
scoreboard objectives remove ExitMessage
scoreboard objectives remove Sidebar
scoreboard objectives remove SidebarA
scoreboard objectives remove SidebarB
scoreboard objectives remove SidebarC
scoreboard objectives remove SidebarD
scoreboard objectives remove SidebarE
#### timer
scoreboard objectives remove 2
scoreboard objectives remove Second
scoreboard objectives remove Tick
scoreboard objectives remove GeneralSecond
scoreboard objectives remove GeneralTick
scoreboard objectives remove PvPSecond
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
#### advancements
scoreboard objectives remove HasAdvancements
#### advancements - originals
scoreboard objectives remove BreakSpawner
#### advancements - achievements
scoreboard objectives remove FallDistance
scoreboard objectives remove RailDistance
#### summons minecart
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
#### warden fangs wand
scoreboard objectives remove UseFungusStick
scoreboard objectives remove SonicBoomCount
#### maze maker
scoreboard objectives remove UseMazeMaker
scoreboard objectives remove RandomMax
scoreboard objectives remove RandomAngle
scoreboard objectives remove MazeNumber
scoreboard objectives remove MazeNumberTmp
scoreboard objectives remove MazePosX
scoreboard objectives remove MazePosZ
scoreboard objectives remove DeadEnd
scoreboard objectives remove HasExit
#### teleport arrow
scoreboard objectives remove ArrowTeleportTick
scoreboard objectives remove ArrowTeleportPosX
scoreboard objectives remove ArrowTeleportPosY
scoreboard objectives remove ArrowTeleportPosZ
#### respawn beacon
scoreboard objectives remove BeaconNumber
scoreboard objectives remove CompareNames
scoreboard objectives remove DetectTeamExists
#### mobile respawn beacon
scoreboard objectives remove MobileBeaconNumber
scoreboard objectives remove MobileBeaconTmp
#### respawn banner
scoreboard objectives remove OwnerExists
scoreboard objectives remove UUID0
scoreboard objectives remove UUID1
scoreboard objectives remove UUID2
scoreboard objectives remove UUID3
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
scoreboard players reset マッチモード:
scoreboard players reset 人数:
scoreboard players reset チーム数:
scoreboard players reset 初期生存時間（秒）:
scoreboard players reset 追加生存時間（秒）:
scoreboard players reset 物資投下間隔（秒）:
scoreboard players reset ワールドボーダー
scoreboard players reset （ブロック四方）:
scoreboard players reset 天候サイクル:
scoreboard players reset 昼夜サイクル:
scoreboard players reset 難易度:
scoreboard players reset 【支援物資情報】
scoreboard players reset 投下まであと:
scoreboard players reset 既に投下済み
scoreboard players reset X:
scoreboard players reset Z:
scoreboard players reset スペース
scoreboard players reset 【リスポーンバナー座標】