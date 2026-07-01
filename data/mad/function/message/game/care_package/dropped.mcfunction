#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## メッセージ表示
$tellraw @a \
  [\
    '',\
    {\
      translate: '[支援物資] 支援物資$(number)が ',\
      color: 'green',\
    },\
    {\
      translate: '[$(x), $(z)]',\
      color: 'green',\
      hover_event: {\
        action: 'show_text',\
        value: {\
          translate: 'スペクテイター時、クリックでテレポート',\
          color: 'gray',\
        },\
      },\
      click_event: {\
        action: 'run_command',\
        command: '/trigger TeleportTrigger set $(number)0000',\
      },\
      color: 'green',\
    },\
    {\
      translate: ' に投下されました。',\
      color: 'green',\
    },\
  ]
