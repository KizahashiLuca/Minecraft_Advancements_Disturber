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
$title @a title \
  [\
    '',\
    {\
      translate: '$(text)チーム',\
      color: '$(color)',\
      bold: true,\
    },\
  ]
$title @a subtitle \
  [\
    '',\
    {\
      translate: 'WIN',\
      color: '$(color)',\
      bold: true,\
    },\
  ]
title @a times 20 80 20

## 試合終了メッセージ表示
$tellraw @a \
  [\
    '',\
    {\
      translate: '  試合が終了しました。\n',\
    },\
    {\
      translate: '  勝者は %s です！',\
      with: [\
        {\
          translate: '$(text)チーム',\
          color: '$(color)',\
          bold: true,\
        },\
      ],\
    },\
  ]
