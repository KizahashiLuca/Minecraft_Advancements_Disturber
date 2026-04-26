#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## サウンドイベント
$execute as @p[tag=mad_player$(teleportee_number)] \
  at @s run \
  playsound minecraft:particle.soul_escape block @s ~ ~ ~ 0.5 2.0 1.0

## メッセージ表示
$function mad:message/item/teleport_arrow/dead \
  {\
    thief_number: '$(teleportee_number)',\
  }
