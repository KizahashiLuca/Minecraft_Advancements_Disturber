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
          text: '秒',\
          color: 'green',\
          bold: true,\
        },\
      ],\
    },\
  ]