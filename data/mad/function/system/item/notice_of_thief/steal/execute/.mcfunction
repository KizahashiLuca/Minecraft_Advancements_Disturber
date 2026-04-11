#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 怪盗プレイヤー死亡時
$execute as @p[tag=MAD_Player$(thief_number),predicate=mad:player/dead/] at @s run function mad:system/item/notice_of_thief/steal/execute/dead {thief_number:'$(thief_number)'}

## 怪盗プレイヤー生存時
$execute if score @p[tag=MAD_Player$(thief_number)] NumberOfItemCandidates matches ..-1 as @p[tag=MAD_Player$(thief_number),predicate=mad:player/alive/] at @s run function mad:system/item/notice_of_thief/steal/execute/none with storage mad: item.notice_of_thief.tmp
$execute if score @p[tag=MAD_Player$(thief_number)] NumberOfItemCandidates matches 0.. as @p[tag=MAD_Player$(thief_number),predicate=mad:player/alive/] at @s run function mad:system/item/notice_of_thief/steal/execute/alive with storage mad: item.notice_of_thief.tmp