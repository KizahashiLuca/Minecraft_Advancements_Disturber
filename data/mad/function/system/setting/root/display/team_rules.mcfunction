#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## テキストディスプレイ召喚
execute if predicate mad:gamerule/match_mode/team run summon minecraft:text_display ~0.6625 ~ ~ {text:{text:'チーム戦ルール',color:'blue',underlined:true,hover_event:{action:'show_text',value:[{text:'クリックして変更\n',color:'gray'},{text:'チーム戦選択時、以下のルール設定ができます\n',color:'white'},{text:'・チームメンバーの手動設定\n',color:'white'},{text:'・チーム数\n',color:'white'},{text:'・死亡ペナルティ\n',color:'white'},{text:'・フレンドリーファイア\n',color:'white'},{text:'・当たり判定\n',color:'white'},{text:'・ネームタグ表示\n',color:'white'},{text:'・透明化の視認\n',color:'white'},{text:'・死亡メッセージ',color:'white'}]}},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_Root','MAD_TextDisplay_TeamRulesLink']}
execute if predicate mad:gamerule/match_mode/individual/ run summon minecraft:text_display ~0.6625 ~ ~ {text:{text:'チーム戦ルール',color:'gray',underlined:true,hover_event:{action:'show_text',value:[{text:'変更する必要はありません',color:'gray'}]}},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_Root','MAD_TextDisplay_TeamRulesLink']}

## インタラクション召喚
execute if predicate mad:gamerule/match_mode/team run summon minecraft:interaction ~0.65 ~ ~0.8 {width:1.6,height:0.25,response:true,Tags:['MAD_Interaction','MAD_Interaction_Setting_Root','MAD_Interaction_TeamRulesLink']}