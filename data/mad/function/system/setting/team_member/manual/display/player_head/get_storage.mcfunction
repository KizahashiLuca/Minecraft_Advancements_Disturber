#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## チーム設定
$execute as @s[predicate=mad:player/team/a] as @e[tag=MAD_DisplayGroup_Player$(number)] run function mad:system/setting/team_member/manual/display/player_head/join_team with storage mad: team.a
$execute as @s[predicate=mad:player/team/b] as @e[tag=MAD_DisplayGroup_Player$(number)] run function mad:system/setting/team_member/manual/display/player_head/join_team with storage mad: team.b
$execute as @s[predicate=mad:player/team/c] as @e[tag=MAD_DisplayGroup_Player$(number)] run function mad:system/setting/team_member/manual/display/player_head/join_team with storage mad: team.c
$execute as @s[predicate=mad:player/team/d] as @e[tag=MAD_DisplayGroup_Player$(number)] run function mad:system/setting/team_member/manual/display/player_head/join_team with storage mad: team.d
$execute as @s[predicate=mad:player/team/no] as @e[tag=MAD_DisplayGroup_Player$(number)] run function mad:system/setting/team_member/manual/display/player_head/join_team {team:'no'}

## テレポート
$execute as @e[tag=MAD_DisplayGroup_Player$(number)] run function mad:system/setting/team_member/manual/display/player_head/teleport_display with storage mad: display_team_member.$(number_of_teams).$(team_name).$(number_in_team).$(player_number_in_team)