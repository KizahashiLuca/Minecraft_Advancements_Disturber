#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 共通開始メッセージ表示
function mad:message/begin

## トライアル開始メッセージ表示
tellraw @a \
  [\
    '',\
    {\
      translate: '  トライアルを開始します',\
    },\
  ]

## 共通終了メッセージ表示
function mad:message/end
