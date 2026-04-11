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
#### チーム戦ルールフェーズ
execute if predicate mad:phase/setting/team_rules/1/ run function mad:system/setting/team_rules/1/
#### チーム戦ルールフェーズ - チームオプション
execute if predicate mad:phase/setting/team_rules/2/ run function mad:system/setting/team_rules/2/