#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 共通開始メッセージ表示
function mad:message/begin

## 初期設定開始メッセージ表示
function mad:message/thank_you
function mad:message/line_horizontal
tellraw @a \
  [\
    '',\
    {\
      translate: '  ホストは初期設定を開始してください。\n',\
    },\
    {\
      translate: '  ホスト : %s',\
      with: [\
        {\
          selector: '@p[predicate=mad:player/host]',\
          color: 'green',\
          bold: true,\
        },\
      ],\
    },\
  ]

## 共通終了メッセージ表示
function mad:message/end
