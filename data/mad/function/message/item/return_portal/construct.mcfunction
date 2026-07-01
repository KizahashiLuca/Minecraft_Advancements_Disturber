#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 帰還ポータル設置メッセージ表示
tellraw @a[distance=..5] \
  [\
    '',\
    {\
      translate: '[帰還装置] 帰還ポータルを設置しました。',\
      color: 'green',\
    },\
  ]
