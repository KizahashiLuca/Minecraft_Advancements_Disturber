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
#### timer
scoreboard players set #mad Tick 0
scoreboard players set #mad Second 0
scoreboard players set #mad PvPSecond 900
#### game phase
scoreboard players set #mad PvP 0
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
scoreboard objectives modify Sidebar displayname ["",{"text":"支援物資 投下情報"}]
scoreboard objectives setdisplay sidebar Sidebar
scoreboard objectives modify Sidebar numberformat
scoreboard objectives modify Sidebar displayautoupdate true
scoreboard objectives setdisplay sidebar.team.red SidebarA
scoreboard objectives modify SidebarA numberformat
scoreboard objectives modify SidebarA displayautoupdate true
scoreboard players set 【支援物資情報】 SidebarA 2147483647
scoreboard players display numberformat 【支援物資情報】 SidebarA blank
scoreboard players display name 【支援物資情報】 SidebarA [{"text":"【支援物資情報】","color":"white","bold":true}]
scoreboard objectives setdisplay sidebar.team.blue SidebarB
scoreboard objectives modify SidebarB numberformat
scoreboard objectives modify SidebarB displayautoupdate true
scoreboard players set 【支援物資情報】 SidebarB 2147483647
scoreboard players display numberformat 【支援物資情報】 SidebarB blank
scoreboard players display name 【支援物資情報】 SidebarB [{"text":"【支援物資情報】","color":"white","bold":true}]
scoreboard objectives setdisplay sidebar.team.yellow SidebarC
scoreboard objectives modify SidebarC numberformat
scoreboard objectives modify SidebarC displayautoupdate true
scoreboard players set 【支援物資情報】 SidebarC 2147483647
scoreboard players display numberformat 【支援物資情報】 SidebarC blank
scoreboard players display name 【支援物資情報】 SidebarC [{"text":"【支援物資情報】","color":"white","bold":true}]
scoreboard objectives setdisplay sidebar.team.green SidebarD
scoreboard objectives modify SidebarD numberformat
scoreboard objectives modify SidebarD displayautoupdate true
scoreboard players set 【支援物資情報】 SidebarD 2147483647
scoreboard players display numberformat 【支援物資情報】 SidebarD blank
scoreboard players display name 【支援物資情報】 SidebarD [{"text":"【支援物資情報】","color":"white","bold":true}]
scoreboard objectives setdisplay sidebar.team.dark_purple SidebarE
scoreboard objectives modify SidebarE numberformat
scoreboard objectives modify SidebarE displayautoupdate true
scoreboard players set 【支援物資情報】 SidebarE 2147483647
scoreboard players display numberformat 【支援物資情報】 SidebarE blank
scoreboard players display name 【支援物資情報】 SidebarE [{"text":"【支援物資情報】","color":"white","bold":true}]
scoreboard players set #mad_team_a SidebarA -10
scoreboard players set #mad_team_b SidebarB -10
scoreboard players set #mad_team_c SidebarC -10
scoreboard players set #mad_team_d SidebarD -10
scoreboard players set #mad_team_e SidebarE -10
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
execute if predicate mad:gamerules/team_match/number_of_teams/ge_5 run scoreboard players set #mad_team_e DeadOwnTeam 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_1 run scoreboard players set #mad_team_a NumOfTeamPlayer 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_2 run scoreboard players set #mad_team_b NumOfTeamPlayer 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_3 run scoreboard players set #mad_team_c NumOfTeamPlayer 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_4 run scoreboard players set #mad_team_d NumOfTeamPlayer 0
execute if predicate mad:gamerules/team_match/number_of_teams/ge_5 run scoreboard players set #mad_team_e NumOfTeamPlayer 0
#### result
scoreboard players set @a ResultTmp 0