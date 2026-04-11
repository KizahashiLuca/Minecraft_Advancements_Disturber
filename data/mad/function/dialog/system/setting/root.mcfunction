#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ゲーム設定ダイアログ - チーム戦以外
execute if predicate mad:gamerule/match_mode/individual/ run \
  dialog show @p[predicate=mad:player/host] \
    {\
      type: 'minecraft:multi_action',\
      title: {\
        text: 'ゲーム設定',\
      },\
      can_close_with_escape: false,\
      after_action: 'close',\
      pause: true,\
      columns: 1,\
      actions: [\
        {\
          label: '詳細設定',\
          width: 200,\
          action: {\
            type: 'minecraft:run_command',\
            command: 'trigger ExecuteTrigger set 11',\
          },\
        },\
        {\
          label: 'オプション設定',\
          width: 200,\
          action: {\
            type: 'minecraft:run_command',\
            command: 'trigger ExecuteTrigger set 12',\
          },\
        },\
        {\
          label: 'キャンセル',\
          width: 200,\
          action: {\
            type: 'minecraft:run_command',\
            command: 'trigger ExecuteTrigger set 19',\
          },\
        },\
      ],\
      exit_action: {\
        label: '決定',\
        tooltip: '設定を保存して、\nゲームを開始します。',\
        action: {\
          type: 'minecraft:run_command',\
          command: 'function mad:dialog/system/setting/show_rules with storage mad: rules',\
        },\
      },\
    }

## 詳細設定ダイアログ - チーム戦
execute if predicate mad:gamerule/match_mode/team run \
  dialog show @p[predicate=mad:player/host] \
    {\
      type: 'minecraft:multi_action',\
      title: {\
        text: 'ゲーム設定',\
      },\
      can_close_with_escape: false,\
      after_action: 'close',\
      pause: true,\
      columns: 1,\
      actions: [\
        {\
          label: '詳細設定',\
          width: 200,\
          action: {\
            type: 'minecraft:run_command',\
            command: 'trigger ExecuteTrigger set 11',\
          },\
        },\
        {\
          label: 'オプション設定',\
          width: 200,\
          action: {\
            type: 'minecraft:run_command',\
            command: 'trigger ExecuteTrigger set 12',\
          },\
        },\
        {\
          label: 'チーム戦ルール設定',\
          width: 200,\
          action: {\
            type: 'minecraft:run_command',\
            command: 'trigger ExecuteTrigger set 13',\
          },\
        },\
        {\
          label: 'キャンセル',\
          width: 200,\
          action: {\
            type: 'minecraft:run_command',\
            command: 'trigger ExecuteTrigger set 19',\
          },\
        },\
      ],\
      exit_action: {\
        label: '決定',\
        tooltip: '設定を保存して、\nゲームを開始します。',\
        action: {\
          type: 'minecraft:run_command',\
          command: 'function mad:dialog/system/setting/show_rules with storage mad: rules',\
        },\
      },\
    }