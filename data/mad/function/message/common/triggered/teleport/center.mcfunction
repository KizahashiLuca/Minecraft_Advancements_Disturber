#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## トリガー拒否メッセージ表示
tellraw @s \
  [\
    '',\
    {\
      translate: '[MAD] %s\n',\
      color: 'green',\
      with: [\
        {\
          translate: 'テレポート',\
          color: 'green',\
          bold: true,\
        },\
      ],\
    },\
    {\
      translate: '[MAD] ワールド中心にテレポートしました。\n',\
      color: 'green',\
    },\
  ]
