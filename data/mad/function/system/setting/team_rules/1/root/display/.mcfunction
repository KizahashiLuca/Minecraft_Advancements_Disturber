#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## エンティティ召喚
#### タイトル
summon minecraft:text_display ~0.225 ~1.50 ~ {text:{text:'チーム戦ルール その1',color:'black',bold:true},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_TeamRules1','MAD_TextDisplay_TeamRules1Title']}
#### チーム数変更
execute positioned ~ ~1.00 ~ run function mad:system/setting/team_rules/1/root/display/number_of_teams
#### チーム編成設定変更
execute if predicate mad:gamerule/team_rules/1/set_team_manual/true positioned ~ ~0.75 ~ run function mad:system/setting/team_rules/1/root/display/set_team_manual {text:'手動',color:'dark_red'}
execute if predicate mad:gamerule/team_rules/1/set_team_manual/false positioned ~ ~0.75 ~ run function mad:system/setting/team_rules/1/root/display/set_team_manual {text:'ランダム',color:'dark_green'}
#### 死亡ペナルティ変更
execute positioned ~ ~0.50 ~ run function mad:system/setting/team_rules/1/root/display/death_penalty_time
#### 戻る
execute positioned ~ ~-0.75 ~ run function mad:system/setting/team_rules/1/root/display/return
#### 次へ
execute positioned ~ ~-0.75 ~ run function mad:system/setting/team_rules/1/root/display/next