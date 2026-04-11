#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## フェーズ分岐
#### ルートフェーズ
execute if predicate mad:phase/setting/team_rules/2/root run function mad:system/setting/team_rules/2/root/
#### フレンドリーファイア変更フェーズ
execute if predicate mad:phase/setting/team_rules/2/friendly_fire run function mad:system/setting/team_rules/2/friendly_fire/
#### 当たり判定変更フェーズ
execute if predicate mad:phase/setting/team_rules/2/collision_rule run function mad:system/setting/team_rules/2/collision_rule/
#### ネームタグ表示変更フェーズ
execute if predicate mad:phase/setting/team_rules/2/nametag_visibility run function mad:system/setting/team_rules/2/nametag_visibility/
#### 透明化の視認変更フェーズ
execute if predicate mad:phase/setting/team_rules/2/see_friendly_invisibles run function mad:system/setting/team_rules/2/see_friendly_invisibles/
#### 死亡メッセージ変更フェーズ
execute if predicate mad:phase/setting/team_rules/2/death_message_visibility run function mad:system/setting/team_rules/2/death_message_visibility/