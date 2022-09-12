#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 13 Sep 2022
## Version   : β-2.0.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboards
#### timer
scoreboard players set #mad Tick 0
scoreboard players set #mad Second 0
#### game phase
scoreboard players set @a[predicate=mad:player/participant] Phase 21
scoreboard players set @a[predicate=mad:player/participant] Death 0
scoreboard players set @a Kill 0
scoreboard players set @a KillTemp 0
scoreboard players set @a TeleportMinecart 0
scoreboard players enable @a TeleportMinecart
scoreboard players set @a TeleportCenter 0
scoreboard players enable @a TeleportCenter
scoreboard players set @a ExitMessage 0
scoreboard players enable @a ExitMessage
#### participants
scoreboard players set @a NumOfParticipants 0
scoreboard players set @a NumAlive 0
execute if predicate mad:gamerules/match_mode/team run scoreboard players operation #mad NumAlive = #mad NumberOfTeams
scoreboard players set #mad NumDead 0
scoreboard players set @a NumDead 0
#### time limit
scoreboard players set @a GetTimeLimit 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_1 run scoreboard players set #mad_team_a GetTimeLimit 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_2 run scoreboard players set #mad_team_b GetTimeLimit 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_3 run scoreboard players set #mad_team_c GetTimeLimit 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_4 run scoreboard players set #mad_team_d GetTimeLimit 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_5 run scoreboard players set #mad_team_e GetTimeLimit 0
#### advancements
scoreboard players set @a HasAdvancements 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_1 run scoreboard players set #mad_team_a HasAdvancements 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_2 run scoreboard players set #mad_team_b HasAdvancements 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_3 run scoreboard players set #mad_team_c HasAdvancements 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_4 run scoreboard players set #mad_team_d HasAdvancements 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_5 run scoreboard players set #mad_team_e HasAdvancements 0
#### advancements - potage00
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
execute if predicate mad:gamerules/team_match/number_of_teams/ge_5 run scoreboard players set #mad_team_e GetMinecartCount 0
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
#### evoker fangs wand
scoreboard players set @a UseFungusStick 0
#### mobile respawn beacon
scoreboard players set @a MobileBeaconNumber 0
#### team
execute if predicate mad:gamerules/team_match/number_of_teams/ge_1 run scoreboard players set #mad_team_a DeadOwnTeam 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_2 run scoreboard players set #mad_team_b DeadOwnTeam 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_3 run scoreboard players set #mad_team_c DeadOwnTeam 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_4 run scoreboard players set #mad_team_d DeadOwnTeam 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_5 run scoreboard players set #mad_team_e DeadOwnTeam 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_1 run scoreboard players set #mad_team_a NumOfTeamPlayer 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_2 run scoreboard players set #mad_team_b NumOfTeamPlayer 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_3 run scoreboard players set #mad_team_c NumOfTeamPlayer 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_4 run scoreboard players set #mad_team_d NumOfTeamPlayer 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_5 run scoreboard players set #mad_team_e NumOfTeamPlayer 0
#### result
scoreboard players set @a ResultTmp 0