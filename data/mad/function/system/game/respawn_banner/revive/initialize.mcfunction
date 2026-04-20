#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 蘇生検知用アーマースタンド召喚
#### 配置されたアーマースタンドとは異なる
$summon minecraft:armor_stand ~ ~ ~ \
  {\
    Tags: $(Tags),\
    data: {\
      name: '$(name)',\
    },\
    NoGravity: 1b,\
    Invulnerable: 1b,\
    Invisible: 1b,\
    NoBasePlate: 0b,\
    DisabledSlots: 4144959,\
    CustomName: '$(name)のリスポーンビーコン',\
    CustomNameVisible: 1b,\
  }

## スコアボード設定
#### 配置されたアーマースタンドに対して
scoreboard players set @s Second 20
scoreboard players set @s Tick 0

## タグ設定
#### 配置されたアーマースタンドに対して
data modify entity @s data.Tags \
  append value 'mad_initialized_respawn_banner'
