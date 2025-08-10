#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
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