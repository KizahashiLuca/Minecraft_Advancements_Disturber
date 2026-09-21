#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 21 Sep 2026
## Version   : β-4.0
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
      translate: '[MAD] 現在このトリガーは受け付けていません。',\
      color: 'yellow',\
    },\
  ]
