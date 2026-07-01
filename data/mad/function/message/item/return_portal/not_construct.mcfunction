#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 帰還ポータル設置不可メッセージ表示
#### オーバーワールドの場合
execute if predicate mad:dimension/overworld run \
  tellraw @a[distance=..5] \
  [\
    '',\
    {\
      translate: '[帰還装置] オーバーワールドには帰還ポータルを設置できません。',\
      color: 'green',\
    },\
  ]
#### ネザーの場合
execute if predicate mad:dimension/the_nether run \
  tellraw @a[distance=..5] \
    [\
      '',\
      {\
        translate: '[帰還装置] ネザーには帰還ポータルを設置できません。',\
        color: 'green',\
      },\
    ]
