#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## タイトル表示
title @a title \
  [\
    '',\
    {\
      selector: '@a[predicate=mad:player/alive/]',\
      color: 'red',\
      bold: true,\
    },\
  ]
title @a subtitle \
  [\
    '',\
    {\
      translate: 'WIN',\
      color: 'red',\
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
      translate: '  勝者は %s です！',\
      with: [\
        {\
          selector: '@a[predicate=mad:player/alive/]',\
          color: 'red',\
          bold: true,\
        },\
      ],\
    },\
  ]
