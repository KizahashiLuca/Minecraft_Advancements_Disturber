#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## プレイヤー決定
$execute if predicate mad:gamerule/match_mode/individual/ store result storage mad: item.notice_of_thief.tmp.victim_number int 1.0 run scoreboard players get @a[tag=!MAD_Player$(thief_number),predicate=mad:player/alive/,sort=random,limit=1] PlayerNumber
$execute if predicate mad:gamerule/match_mode/team store result storage mad: item.notice_of_thief.tmp.victim_number int 1.0 run scoreboard players get @a[predicate=mad:player/alive/,predicate=mad:player/team/not_$(thief_team),sort=random,limit=1] PlayerNumber