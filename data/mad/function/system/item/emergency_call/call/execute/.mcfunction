#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 緊急招集は実行されたが、緊急招集を発信したプレイヤーが死亡している時
$execute as @p[tag=mad_player$(caller_number),predicate=mad:player/dead/] \
  at @s run \
  function mad:system/item/emergency_call/call/execute/dead \
    {\
      caller_number: '$(caller_number)',\
    }

## 緊急招集に成功した時
$execute as @p[tag=mad_player$(caller_number),predicate=mad:player/alive/] \
  at @s run \
  function mad:system/item/emergency_call/call/execute/accept \
    with storage mad: item.emergency_call.tmp
