#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## サイドバー
#### 全員用
scoreboard objectives setdisplay sidebar Sidebar
scoreboard objectives modify Sidebar numberformat blank
scoreboard objectives modify Sidebar displayautoupdate true
scoreboard objectives modify Sidebar displayname \
  [\
    '',\
    {\
      translate: '支援物資 投下情報',\
    },\
  ]
#### 赤チーム用
scoreboard objectives setdisplay sidebar.team.red SidebarA
scoreboard objectives modify SidebarA numberformat blank
scoreboard objectives modify SidebarA displayautoupdate true
scoreboard objectives modify SidebarA displayname \
  [\
    '',\
    {\
      translate: '情報',\
    },\
  ]
scoreboard players set 【支援物資情報】 SidebarA 2147483647
scoreboard players display name 【支援物資情報】 SidebarA \
  [\
    {\
      translate: '【支援物資情報】',\
      bold: true,\
    },\
  ]
#### 青チーム用
scoreboard objectives setdisplay sidebar.team.blue SidebarB
scoreboard objectives modify SidebarB numberformat blank
scoreboard objectives modify SidebarB displayautoupdate true
scoreboard objectives modify SidebarB displayname \
  [\
    '',\
    {\
      translate: '情報',\
    },\
  ]
scoreboard players set 【支援物資情報】 SidebarB 2147483647
scoreboard players display name 【支援物資情報】 SidebarB \
  [\
    {\
      translate: '【支援物資情報】',\
      bold: true,\
    },\
  ]
#### 黄チーム用
scoreboard objectives setdisplay sidebar.team.yellow SidebarC
scoreboard objectives modify SidebarC numberformat blank
scoreboard objectives modify SidebarC displayautoupdate true
scoreboard objectives modify SidebarC displayname \
  [\
    '',\
    {\
      translate: '情報',\
    },\
  ]
scoreboard players set 【支援物資情報】 SidebarC 2147483647
scoreboard players display name 【支援物資情報】 SidebarC \
  [\
    {\
      translate: '【支援物資情報】',\
      bold: true,\
    },\
  ]
#### 緑チーム用
scoreboard objectives setdisplay sidebar.team.green SidebarD
scoreboard objectives modify SidebarD numberformat blank
scoreboard objectives modify SidebarD displayautoupdate true
scoreboard objectives modify SidebarD displayname \
  [\
    '',\
    {\
      translate: '情報',\
    },\
  ]
scoreboard players set 【支援物資情報】 SidebarD 2147483647
scoreboard players display name 【支援物資情報】 SidebarD \
  [\
    {\
      translate: '【支援物資情報】',\
      bold: true,\
    },\
  ]
#### 支援物資情報
execute if predicate mad:gamerule/number_of_care_packages/ge_1 run \
  function mad:message/game/care_package/initialize/sidebar \
    {\
      number: '1',\
      score1: '100010',\
      score2: '100009',\
    }
execute if predicate mad:gamerule/number_of_care_packages/ge_2 run \
  function mad:message/game/care_package/initialize/sidebar \
    {\
      number: '2',\
      score1: '100008',\
      score2: '100007',\
    }
execute if predicate mad:gamerule/number_of_care_packages/ge_3 run \
  function mad:message/game/care_package/initialize/sidebar \
    {\
      number: '3',\
      score1: '100006',\
      score2: '100005',\
    }
execute if predicate mad:gamerule/number_of_care_packages/ge_4 run \
  function mad:message/game/care_package/initialize/sidebar \
    {\
      number: '4',\
      score1: '100004',\
      score2: '100003',\
    }
execute if predicate mad:gamerule/number_of_care_packages/ge_5 run \
  function mad:message/game/care_package/initialize/sidebar \
    {\
      number: '5',\
      score1: '100002',\
      score2: '100001',\
    }
#### リスポーンバナー情報
scoreboard players set #mad_team_a SidebarA -10
scoreboard players set #mad_team_b SidebarB -10
scoreboard players set #mad_team_c SidebarC -10
scoreboard players set #mad_team_d SidebarD -10
