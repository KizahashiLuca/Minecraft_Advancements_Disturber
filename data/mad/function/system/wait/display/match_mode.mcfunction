#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## エンティティ削除
#### テキストディスプレイ
kill @e[tag=MAD_TextDisplay_Wait_CheckList]

## エンティティ召喚
#### 確認事項
summon minecraft:text_display ~ ~ ~ \
  {\
    text: {\
      translate: '対戦形式',\
      color: 'black',\
      bold: true,\
    },\
    background: 16777215,\
    alignment: 'center',\
    Rotation: [180.0f, 0.0f],\
    Tags: [\
      'MAD_TextDisplay',\
      'MAD_TextDisplay_Wait',\
      'MAD_TextDisplay_Wait_CheckList',\
    ],\
  }
execute if predicate mad:gamerule/match_mode/individual/solo run \
  summon minecraft:text_display ~ ~-0.3 ~ \
    {\
      text: {\
        translate: 'ソロ戦',\
        color: 'white',\
      },\
      transformation: {\
        left_rotation: [0f, 0f, 0f, 1f],\
        right_rotation: [0f, 0f, 0f, 1f],\
        translation: [0f, 0f, 0f],\
        scale: [1.25, 1.25, 0.1],\
      },\
      background: -16777046,\
      alignment: 'center',\
      Rotation: [180.0f, 0.0f],\
      Tags: [\
        'MAD_TextDisplay',\
        'MAD_TextDisplay_Wait',\
        'MAD_TextDisplay_Wait_CheckList',\
      ],\
    }
execute if predicate mad:gamerule/match_mode/individual/not_solo run \
  summon minecraft:text_display ~ ~-0.3 ~ \
    {\
      text: {\
        translate: '個人戦',\
        color: 'white',\
      },\
      transformation: {\
        left_rotation: [0f, 0f, 0f, 1f],\
        right_rotation: [0f, 0f, 0f, 1f],\
        translation: [0f, 0f, 0f],\
        scale: [1.25, 1.25, 0.1],\
      },\
      background: -5636096,\
      alignment: 'center',\
      Rotation: [180.0f, 0.0f],\
      Tags: [\
        'MAD_TextDisplay',\
        'MAD_TextDisplay_Wait',\
        'MAD_TextDisplay_Wait_CheckList',\
      ],\
    }
execute if predicate mad:gamerule/match_mode/team run \
  summon minecraft:text_display ~ ~-0.3 ~ \
    {\
      text: {\
        translate: 'チーム戦',\
        color: 'white',\
      },\
      transformation: {\
        left_rotation: [0f, 0f, 0f, 1f],\
        right_rotation: [0f, 0f, 0f, 1f],\
        translation: [0f, 0f, 0f],\
        scale: [1.25, 1.25, 0.1],\
      },\
      background: -16733696,\
      alignment: 'center',\
      Rotation: [180.0f, 0.0f],\
      Tags: [\
        'MAD_TextDisplay',\
        'MAD_TextDisplay_Wait',\
        'MAD_TextDisplay_Wait_CheckList',\
      ],\
    }
