#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## エンティティ召喚
#### タイトル
summon minecraft:text_display ~0.225 ~1.50 ~ {text:{text:'チーム戦ルール その2',color:'black',bold:true},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_TeamRules2','MAD_TextDisplay_TeamRules2Title']}
#### フレンドリーファイア変更
execute if predicate mad:gamerule/team_rules/2/friendly_fire/true positioned ~ ~1.00 ~ run function mad:system/setting/team_rules/2/root/display/friendly_fire {text:'あり',color:'dark_green'}
execute if predicate mad:gamerule/team_rules/2/friendly_fire/false positioned ~ ~1.00 ~ run function mad:system/setting/team_rules/2/root/display/friendly_fire {text:'なし',color:'dark_red'}
#### 当たり判定変更
execute if predicate mad:gamerule/team_rules/2/collision_rule/true positioned ~ ~0.75 ~ run function mad:system/setting/team_rules/2/root/display/collision_rule {text:'あり',color:'dark_green'}
execute if predicate mad:gamerule/team_rules/2/collision_rule/false positioned ~ ~0.75 ~ run function mad:system/setting/team_rules/2/root/display/collision_rule {text:'なし',color:'dark_red'}
#### ネームタグ表示変更
execute if predicate mad:gamerule/team_rules/2/nametag_visibility/true positioned ~ ~0.50 ~ run function mad:system/setting/team_rules/2/root/display/nametag_visibility {text:'あり',color:'dark_green'}
execute if predicate mad:gamerule/team_rules/2/nametag_visibility/false positioned ~ ~0.50 ~ run function mad:system/setting/team_rules/2/root/display/nametag_visibility {text:'なし',color:'dark_red'}
#### 透明化の視認変更
execute if predicate mad:gamerule/team_rules/2/see_friendly_invisibles/true positioned ~ ~0.25 ~ run function mad:system/setting/team_rules/2/root/display/see_friendly_invisibles {text:'あり',color:'dark_green'}
execute if predicate mad:gamerule/team_rules/2/see_friendly_invisibles/false positioned ~ ~0.25 ~ run function mad:system/setting/team_rules/2/root/display/see_friendly_invisibles {text:'なし',color:'dark_red'}
#### 死亡メッセージ変更
execute if predicate mad:gamerule/team_rules/2/death_message_visibility/true positioned ~ ~0.00 ~ run function mad:system/setting/team_rules/2/root/display/death_message_visibility {text:'あり',color:'dark_green'}
execute if predicate mad:gamerule/team_rules/2/death_message_visibility/false positioned ~ ~0.00 ~ run function mad:system/setting/team_rules/2/root/display/death_message_visibility {text:'なし',color:'dark_red'}
#### 戻る
execute positioned ~ ~-0.75 ~ run function mad:system/setting/team_rules/2/root/display/return