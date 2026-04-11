#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ格納 - チームID
$execute as @p[tag=$(head_tag),predicate=mad:player/team/a] run data modify storage mad: death.victim_team set value 'a'
$execute as @p[tag=$(head_tag),predicate=mad:player/team/b] run data modify storage mad: death.victim_team set value 'b'
$execute as @p[tag=$(head_tag),predicate=mad:player/team/c] run data modify storage mad: death.victim_team set value 'c'
$execute as @p[tag=$(head_tag),predicate=mad:player/team/d] run data modify storage mad: death.victim_team set value 'd'

## ストレージ格納 - サイドバー
$execute as @p[tag=$(head_tag),predicate=mad:player/team/a] run data modify storage mad: death.victim_sidebar set value 'SidebarA'
$execute as @p[tag=$(head_tag),predicate=mad:player/team/b] run data modify storage mad: death.victim_sidebar set value 'SidebarB'
$execute as @p[tag=$(head_tag),predicate=mad:player/team/c] run data modify storage mad: death.victim_sidebar set value 'SidebarC'
$execute as @p[tag=$(head_tag),predicate=mad:player/team/d] run data modify storage mad: death.victim_sidebar set value 'SidebarD'