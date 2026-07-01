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
$title @a[predicate=mad:player/alive/$(team)] title \
  [\
    '',\
    {\
      translate: '死んでしまった！',\
      color: 'red',\
      bold: true,\
    },\
  ]
$title @a[predicate=mad:player/alive/$(team)] subtitle \
  [\
    '',\
    {\
      translate: '死因：時間切れ',\
    },\
  ]
$title @a[predicate=mad:player/alive/$(team)] times 20 80 20
