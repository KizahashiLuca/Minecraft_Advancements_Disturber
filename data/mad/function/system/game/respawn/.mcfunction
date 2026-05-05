#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ランダムスポーン地点設定
#### 個人戦
$execute store result storage mad: individual.absolute_x int 1 run \
  function mad:system/fall/initialize/random_spawn/get_random_value \
    {\
      min: '$(x2)',\
      max: '$(x4)',\
      axis: 'X',\
    }
$execute store result storage mad: individual.absolute_z int 1 run \
  function mad:system/fall/initialize/random_spawn/get_random_value \
    {\
      min: '$(z2)',\
      max: '$(z4)',\
      axis: 'Z',\
    }
#### 赤チーム
$execute store result storage mad: team.a.absolute_x int 1 run \
  function mad:system/fall/initialize/random_spawn/get_random_value \
    {\
      min: '$(x)',\
      max: '$(x4)',\
      axis: 'X',\
    }
$execute store result storage mad: team.a.absolute_z int 1 run \
  function mad:system/fall/initialize/random_spawn/get_random_value \
    {\
      min: '$(z)',\
      max: '$(z4)',\
      axis: 'Z',\
    }
#### 青チーム
$execute store result storage mad: team.b.absolute_x int 1 run \
  function mad:system/fall/initialize/random_spawn/get_random_value \
    {\
      min: '$(x2)',\
      max: '$(x)',\
      axis: 'X',\
    }
$execute store result storage mad: team.b.absolute_z int 1 run \
  function mad:system/fall/initialize/random_spawn/get_random_value \
    {\
      min: '$(z2)',\
      max: '$(z)',\
      axis: 'Z',\
    }
#### 黄チーム
$execute store result storage mad: team.c.absolute_x int 1 run \
  function mad:system/fall/initialize/random_spawn/get_random_value \
    {\
      min: '$(x)',\
      max: '$(x1)',\
      axis: 'X',\
    }
$execute store result storage mad: team.c.absolute_z int 1 run \
  function mad:system/fall/initialize/random_spawn/get_random_value \
    {\
      min: '$(z1)',\
      max: '$(z)',\
      axis: 'Z',\
    }
#### 緑チーム
$execute store result storage mad: team.d.absolute_x int 1 run \
  function mad:system/fall/initialize/random_spawn/get_random_value \
    {\
      min: '$(x3)',\
      max: '$(x)',\
      axis: 'X',\
    }
$execute store result storage mad: team.d.absolute_z int 1 run \
  function mad:system/fall/initialize/random_spawn/get_random_value \
    {\
      min: '$(z)',\
      max: '$(z3)',\
      axis: 'Z',\
    }

## テレポート
#### 個人戦
execute if predicate mad:gamerule/match_mode/individual/ \
  as @s[predicate=mad:player/] run \
  function mad:system/game/respawn/teleport \
    with storage mad: individual
#### 赤チーム
execute as @s[predicate=mad:player/team/a] run \
  function mad:system/game/respawn/teleport \
    with storage mad: team.a
#### 青チーム
execute as @s[predicate=mad:player/team/b] run \
  function mad:system/game/respawn/teleport \
    with storage mad: team.b
#### 黄チーム
execute as @s[predicate=mad:player/team/c] run \
  function mad:system/game/respawn/teleport \
    with storage mad: team.c
#### 緑チーム
execute as @s[predicate=mad:player/team/d] run \
  function mad:system/game/respawn/teleport \
    with storage mad: team.d
