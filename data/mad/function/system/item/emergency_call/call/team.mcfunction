#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 招集されるチーム検出
$execute as @p[tag=MAD_Player$(caller_number),predicate=mad:player/alive/a] run data modify storage mad: item.emergency_call.tmp.call_team set value 'a'
$execute as @p[tag=MAD_Player$(caller_number),predicate=mad:player/alive/b] run data modify storage mad: item.emergency_call.tmp.call_team set value 'b'
$execute as @p[tag=MAD_Player$(caller_number),predicate=mad:player/alive/c] run data modify storage mad: item.emergency_call.tmp.call_team set value 'c'
$execute as @p[tag=MAD_Player$(caller_number),predicate=mad:player/alive/d] run data modify storage mad: item.emergency_call.tmp.call_team set value 'd'