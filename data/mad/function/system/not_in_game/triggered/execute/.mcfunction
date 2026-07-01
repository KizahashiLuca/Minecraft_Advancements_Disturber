#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ゲーム開始処理
#### ソロ戦開始
execute as @p[predicate=mad:system/not_in_game/triggered/execute/solo] run \
  function mad:system/start/ \
    {\
      type: 'solo',\
    }
#### 個人戦開始
execute as @p[predicate=mad:system/not_in_game/triggered/execute/individual] run \
  function mad:system/start/ \
    {\
      type: 'individual',\
    }
#### チーム戦開始
execute as @p[predicate=mad:system/not_in_game/triggered/execute/team] run \
  function mad:system/start/ \
    {\
      type: 'team',\
    }
#### 詳細設定開始
execute as @p[predicate=mad:system/not_in_game/triggered/execute/details] run \
  function mad:system/start/ \
    {\
      type: 'details',\
    }
