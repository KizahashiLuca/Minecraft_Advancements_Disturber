#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 右クリック検知
#### フレンドリーファイア変更
execute as @e[tag=MAD_Interaction_friendlyFireLink] at @s on target run function mad:system/setting/team_rules/2/root/detect/ {phase:'friendly_fire'}
#### 当たり判定変更
execute as @e[tag=MAD_Interaction_collisionRuleLink] at @s on target run function mad:system/setting/team_rules/2/root/detect/ {phase:'collision_rule'}
#### ネームタグ表示変更
execute as @e[tag=MAD_Interaction_nametagVisibilityLink] at @s on target run function mad:system/setting/team_rules/2/root/detect/ {phase:'nametag_visibility'}
#### 透明化の視認変更
execute as @e[tag=MAD_Interaction_seeFriendlyInvisiblesLink] at @s on target run function mad:system/setting/team_rules/2/root/detect/ {phase:'see_friendly_invisibles'}
#### 死亡メッセージ変更
execute as @e[tag=MAD_Interaction_deathMessageVisibilityLink] at @s on target run function mad:system/setting/team_rules/2/root/detect/ {phase:'death_message_visibility'}
#### 戻る
execute as @e[tag=MAD_Interaction_ReturnLink] at @s on target run function mad:system/setting/team_rules/2/root/detect/return