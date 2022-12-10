#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Add scoreboards
#### game phase
scoreboard objectives add DataVersion dummy
scoreboard objectives add Version dummy
scoreboard objectives add Phase dummy
scoreboard objectives add PrevPhase dummy
scoreboard objectives add Death minecraft.custom:minecraft.deaths
scoreboard objectives add Kill dummy
scoreboard objectives add KillTemp minecraft.custom:minecraft.player_kills
scoreboard objectives add TeleportMinecart trigger
scoreboard objectives add TeleportCenter trigger
scoreboard objectives add ExitMessage trigger
#### timer
scoreboard objectives add -1 dummy
scoreboard objectives add 2 dummy
scoreboard objectives add Second dummy
scoreboard objectives add Tick dummy
scoreboard objectives add GeneralSecond dummy
scoreboard objectives add GeneralTick dummy
scoreboard objectives add SecondPerSurvive dummy
#### participants
scoreboard objectives add ParticipantNumber dummy
scoreboard objectives add NumOfParticipants dummy
scoreboard objectives add NumAlive dummy
scoreboard objectives add NumDead dummy
#### onground
scoreboard objectives add OnGround dummy
#### position
scoreboard objectives add PosX dummy
scoreboard objectives add PosY dummy
scoreboard objectives add PosZ dummy
scoreboard objectives add 45 dummy
scoreboard objectives add Angle dummy
#### randomizer
scoreboard objectives add RandomSeed dummy
scoreboard objectives add RandomCount dummy
scoreboard objectives add RandomAnswer dummy
scoreboard objectives add RandomModder dummy
scoreboard objectives add RandomMultiplier dummy
#### setting phase - choose time limit
scoreboard objectives add 10 dummy
scoreboard objectives add 100 dummy
scoreboard objectives add 1000 dummy
scoreboard objectives add 10000 dummy
scoreboard objectives add Digit0001 dummy
scoreboard objectives add Digit0010 dummy
scoreboard objectives add Digit0100 dummy
scoreboard objectives add Digit1000 dummy
scoreboard objectives add TimeLimit dummy
scoreboard objectives add TimeLimitPrv dummy
scoreboard objectives add GetTimeLimit dummy
#### setting phase - choose area
scoreboard objectives add WorldBorder dummy
scoreboard objectives add WorldBorderTmp dummy
scoreboard objectives add WorldBorderPrv dummy
scoreboard objectives add WorldBorderEnd dummy
scoreboard objectives add PosXCeil dummy
scoreboard objectives add PosZCeil dummy
scoreboard objectives add PosXFloor dummy
scoreboard objectives add PosZFloor dummy
#### setting phase - choose difficulty
scoreboard objectives add Difficulty dummy
scoreboard objectives add DifficultyPrv dummy
#### setting phase - choose adding time
scoreboard objectives add AddingTime dummy
scoreboard objectives add AddingTimePrv dummy
#### setting phase - choose minecart interval
scoreboard objectives add CartInterval dummy
scoreboard objectives add CartIntervalPrv dummy
#### setting phase - choose gamerule
scoreboard objectives add WeatherCycle dummy
scoreboard objectives add DaylightCycle dummy
scoreboard objectives add NumberOfMinecarts dummy
scoreboard objectives add WeatherCyclePrv dummy
scoreboard objectives add DaylightCyclePrv dummy
scoreboard objectives add NumberOfMinecartsPrv dummy
#### setting phase - choose team setting
scoreboard objectives add IsTeam dummy
scoreboard objectives add SetTeamManual dummy
scoreboard objectives add NumberOfTeams dummy
scoreboard objectives add NumberOfBeacons dummy
scoreboard objectives add RespawnBannerTime dummy
scoreboard objectives add KillTime dummy
scoreboard objectives add DeathPenaltyTime dummy
scoreboard objectives add friendlyFire dummy
scoreboard objectives add collisionRule dummy
scoreboard objectives add VisibleName dummy
scoreboard objectives add VisibleInvis dummy
scoreboard objectives add VisibleDeath dummy
scoreboard objectives add SetTeamManualPrv dummy
scoreboard objectives add NumberOfTeamsPrv dummy
scoreboard objectives add NumberOfBeaconsPrv dummy
scoreboard objectives add RespawnBannerTimePrv dummy
scoreboard objectives add KillTimePrv dummy
scoreboard objectives add DeathPenaltyTimePrv dummy
scoreboard objectives add friendlyFirePrv dummy
scoreboard objectives add collisionRulePrv dummy
scoreboard objectives add VisibleNamePrv dummy
scoreboard objectives add VisibleInvisPrv dummy
scoreboard objectives add VisibleDeathPrv dummy
#### wait phase
scoreboard objectives add WaitTime dummy
scoreboard objectives add Sidebar dummy ["",{"text":"設定項目"}]
#### advancements
scoreboard objectives add HasAdvancements dummy ["",{"text":"解除済み進捗個数"}]
#### advancements - originals
scoreboard objectives add BreakSpawner minecraft.mined:minecraft.spawner
#### advancements - achievements
scoreboard objectives add FallDistance dummy
scoreboard objectives add RailDistance minecraft.custom:minecraft.minecart_one_cm
#### summons minecart
scoreboard objectives add 300 dummy
scoreboard objectives add SecondSummon dummy
scoreboard objectives add GetMinecartCount dummy
scoreboard objectives add HasLootTable dummy
#### transmitter
scoreboard objectives add UseTransmitter minecraft.used:minecraft.vindicator_spawn_egg
scoreboard objectives add TransmitterPosX dummy
scoreboard objectives add TransmitterPosY dummy
scoreboard objectives add TransmitterPosZ dummy
scoreboard objectives add BannerDimension dummy
scoreboard objectives add BannerPosX dummy
scoreboard objectives add BannerPosY dummy
scoreboard objectives add BannerPosZ dummy
scoreboard objectives add SetRespawnBanner dummy
scoreboard objectives add TempBannerNum dummy
#### emergency call
scoreboard objectives add UseEmergencyCall minecraft.used:minecraft.zombie_horse_spawn_egg
#### armor upgrader
scoreboard objectives add UseArmorUpgrader minecraft.used:minecraft.bat_spawn_egg
#### tool upgrader
scoreboard objectives add UseToolUpgrader minecraft.used:minecraft.turtle_spawn_egg
#### notice of thief
scoreboard objectives add UseNoticeOfThief minecraft.used:minecraft.rabbit_spawn_egg
scoreboard objectives add ThiefTick dummy
scoreboard objectives add ThiefSecond dummy
scoreboard objectives add StealResult dummy
#### evoker fangs wand
scoreboard objectives add UseFungusStick minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add EvokerFangsCount dummy
#### maze maker
scoreboard objectives add UseMazeMaker minecraft.used:minecraft.allay_spawn_egg
scoreboard objectives add MazeSize dummy
scoreboard objectives add AisleWidth dummy
scoreboard objectives add RandomMax dummy
scoreboard objectives add RandomAngle dummy
scoreboard objectives add MazePosX dummy
scoreboard objectives add MazePosZ dummy
scoreboard objectives add DeadEnd dummy
#### teleport arrow
scoreboard objectives add ArrowTeleportTick dummy
scoreboard objectives add ArrowTeleportPosX dummy
scoreboard objectives add ArrowTeleportPosY dummy
scoreboard objectives add ArrowTeleportPosZ dummy
#### respawn beacon
scoreboard objectives add BeaconNumber dummy
scoreboard objectives add CompareNames dummy
scoreboard objectives add DetectTeamExists dummy
#### mobile respawn beacon
scoreboard objectives add MobileBeaconNumber dummy
scoreboard objectives add MobileBeaconTmp dummy
#### team
scoreboard objectives add TeamMemberNotExist dummy
scoreboard objectives add DeadOwnTeam dummy
scoreboard objectives add NumOfTeamPlayer dummy
#### result
scoreboard objectives add ResultTmp dummy
#### add-on
scoreboard objectives add LoadAddon dummy