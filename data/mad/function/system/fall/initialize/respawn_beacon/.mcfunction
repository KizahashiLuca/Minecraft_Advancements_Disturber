#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## リスポーンビーコン削除
function mad:system/fall/initialize/respawn_beacon/delete

## リスポーンビーコン再設置
# execute if predicate mad:gamerule/match_mode/team run function mad:system/fall/initialize/respawn_beacon/replace