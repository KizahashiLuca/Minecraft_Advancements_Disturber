#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## チーム編成マニュアル設定ダイアログ - 3人の場合、ホスト以外
dialog show @s[predicate=mad:player/,predicate=!mad:player/host] \
  {\
    type: 'minecraft:notice',\
    title: {\
      text: 'チーム編成のマニュアル設定',\
    },\
    body: [\
      {\
        type: 'minecraft:plain_message',\
        contents: '自分のチームを選択してください',\
      },\
    ],\
    inputs: [\
      {\
        type: 'minecraft:single_option',\
        key: 'MyTeam',\
        label: '対戦形式',\
        label_visible: true,\
        options: [\
          {\
            id: '1',\
            display: {\
              text: '赤チーム',\
              color: 'red',\
            },\
          },\
          {\
            id: '2',\
            display: {\
              text: '青チーム',\
              color: 'blue',\
            },\
          },\
          {\
            id: '3',\
            display: {\
              text: '黄チーム',\
              color: 'yellow',\
            },\
          },\
        ],\
      },\
    ],\
    can_close_with_escape: false,\
    after_action: 'close',\
    pause: true,\
    action: {\
      label: 'チーム設定',\
      tooltip: '設定を保存して\nダイアログを閉じます。',\
      action: {\
        type: 'minecraft:dynamic/run_command',\
        template: 'trigger SetTeamTrigger set $(MyTeam)',\
      },\
    },\
  }

## チーム編成マニュアル設定ダイアログ - 3人の場合、ホスト
dialog show @s[predicate=mad:player/host] \
  {\
    type: 'minecraft:multi_action',\
    title: {\
      text: 'チーム編成のマニュアル設定',\
    },\
    body: [\
      {\
        type: 'minecraft:plain_message',\
        contents: '自分のチームを選択してください',\
      },\
    ],\
    inputs: [\
      {\
        type: 'minecraft:single_option',\
        key: 'MyTeam',\
        label: '対戦形式',\
        label_visible: true,\
        options: [\
          {\
            id: '1',\
            display: {\
              text: '赤チーム',\
              color: 'red',\
            },\
          },\
          {\
            id: '2',\
            display: {\
              text: '青チーム',\
              color: 'blue',\
            },\
          },\
          {\
            id: '3',\
            display: {\
              text: '黄チーム',\
              color: 'yellow',\
            },\
          },\
        ],\
      },\
    ],\
    actions: [\
      {\
        label: 'チーム設定',\
        tooltip: '設定を保存して\nダイアログを閉じます。',\
        action: {\
          type: 'minecraft:dynamic/run_command',\
          template: 'trigger SetTeamTrigger set $(MyTeam)',\
        },\
      }\
    ],\
    can_close_with_escape: false,\
    after_action: 'close',\
    pause: true,\
    exit_action: {\
      label: 'ゲーム開始',\
      action: {\
        type: 'minecraft:run_command',\
        command: 'trigger ExecuteTrigger set 20',\
      },\
    },\
  }
