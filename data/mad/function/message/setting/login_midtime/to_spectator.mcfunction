#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 初ログインプレイヤーへのメッセージ
tellraw @s \
  [\
    '',\
    {\
      translate: '[MAD] 現在、ゲームの設定中です。\n',\
      color: 'green',\
    },\
    {\
      translate: '[MAD] 参加を辞退しますか？\n',\
      color: 'green',\
    },\
    {\
      translate: '[MAD]   > %s\n',\
      color: 'green',\
      with: [\
        {\
          translate: 'はい',\
          color: 'green',\
          bold: true,\
          underlined: true,\
          hover_event: {\
            action: "show_text",\
            value: "スペクテイターモードに変更されます。",\
          },\
          click_event: {\
            action: 'run_command',\
            command: 'trigger SpectatorTrigger set 10',\
          },\
        },\
      ],\
    },\
  ]
