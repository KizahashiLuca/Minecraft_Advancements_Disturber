#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## タイトルメッセージ表示
title @s title \
  [\
    '',\
    {\
      translate: '死んでしまった！',\
      color: 'red',\
    },\
  ]
$title @s subtitle \
  [\
    '',\
    {\
      translate: '死因：%s',\
      with: [\
        {\
          translate: $(text),\
        },\
      ],\
    },\
  ]
title @s times 20 80 20
