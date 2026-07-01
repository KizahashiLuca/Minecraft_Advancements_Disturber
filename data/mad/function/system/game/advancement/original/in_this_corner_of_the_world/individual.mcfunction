#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 進捗達成フラグ
scoreboard players set @s Advancements_Original_in_this_corner_of_the_world 1

## 進捗数加算
scoreboard players add @s HasAdvancements 1

## タイムボーナス加算
scoreboard players operation @s TimeLimit += #mad BonusTimeOfAdvancements
scoreboard players operation @s Second += #mad BonusTimeOfAdvancements

## 進捗達成メッセージ
tellraw @s \
  [\
    '',\
    {\
      translate: 'chat.type.advancement.task',\
      with: [\
        {\
          selector: '@s',\
        },\
        {\
          translate: '[%s]',\
          color: 'green',\
          with: [\
            {\
              translate: 'この世界の片隅に',\
              hover_event: {\
                action: 'show_text',\
                value: [\
                  {\
                    translate: '%s\n%s',\
                    color: 'green',\
                    with: [\
                      {\
                        translate: 'この世界の片隅に',\
                      },\
                      {\
                        translate: 'ボーダーの端へ到達',\
                      },\
                    ],\
                  },\
                ],\
              },\
            },\
          ],\
        },\
      ],\
    },\
  ]
