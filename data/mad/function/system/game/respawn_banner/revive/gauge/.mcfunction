#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## チーム分岐
$execute if entity @p[name=$(name),predicate=mad:player/team/a] run \
  function mad:system/game/respawn_banner/revive/gauge/tick \
    {\
      name: '$(name)',\
      team: 'a',\
    }
$execute if entity @p[name=$(name),predicate=mad:player/team/b] run \
  function mad:system/game/respawn_banner/revive/gauge/tick \
    {\
      name: '$(name)',\
      team: 'b',\
    }
$execute if entity @p[name=$(name),predicate=mad:player/team/c] run \
  function mad:system/game/respawn_banner/revive/gauge/tick \
    {\
      name: '$(name)',\
      team: 'c',\
    }
$execute if entity @p[name=$(name),predicate=mad:player/team/d] run \
  function mad:system/game/respawn_banner/revive/gauge/tick \
    {\
      name: '$(name)',\
      team: 'd',\
    }
