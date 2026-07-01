#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## タイトル表示
title @a title \
  [\
    '',\
    {\
      translate: 'DRAW',\
      bold: true,\
    },\
  ]
title @a times 20 80 20

## 試合終了メッセージ表示
tellraw @a \
  [\
    '',\
    {\
      translate: '  試合が終了しました。\n',\
    },\
    {\
      translate: '  %s です！',\
      with: [\
        {\
          translate: '勝者無し',\
          bold: true,\
        },\
      ],\
    },\
  ]
