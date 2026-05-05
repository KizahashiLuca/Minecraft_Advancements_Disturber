#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ランダムリスポーン地点設定
#### 個人戦
$execute store result storage mad: individual.x_inner int 1 run \
  function mad:system/wait/initialize/storages/world_size/get_value \
    {\
      center: '$(x)',\
      axis: 'X',\
    }
$execute store result storage mad: individual.z_inner int 1 run \
  function mad:system/wait/initialize/storages/world_size/get_value \
    {\
      center: '$(z)',\
      axis: 'Z',\
    }
data modify storage mad: individual.size \
  set from storage mad: rules.world_size.half
#### 赤チーム
$execute store result storage mad: team.a.x_inner int 1 run \
  function mad:system/wait/initialize/storages/world_size/get_value \
    {\
      center: '$(x_inner_east)',\
      axis: 'X',\
    }
$execute store result storage mad: team.a.z_inner int 1 run \
  function mad:system/wait/initialize/storages/world_size/get_value \
    {\
      center: '$(z_inner_south)',\
      axis: 'Z',\
    }
data modify storage mad: team.a.size \
  set from storage mad: rules.world_size.quarter
#### 青チーム
$execute store result storage mad: team.b.x_inner int 1 run \
  function mad:system/wait/initialize/storages/world_size/get_value \
    {\
      center: '$(x_inner_west)',\
      axis: 'X',\
    }
$execute store result storage mad: team.b.z_inner int 1 run \
  function mad:system/wait/initialize/storages/world_size/get_value \
    {\
      center: '$(z_inner_north)',\
      axis: 'Z',\
    }
data modify storage mad: team.b.size \
  set from storage mad: rules.world_size.quarter
#### 黄チーム
$execute store result storage mad: team.c.x_inner int 1 run \
  function mad:system/wait/initialize/storages/world_size/get_value \
    {\
      center: '$(x_inner_east)',\
      axis: 'X',\
    }
$execute store result storage mad: team.c.z_inner int 1 run \
  function mad:system/wait/initialize/storages/world_size/get_value \
    {\
      center: '$(z_inner_north)',\
      axis: 'Z',\
    }
data modify storage mad: team.c.size \
  set from storage mad: rules.world_size.quarter
#### 緑チーム
$execute store result storage mad: team.d.x_inner int 1 run \
  function mad:system/wait/initialize/storages/world_size/get_value \
    {\
      center: '$(x_inner_west)',\
      axis: 'X',\
    }
$execute store result storage mad: team.d.z_inner int 1 run \
  function mad:system/wait/initialize/storages/world_size/get_value \
    {\
      center: '$(z_inner_south)',\
      axis: 'Z',\
    }
data modify storage mad: team.d.size \
  set from storage mad: rules.world_size.quarter
