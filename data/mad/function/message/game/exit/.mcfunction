#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 終了メッセージ表示
$tellraw @a \
  [\
    '',\
    {\
      text: '\n[試合終了] $(text)しました。\n',\
      color: 'green',\
    },\
  ]
tellraw @p[predicate=mad:player/host] \
  [\
    '',\
    {\
      translate: '  ゲームを終了する場合は、\n',\
      color: 'green',\
    },\
    {\
      translate: '  %sを押してください。\n',\
      with: [\
        {\
          text: 'こちら',\
          color: 'light_purple',\
          bold: true,\
          underlined: true,\
          hover_event: {\
            action: 'show_text',\
            value: 'クリックしてゲーム終了',\
          },\
          click_event: {\
            action: 'run_command',\
            command: '/trigger ExitTrigger set 1',\
          },\
        },\
      ],\
      color: 'green',\
    },\
  ]
