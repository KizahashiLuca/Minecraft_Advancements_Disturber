#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 参加人数 制限内用 メッセージ
tellraw @a \
  [\
    '',\
    {\
      translate: '  以下をクリックしてゲームを開始できます。',\
    },\
  ]

## ソロ戦
execute if predicate mad:gamerule/num_of_players/solo run \
  tellraw @a \
    [\
      '',\
      {\
        translate: '     >> %s',\
        with: [\
          {\
            translate: 'ソロ戦',\
            color: 'green',\
            bold: true,\
            underlined: true,\
            hover_event: {\
              action: 'show_text',\
              value: 'クリックしてソロ戦開始',\
            },\
            click_event: {\
              action: 'run_command',\
              command: 'trigger ExecuteTrigger set 1',\
            },\
          },\
        ],\
      },\
    ]

## 個人/チーム戦
execute if predicate mad:gamerule/num_of_players/not_solo run \
  tellraw @a \
    [\
      '',\
      {\
        translate: '     >> %s',\
        with: [\
          {\
            text: '個人戦',\
            color: 'green',\
            bold: true,\
            underlined: true,\
            hover_event: {\
              action: 'show_text',\
              value: 'クリックして個人戦開始',\
            },\
            click_event: {\
              action: 'run_command',\
              command: 'trigger ExecuteTrigger set 2',\
            },\
          }\
        ],\
      },\
    ]

execute if predicate mad:gamerule/num_of_players/not_solo run \
  tellraw @a \
    [\
      '',\
      {\
        translate: '     >> %s',\
        with: [\
          {\
            text: 'チーム戦',\
            color: 'green',\
            bold: true,\
            underlined: true,\
            hover_event: {\
              action: 'show_text',\
              value: 'クリックして2チーム戦開始',\
            },\
            click_event: {\
              action: 'run_command',\
              command: 'trigger ExecuteTrigger set 3',\
            },\
          }\
        ],\
      },\
    ]

## 詳細設定
tellraw @a \
  [\
    '',\
    {\
      translate: '     ※ 詳細設定してのゲーム開始は %s',\
      with: [\
          {\
          text: 'こちら',\
          color: 'light_purple',\
          bold: true,\
          underlined: true,\
          hover_event: {\
            action: 'show_text',\
            value: 'クリックして詳細設定開始',\
          },\
          click_event: {\
            action: 'run_command',\
            command: 'trigger ExecuteTrigger set 4',\
          },\
        }\
      ],\
    },\
  ]
