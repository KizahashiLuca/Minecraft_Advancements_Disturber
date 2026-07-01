#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ランダムスポーン地点設定
$execute store result storage mad: individual.absolute_x int 1 run \
  function mad:system/fall/initialize/random_spawn/get_random_value \
    {\
      min: '$(x_west)',\
      max: '$(x_east)',\
      axis: 'X',\
    }
$execute store result storage mad: individual.absolute_z int 1 run \
  function mad:system/fall/initialize/random_spawn/get_random_value \
    {\
      min: '$(z_north)',\
      max: '$(z_south)',\
      axis: 'Z',\
    }

## テレポート
function mad:system/fall/initialize/random_spawn/individual/teleport \
  with storage mad: individual
