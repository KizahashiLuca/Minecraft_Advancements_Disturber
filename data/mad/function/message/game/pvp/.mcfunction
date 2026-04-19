#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## PvP解禁メッセージ
tellraw @a \
  [\
    '',\
    {\
      translate: '[MAD] %s',\
      with: [\
        {\
          translate: 'PvP解禁',\
          color: 'green',\
          bold: true,\
        },\
      ],\
      color: 'green',\
    },\
  ]
tellraw @a \
  [\
    '',\
    {\
      translate: '  PvPが解禁されました。',\
      color: 'green',\
    },\
  ]
tellraw @a \
  [\
    '',\
    {\
      translate: '  敵プレイヤーをキルするとキル報酬があり、',\
      color: 'green',\
    },\
  ]
tellraw @a \
  [\
    '',\
    {\
      translate: '  バナーも生成されます。',\
      color: 'green',\
    },\
  ]
