#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## どっか行け矢は当たったが、テレポートするプレイヤーが死亡している時
$execute as @p[tag=mad_player$(teleportee_number),predicate=mad:player/dead/] \
  at @s run \
  function mad:system/item/teleport_arrow/teleport/execute/dead \
    {\
      teleportee_number: '$(teleportee_number)',\
    }

## テレポートに成功した時
$execute as @p[tag=mad_player$(teleportee_number),predicate=mad:player/alive/] \
  at @s run \
  function mad:system/item/teleport_arrow/teleport/execute/accept \
    with storage mad: item.teleport_arrow.tmp
