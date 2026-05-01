#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## メッセージ表示
#### 犠牲者のチームへの通知
$tellraw $(victim_target_selector) \
  [\
    '',\
    {\
      translate: '%s が %s によって倒され %s にて死亡し$(message)ました',\
      with: [\
        {\
          selector: '$(victim)',\
          color: '$(victim_color)',\
          bold: true,\
        },\
        {\
          selector: '$(killer)',\
          color: '$(killer_color)',\
          bold: true,\
        },\
        {\
          translate: '%s [$(x), $(y), $(z)]',\
          with: [\
            {\
              storage: 'mad:',\
              nbt: 'dimension.$(dimension)',\
            },\
          ],\
          color: 'green',\
        },\
        {\
          $(message_selector): '$(killer_name)',\
          color: '$(killer_color)',\
          bold: true,\
        },\
        {\
          score: {\
            name: '#mad',\
            objective: 'BonusTimeOfKill',\
          },\
          color: 'green',\
          bold: true,\
        },\
        {\
          translate: '秒',\
          color: 'green',\
          bold: true,\
        },\
      ],\
    },\
  ]
#### 加害者のチームへの通知
$execute if predicate mad:system/game/detect_dying/other_team run \
  tellraw $(killer_target_selector) \
    [\
      '',\
      {\
        translate: '%s が %s によって倒され %s にて死亡し$(message)ました',\
        with: [\
          {\
            selector: '$(victim)',\
            color: '$(victim_color)',\
            bold: true,\
          },\
          {\
            selector: '$(killer)',\
            color: '$(killer_color)',\
            bold: true,\
          },\
          {\
            translate: '%s [$(x), $(y), $(z)]',\
            with: [\
              {\
                storage: 'mad:',\
                nbt: 'dimension.$(dimension)',\
              }\
            ],\
            color: 'green',\
          },\
          {\
            $(message_selector): '$(killer_name)',\
            color: '$(killer_color)',\
            bold: true,\
          },\
          {\
            score: {\
              name: '#mad',\
              objective: 'BonusTimeOfKill',\
            },\
            color: 'green',\
            bold: true,\
          },\
          {\
            translate: '秒',\
            color: 'green',\
            bold: true,\
          },\
        ],\
      },\
    ]
