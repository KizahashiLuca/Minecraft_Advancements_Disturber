#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.21
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 進捗達成フラグ
$scoreboard players set @a[predicate=mad:player/team/$(team)] Advancements_Story_iron_tools 1
$scoreboard players set #mad_team_$(team) Advancements_Story_iron_tools 1

## 進捗数加算
scoreboard players add @s HasAdvancements 1
$scoreboard players add #mad_team_$(team) HasAdvancements 1

## タイムボーナス加算
$scoreboard players operation #mad_team_$(team) TimeLimit += #mad BonusTimeOfAdvancements
$scoreboard players operation #mad_team_$(team) Second += #mad BonusTimeOfAdvancements

## 進捗付与
$advancement grant @a[predicate=mad:player/team/$(team)] only minecraft:story/iron_tools

## 進捗達成メッセージ
$tellraw @a[predicate=mad:player/team/$(team)] \
  [\
    '',\
    {\
      translate: 'chat.type.advancement.task',\
      with: [\
        {\
          translate: '$(text)チーム',\
          color: '$(color)',\
          bold: true\
        },\
        {\
          translate: '[%s]',\
          color: 'green',\
          with: [\
            {\
              translate: 'advancements.story.iron_tools.title',\
              hover_event: {\
                action: 'show_text',\
                value: [\
                  {\
                    translate: '%s\n%s',\
                    color: 'green',\
                    with: [\
                      {\
                        translate: 'advancements.story.iron_tools.title',\
                      },\
                      {\
                        translate: 'advancements.story.iron_tools.description',\
                      },\
                    ],\
                  },\
                ],\
              },\
            },\
          ],\
        },\
      ],\
    },\
  ]
