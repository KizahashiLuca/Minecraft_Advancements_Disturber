#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 21 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 各プレイヤーへのメッセージ
tellraw @s \
  [\
    '',\
    {\
      translate: '[MAD] チーム編成をマニュアルで設定します。\n',\
      color: 'green',\
    },\
    {\
      translate: '[MAD] 各プレイヤーは %s をクリックして、\n',\
      color: 'green',\
      with: [\
        {\
          translate: 'ここ',\
          color: 'green',\
          bold: true,\
          underlined: true,\
          hover_event: {\
            action: 'show_text',\
            value: 'ダイアログを開きます。',\
          },\
          click_event: {\
            action: 'run_command',\
            command: 'trigger SetTeamTrigger set 100',\
          },\
        },\
      ],\
    },\
    {\
      translate: '[MAD] 参加チームを決めてください。',\
      color: 'green',\
    },\
  ]
