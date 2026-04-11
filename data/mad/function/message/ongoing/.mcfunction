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

## ゲーム開始拒否メッセージ表示
tellraw @a \
  [\
    '',\
    {\
      translate: '  既にゲームを実施しているため、\n',\
      color: 'red',\
    },\
    {\
      translate: '  新しいゲームを開始できません。\n',\
      color: 'red',\
    },\
    {\
      translate: '  以下をクリックしてゲームを中断できます。\n',\
      color: 'gray',\
    },\
    {\
      translate: '     >> %s',\
      with: [\
        {\
          translate: 'ゲーム中断',\
          color: 'red',\
          bold: true,\
          underlined: true,\
          hover_event: {\
            action: 'show_text',\
            value: 'クリックしてゲーム中断',\
          },\
          click_event: {\
            action: 'run_command',\
            command: 'trigger ExitTrigger set 1',\
          },\
        },\
      ],\
    },\
  ]

## 共通終了メッセージ表示
function mad:message/end
