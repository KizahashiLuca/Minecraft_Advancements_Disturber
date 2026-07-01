#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 1秒減算
scoreboard players remove #mad TimeOfPvPStart 1

## PvPスタート
execute if predicate mad:system/game/timer/pvp/second/eq_zero run \
  function mad:system/game/timer/pvp/set_pvp_on

## メッセージ表示
execute if predicate mad:system/game/timer/pvp/second/600 run \
  function mad:message/game/pvp/announcement \
    {\
      sec: '10',\
    }
execute if predicate mad:system/game/timer/pvp/second/300 run \
  function mad:message/game/pvp/announcement \
    {\
      sec: '5',\
    }
execute if predicate mad:system/game/timer/pvp/second/180 run \
  function mad:message/game/pvp/announcement \
    {\
      sec: '3',\
    }
execute if predicate mad:system/game/timer/pvp/second/60 run \
  function mad:message/game/pvp/announcement \
    {\
      sec: '1',\
    }
execute if predicate mad:system/game/timer/pvp/second/eq_zero run \
  function mad:message/game/pvp/
