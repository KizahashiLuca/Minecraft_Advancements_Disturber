#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
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
      selector: '$(killer)',\
      color: '$(killer_color)',\
    },\
    {\
      translate: 'に殺された',\
    },\
  ]
title @s times 20 80 20
