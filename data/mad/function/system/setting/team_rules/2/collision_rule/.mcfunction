#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 右クリック検知
#### 当たり判定ありへ変更
execute as @e[tag=MAD_Interaction_collisionRuleTrueButton] at @s on target run function mad:system/setting/team_rules/2/collision_rule/detect/ {number:'1'}
#### 当たり判定なしへ変更
execute as @e[tag=MAD_Interaction_collisionRuleFalseButton] at @s on target run function mad:system/setting/team_rules/2/collision_rule/detect/ {number:'0'}
#### 戻る
execute as @e[tag=MAD_Interaction_ReturnLink] at @s on target run function mad:system/setting/team_rules/2/collision_rule/detect/return