#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ゲーム開始拒否メッセージ表示
tellraw @a \
  [\
    '',\
    {\
      translate: '[MAD] %s\n',\
      color: 'yellow',\
      with: [\
        {\
          translate: 'コマンドエラー',\
          color: 'yellow',\
          bold: true,\
        },\
      ],\
    },\
    {\
      translate: '[MAD] 現在ゲームが実行中のため、新しいゲームを開始できません。\n',\
      color: 'yellow',\
    },\
    {\
      translate: '[MAD] 以下をクリックしてゲームを中断できます。\n',\
      color: 'yellow',\
    },\
    {\
      translate: '[MAD]   >> %s\n',\
      color: 'yellow',\
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
