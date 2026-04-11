#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ゲーム設定開始のメッセージ
tellraw @a \
  [\
    '',\
    {\
      translate: '[MAD] ゲームが開始されました。\n',\
      color: 'green',\
    },\
    {\
      translate: '[MAD] ホストは初期設定を開始してください。\n',\
      color: 'green',\
    },\
    {\
      translate: '[MAD]   ホスト : %s',\
      color: 'green',\
      with: [\
        {\
          selector: '@p[predicate=mad:player/host]',\
          color: 'green',\
          bold: true,\
        },\
      ],\
    },\
  ]
