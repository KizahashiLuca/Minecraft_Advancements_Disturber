#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ゲーム設定開始のメッセージ
tellraw @a \
  [\
    '',\
    {\
      translate: '[MAD] ゲームが開始されました。\n',\
      color: 'green',\
    },\
    {\
      translate: '[MAD] ホストは初期設定を開始してください。\n',\
      color: 'green',\
    },\
    {\
      translate: '[MAD]   ホスト : %s\n',\
      color: 'green',\
      with: [\
        {\
          selector: '@p[predicate=mad:player/host]',\
          color: 'green',\
          bold: true,\
        },\
      ],\
    },\
  ]
tellraw @a[predicate=mad:player/host] \
  [\
    '',\
    {\
      translate: '[MAD] ダイアログが開かない/閉じてしまった場合は、\n',\
      color: 'green',\
    },\
    {\
      translate: '[MAD] %s をクリックしてください。\n',\
      color: 'green',\
      with: [\
        {\
          translate: 'ここ',\
          color: 'green',\
          bold: true,\
          underlined: true,\
          hover_event: {\
            action: 'show_text',\
            value: 'ダイアログを再度開きます。',\
          },\
          click_event: {\
            action: 'run_command',\
            command: 'trigger ExecuteTrigger set 5',\
          },\
        },\
      ],\
    },\
  ]
