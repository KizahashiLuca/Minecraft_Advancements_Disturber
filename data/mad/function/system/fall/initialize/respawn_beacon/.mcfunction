#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## リスポーンビーコン削除
function mad:system/fall/initialize/respawn_beacon/delete

## リスポーンビーコン再設置
# execute if predicate mad:gamerule/match_mode/team run function mad:system/fall/initialize/respawn_beacon/replace