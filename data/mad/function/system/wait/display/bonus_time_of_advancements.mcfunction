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
kill @e[tag=mad_text_display_wait_wait_check_list]

## エンティティ召喚
#### 確認事項
summon minecraft:text_display ~ ~ ~ \
  {\
    text: {\
      translate: '進捗達成ボーナス',\
      color: 'black',\
      bold: true,\
    },\
    background: 16777215,\
    alignment: 'center',\
    Rotation: [180.0f, 0.0f],\
    Tags: [\
      'mad_text_display',\
      'mad_text_display_wait',\
      'mad_text_display_wait_wait_check_list',\
    ],\
  }
summon minecraft:text_display ~ ~-0.3 ~ \
  {\
    text: {\
      translate: '%s秒',\
      with: [\
        {\
          nbt: 'rules.bonus_time_of_advancements',\
          storage: 'mad:',\
          color: 'white',\
        },\
      ],\
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
      'mad_text_display',\
      'mad_text_display_wait',\
      'mad_text_display_wait_wait_check_list',\
    ],\
  }
