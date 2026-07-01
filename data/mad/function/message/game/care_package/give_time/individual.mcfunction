#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ボーナス取得メッセージ表示
tellraw @s \
  [\
    '',\
    {\
      translate: '[支援物資]  %s に %s%s のボーナスタイムが付与されました。',\
      with: [\
        {\
          selector: '@s',\
          color: 'green',\
          bold: true,\
        },\
        {\
          score: {\
            name: '#mad',\
            objective: 'RandomValue',\
          },\
          color: 'green',\
          bold: true,\
        },\
        {\
          translate: '秒',\
          color: 'green',\
          bold: true,\
        },\
      ],\
      color: 'green',\
    },\
  ]
