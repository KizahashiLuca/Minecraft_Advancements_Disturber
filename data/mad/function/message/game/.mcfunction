#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 共通開始メッセージ表示
function mad:message/begin

## 試合開始メッセージ表示
tellraw @a \
  [\
    '',\
    {\
      translate: '  試合を開始しました。',\
    },\
  ]
function mad:message/line_horizontal
tellraw @a \
  [\
    '',\
    {\
      translate: '  初期時間 : ',\
    },\
    {\
      translate: '%s 秒',\
      with: [\
        {\
          nbt: 'rules.initial_time',\
          storage: 'mad:',\
        },\
      ],\
      color: 'green',\
    },\
  ]
tellraw @a \
  [\
    '',\
    {\
      translate: '  追加時間 : ',\
    },\
    {\
      translate: '%s 秒',\
      with: [\
        {\
          nbt: 'rules.bonus_time_of_advancements',\
          storage: 'mad:',\
        },\
      ],\
      color: 'green',\
    },\
  ]
tellraw @a \
  [\
    '',\
    {\
      translate: '  支援物資間隔 : ',\
    },\
    {\
      translate: '%s 秒',\
      with: [\
        {\
          nbt: 'rules.care_package_interval',\
          storage: 'mad:',\
        },\
      ],\
      color: 'green',\
    },\
  ]
tellraw @a \
  [\
    '',\
    {\
      translate: '  ワールド範囲 : ',\
    },\
    {\
      translate: '%s x %s',\
      with: [\
        {\
          nbt: 'rules.world_border',\
          storage: 'mad:',\
        },\
        {\
          nbt: 'rules.world_border',\
          storage: 'mad:',\
        },\
      ],\
      color: 'green',\
    },\
  ]
tellraw @a \
  [\
    '',\
    {\
      translate: '  進捗はリセットされます。\n',\
    },\
    {\
      translate: '  スポーン地点が設定されました。',\
    },\
  ]

## 共通終了メッセージ表示
function mad:message/end
