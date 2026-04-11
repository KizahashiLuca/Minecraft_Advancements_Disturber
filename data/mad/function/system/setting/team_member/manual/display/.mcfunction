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
summon minecraft:text_display ~0.375 ~1.50 ~ {text:{text:'チーム編成手動設定',color:'black',bold:true},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_TeamMember','MAD_TextDisplay_TeamMemberTitle']}
#### チームエリア
execute if predicate mad:gamerule/match_mode/individual/ run function mad:system/setting/team_member/manual/display/team_area/0
execute if predicate mad:gamerule/team_rules/1/number_of_teams/2 run function mad:system/setting/team_member/manual/display/team_area/2
execute if predicate mad:gamerule/team_rules/1/number_of_teams/3 run function mad:system/setting/team_member/manual/display/team_area/3
execute if predicate mad:gamerule/team_rules/1/number_of_teams/4 run function mad:system/setting/team_member/manual/display/team_area/4
#### プレイヤーの頭
function mad:system/setting/team_member/manual/display/player_head/
#### 戻る
execute positioned ~ ~-0.75 ~ run function mad:system/setting/team_member/manual/display/return
#### ゲーム開始
execute positioned ~ ~-0.75 ~ run function mad:system/setting/team_member/manual/display/ok

## 各プレイヤーのエンダーチェストからアイテムを消去
#### fallフェーズの着地判定まで使用するのでコメントアウト
# function mad:system/setting/team_member/manual/display/player_head/clear_enderchest