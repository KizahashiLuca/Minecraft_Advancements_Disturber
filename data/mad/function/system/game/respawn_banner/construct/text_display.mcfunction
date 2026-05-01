#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## リスポーンバナー矢印
$summon minecraft:text_display ~ ~1 ~ \
  {\
    Tags: [\
      'mad_respawn_banner_point',\
      'mad_player$(victim_number)',\
    ],\
    alignment: 'center',\
    billboard: 'center',\
    text: [\
      [\
        {\
          translate: '%sのリスポーンバナー\n',\
          with: [\
            {\
              translate: '$(victim_id)',\
              color: '$(victim_color)',\
            },\
          ],\
        },\
      ],\
      [\
        {\
          translate: '（プレイヤーの頭を取得）\n',\
        },\
      ],\
      [\
        {\
          translate: '↓',\
        },\
      ],\
    ],\
    background: 0,\
  }
