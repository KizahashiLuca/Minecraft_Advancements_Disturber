#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 支援物資召喚
#### 投下場所、UUID、ルートテーブルを指定して召喚
$summon minecraft:chest_minecart $(absolute_x) $(y) $(absolute_z) \
  {\
    Invulnerable: 1b,\
    Tags: [\
      'mad_care_package',\
      'mad_care_package_$(number)',\
    ],\
    UUID: [\
      I; $(number), $(number), $(number), $(number),\
    ],\
    LootTable: 'mad:care_package/$(type)_$(with)_end',\
  }
#### 投下時にアーマースタンドを召喚
$summon minecraft:armor_stand $(absolute_x) $(y) $(absolute_z) \
  {\
    Invulnerable: 1b,\
    NoGravity: 1b,\
    Invisible: 1b,\
    Tags: [\
      'mad_care_package',\
      'mad_care_package_$(number)',\
    ],\
    UUID: [\
      I; $(number), $(number), $(number), 0,\
    ],\
  }

## 投下時メッセージ表示
$function mad:message/game/care_package/dropped \
  with storage mad: care_package.$(number)

## 投下時サイドバー設定
$function mad:system/game/care_package/count_down/sidebar \
  with storage mad: care_package.$(number)

## ウェイポイントの設定
$function mad:system/game/care_package/count_down/waypoint \
  with storage mad: care_package.$(number)

## 投下済みフラグを立てる
$data modify storage mad: care_package.$(number).flag \
  set value 1
