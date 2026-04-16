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
      color: 'yellow',\
      with: [\
        {\
          translate: 'トリガーエラー',\
          color: 'yellow',\
          bold: true,\
        },\
      ],\
    },\
    {\
      translate: '[MAD] 現在このトリガーは受け付けていません。\n',\
      color: 'yellow',\
    },\
  ]
