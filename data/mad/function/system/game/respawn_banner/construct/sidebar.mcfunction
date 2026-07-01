#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## サイドバー
#### もし未だ犠牲者が居なければ欄を追加 - スペース
$execute unless predicate mad:respawn_banner/sidebar/$(victim_team) run \
  scoreboard players set スペース $(victim_sidebar) -5
$scoreboard players display numberformat スペース $(victim_sidebar) blank
$scoreboard players display name スペース $(victim_sidebar) \
  [\
    '',\
  ]
#### もし未だ犠牲者が居なければ欄を追加 - リスポーンバナー座標のタイトル
$execute unless predicate mad:respawn_banner/sidebar/$(victim_team) run \
  scoreboard players set 【リスポーンバナー座標】 $(victim_sidebar) -6
$scoreboard players display numberformat 【リスポーンバナー座標】 $(victim_sidebar) blank
$scoreboard players display name 【リスポーンバナー座標】 $(victim_sidebar) \
  [\
    {\
      translate: '【リスポーンバナー座標】',\
      color: '$(victim_color)',\
      bold: true,\
    },\
  ]
#### 犠牲者のサイドバーを追記
$scoreboard players operation @s $(victim_sidebar) = $(victim_address) $(victim_sidebar)
$scoreboard players remove $(victim_address) $(victim_sidebar) 1
$scoreboard players display numberformat @s $(victim_sidebar) fixed \
  [\
    {\
      translate: '[$(x), $(y), $(z)]',\
      color: 'green',\
    },\
  ]
