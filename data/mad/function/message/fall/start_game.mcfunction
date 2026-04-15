#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ゲーム開始タイトル
title @a title \
  [\
    '',\
    {\
      translate: 'ゲームスタート',\
      color: 'red',\
    },\
  ]
title @a times 20 80 20

## 進捗リセットメッセージ
tellraw @a \
  [\
    '',\
    {\
      translate: '[MAD] ゲームを開始しました。\n',\
      color: 'green',\
    },\
    {\
      translate: '[MAD] 進捗はリセットされます。\n',\
      color: 'green',\
    },\
  ]

## ゲームフェーズの初期化
function mad:system/game/change_to
