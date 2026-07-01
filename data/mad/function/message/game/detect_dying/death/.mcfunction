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
$tellraw @a$(address) \
  [\
    '',\
    {\
      translate: '%s が %s にて死亡し$(message)ました',\
      with: [\
        {\
          selector: '@s',\
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
          storage: 'mad:',\
          nbt: 'rules.death_penalty_time',\
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
