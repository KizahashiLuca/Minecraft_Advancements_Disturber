#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボードのリセット
function mad:system/setting/team_member/scoreboards

## タグ削除
tag @s remove mad_team_a
tag @s remove mad_team_b
tag @s remove mad_team_c
tag @s remove mad_team_d
tag @s remove mad_indie_player

## チーム追加
$team join mad_team_$(team) @s
$tag @s add mad_team_$(team)

## チーム変更メッセージ表示
$function mad:message/setting/team_member/join_team \
  with storage mad: team.$(team)

## 頭防具変更
$item replace entity @s armor.head with minecraft:$(color)_banner\
  [\
    minecraft:enchantments={\
      'minecraft:binding_curse': 1,\
    },\
    minecraft:item_name=[\
      {\
        translate: '%s を選択中',\
        color: 'white',\
        with: [\
          {\
            translate: '$(text)チーム',\
            color: '$(color)',\
          },\
        ],\
      },\
    ],\
    minecraft:tooltip_display={\
      hidden_components: [\
        'minecraft:enchantments',\
      ],\
    },\
  ] \
  1
