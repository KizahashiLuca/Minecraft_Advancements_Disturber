#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
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
      translate: '[MAD] 参加を希望しますか？\n',\
      color: 'green',\
    },\
    {\
      translate: '[MAD]   > %s',\
      color: 'green',\
      with: [\
        {\
          translate: 'はい',\
          color: 'green',\
          bold: true,\
          underlined: true,\
          hover_event: {\
            action: 'show_text',\
            value: 'アドベンチャーモードに変更されます。',\
          },\
          click_event: {\
            action: 'run_command',\
            command: 'trigger SpectatorTrigger set 11',\
          },\
        },\
      ],\
    },\
  ]
