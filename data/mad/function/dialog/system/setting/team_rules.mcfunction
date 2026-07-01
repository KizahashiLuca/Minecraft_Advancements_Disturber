#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## チーム戦ルール設定ダイアログ
$dialog show @p[predicate=mad:player/host] \
  {\
    type: 'minecraft:confirmation',\
    title: {\
      translate: 'チームルール設定',\
    },\
    inputs: [\
      {\
        type: 'minecraft:single_option',\
        key: 'set_team_manual',\
        label: 'チーム編成',\
        label_visible: true,\
        options: [\
          {\
            id: '0',\
            display: 'ランダム',\
            initial: true\
          },\
          {\
            id: '1',\
            display: 'マニュアル',\
          },\
        ],\
      },\
      {\
        type: 'minecraft:number_range',\
        key: 'number_of_teams',\
        label: 'チーム数',\
        start: 2,\
        end: 5,\
        initial: $(number_of_teams),\
        label_format: '%1$s: %2$s チーム',\
        step: 1,\
      },\
      {\
        type: 'minecraft:boolean',\
        key: 'friendly_fire',\
        label: 'フレンドリーファイア',\
        initial: $(friendly_fire),\
        on_true: 'true',\
        on_false: 'false',\
      },\
      {\
        type: 'minecraft:boolean',\
        key: 'collision_rule',\
        label: 'チーム内の当たり判定',\
        initial: $(collision_rule),\
        on_true: 'true',\
        on_false: 'false',\
      },\
      {\
        type: 'minecraft:boolean',\
        key: 'nametag_visibility',\
        label: 'チーム内のネームタグ表示',\
        initial: $(nametag_visibility),\
        on_true: 'true',\
        on_false: 'false',\
      },\
      {\
        type: 'minecraft:boolean',\
        key: 'see_friendly_invisibles',\
        label: 'チーム内の透明プレイヤーの視認',\
        initial: $(see_friendly_invisibles),\
        on_true: 'true',\
        on_false: 'false',\
      },\
      {\
        type: 'minecraft:boolean',\
        key: 'death_message_visibility',\
        label: 'チーム内の死亡メッセージ表示',\
        initial: $(death_message_visibility),\
        on_true: 'true',\
        on_false: 'false',\
      },\
    ],\
    can_close_with_escape: false,\
    after_action: 'close',\
    pause: true,\
    yes: {\
      label: '決定',\
      tooltip: '設定を保存して、戻ります。',\
      action: {\
        type: 'minecraft:dynamic/run_command',\
        template: 'function mad:system/setting/team_rules/save {set_team_manual: $(set_team_manual_string), number_of_teams: $(number_of_teams_string), friendly_fire: \'$(friendly_fire_string)\', collision_rule: \'$(collision_rule_string)\', nametag_visibility: \'$(nametag_visibility_string)\', see_friendly_invisibles: \'$(see_friendly_invisibles_string)\', death_message_visibility: \'$(death_message_visibility_string)\'}',\
      },\
    },\
    no: {\
      label: 'キャンセル',\
      tooltip: '設定を破棄して、戻ります。',\
      action: {\
        type: 'minecraft:run_command',\
        command: 'trigger ExecuteTrigger set 5',\
      },\
    },\
  }
