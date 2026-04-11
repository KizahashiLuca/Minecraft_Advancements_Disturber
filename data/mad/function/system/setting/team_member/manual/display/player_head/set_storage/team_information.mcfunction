#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## プレイヤー情報をストレージに格納
#### プレイヤー番号
execute store result storage mad: display_team_member.player.number int 1 run scoreboard players get @s PlayerNumber
#### チーム数情報
execute store result storage mad: display_team_member.player.number_of_teams int 1 run scoreboard players get #mad NumberOfTeams

## チーム情報をストレージに格納（チームID、チーム内プレイヤー数、チーム内プレイヤー番号）
#### プレイヤーが所属チーム無しの場合
execute as @s[predicate=mad:player/team/no] run data modify storage mad: display_team_member.player.team_name set value 'no'
execute as @s[predicate=mad:player/team/no] store result storage mad: display_team_member.player.number_in_team int 1 run scoreboard players get #mad_team_no NumberOfPlayers
execute as @s[predicate=mad:player/team/no] store result storage mad: display_team_member.player.player_number_in_team int 1 run scoreboard players get #mad_team_no PlayerHeadNumber
#### プレイヤーが赤チームの場合
execute as @s[predicate=mad:player/team/a] run data modify storage mad: display_team_member.player.team_name set value 'a'
execute as @s[predicate=mad:player/team/a] store result storage mad: display_team_member.player.number_in_team int 1 run scoreboard players get #mad_team_a NumberOfPlayers
execute as @s[predicate=mad:player/team/a] store result storage mad: display_team_member.player.player_number_in_team int 1 run scoreboard players get #mad_team_a PlayerHeadNumber
#### プレイヤーが青チームの場合
execute as @s[predicate=mad:player/team/b] run data modify storage mad: display_team_member.player.team_name set value 'b'
execute as @s[predicate=mad:player/team/b] store result storage mad: display_team_member.player.number_in_team int 1 run scoreboard players get #mad_team_b NumberOfPlayers
execute as @s[predicate=mad:player/team/b] store result storage mad: display_team_member.player.player_number_in_team int 1 run scoreboard players get #mad_team_b PlayerHeadNumber
#### プレイヤーが黄チームの場合
execute as @s[predicate=mad:player/team/c] run data modify storage mad: display_team_member.player.team_name set value 'c'
execute as @s[predicate=mad:player/team/c] store result storage mad: display_team_member.player.number_in_team int 1 run scoreboard players get #mad_team_c NumberOfPlayers
execute as @s[predicate=mad:player/team/c] store result storage mad: display_team_member.player.player_number_in_team int 1 run scoreboard players get #mad_team_c PlayerHeadNumber
#### プレイヤーが緑チームの場合
execute as @s[predicate=mad:player/team/d] run data modify storage mad: display_team_member.player.team_name set value 'd'
execute as @s[predicate=mad:player/team/d] store result storage mad: display_team_member.player.number_in_team int 1 run scoreboard players get #mad_team_d NumberOfPlayers
execute as @s[predicate=mad:player/team/d] store result storage mad: display_team_member.player.player_number_in_team int 1 run scoreboard players get #mad_team_d PlayerHeadNumber

## スコアボード設定
execute as @s[predicate=mad:player/team/no] run scoreboard players add #mad_team_no PlayerHeadNumber 1
execute as @s[predicate=mad:player/team/a] run scoreboard players add #mad_team_a PlayerHeadNumber 1
execute as @s[predicate=mad:player/team/b] run scoreboard players add #mad_team_b PlayerHeadNumber 1
execute as @s[predicate=mad:player/team/c] run scoreboard players add #mad_team_c PlayerHeadNumber 1
execute as @s[predicate=mad:player/team/d] run scoreboard players add #mad_team_d PlayerHeadNumber 1