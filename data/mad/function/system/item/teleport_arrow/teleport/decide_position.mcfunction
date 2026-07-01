#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## テレポート先設定
#### X座標
$execute store result storage mad: item.teleport_arrow.tmp.absolute_x int 1 run \
  function mad:system/fall/initialize/random_spawn/get_random_value \
    {\
      min: '$(x_west)',\
      max: '$(x_east)',\
      axis: 'X',\
    }
#### Z座標
$execute store result storage mad: item.teleport_arrow.tmp.absolute_z int 1 run \
  function mad:system/fall/initialize/random_spawn/get_random_value \
    {\
      min: '$(z_north)',\
      max: '$(z_south)',\
      axis: 'Z',\
    }
