#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## チーム戦ルール設定ダイアログ
$dialog show @p[predicate=mad:player/host] \
  {\
    type: 'minecraft:confirmation',\
    title: {\
      text: 'チームルール設定',\
    },\
    inputs: [\
      {\
        type: 'minecraft:single_option',\
        key: 'SetTeamManual',\
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
        key: 'NumberOfTeams',\
        label: 'チーム数',\
        start: 2,\
        end: 5,\
        initial: $(NumberOfTeams),\
        label_format: '%1$s: %2$s チーム',\
        step: 1,\
      },\
      {\
        type: 'minecraft:number_range',\
        key: 'DeathPenaltyTime',\
        label: '死亡ペナルティ時間',\
        start: 0,\
        end: 1000,\
        initial: $(DeathPenaltyTime),\
        label_format: '%1$s: %2$s 秒',\
        step: 1,\
      },\
      {\
        type: 'minecraft:boolean',\
        key: 'friendlyFire',\
        label: 'フレンドリーファイア',\
        initial: $(friendlyFire),\
        on_true: '1',\
        on_false: '0',\
      },\
      {\
        type: 'minecraft:boolean',\
        key: 'collisionRule',\
        label: 'チーム内の当たり判定',\
        initial: $(collisionRule),\
        on_true: '1',\
        on_false: '0',\
      },\
      {\
        type: 'minecraft:boolean',\
        key: 'nametagVisibility',\
        label: 'チーム内のネームタグ表示',\
        initial: $(nametagVisibility),\
        on_true: '1',\
        on_false: '0',\
      },\
      {\
        type: 'minecraft:boolean',\
        key: 'seeFriendlyInvisibles',\
        label: 'チーム内の透明プレイヤーの視認',\
        initial: $(seeFriendlyInvisibles),\
        on_true: '1',\
        on_false: '0',\
      },\
      {\
        type: 'minecraft:boolean',\
        key: 'deathMessageVisibility',\
        label: 'チーム内の死亡メッセージ表示',\
        initial: $(deathMessageVisibility),\
        on_true: '1',\
        on_false: '0',\
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
        template: 'function mad:system/setting/team_rules/save {SetTeamManual: $(SetTeamManualString), NumberOfTeams: $(NumberOfTeamsString), DeathPenaltyTime: $(DeathPenaltyTimeString), friendlyFire: $(friendlyFireString), collisionRule: $(collisionRule), nametagVisibility: $(nametagVisibilityString), seeFriendlyInvisibles: $(seeFriendlyInvisiblesString), deathMessageVisibility: $(deathMessageVisibilityString)}',\
      },\
    },\
    no: {\
      label: 'キャンセル',\
      tooltip: '設定を破棄して、戻ります。',\
      action: {\
        type: 'minecraft:run_command',\
        command: 'trigger ExecuteTrigger set 10',\
      },\
    },\
  }
