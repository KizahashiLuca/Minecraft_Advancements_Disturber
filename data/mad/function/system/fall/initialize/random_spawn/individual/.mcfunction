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
$execute store result storage mad: individual.x int 1 run \
  function mad:system/fall/initialize/random_spawn/get_random_value \
    {\
      min: '$(x2)',\
      max: '$(x4)',\
      axis: 'X',\
    }
$execute store result storage mad: individual.z int 1 run \
  function mad:system/fall/initialize/random_spawn/get_random_value \
    {\
      min: '$(z2)',\
      max: '$(z4)',\
      axis: 'Z',\
    }

## テレポート
function mad:system/fall/initialize/random_spawn/individual/teleport with storage mad: individual
