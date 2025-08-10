#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## テキストディスプレイ召喚
summon minecraft:text_display ~0.775 ~ ~ {text:{text:'その他ルール',color:'blue',underlined:true,hover_event:{action:'show_text',value:[{text:'クリックして変更\n',color:'gray'},{text:'以下のルール設定ができます\n',color:'white'},{text:'・難易度\n',color:'white'},{text:'・天気サイクル\n',color:'white'},{text:'・昼夜サイクル\n',color:'white'},{text:'・支援物資投下数\n',color:'white'},{text:'・撃破ボーナス',color:'white'}]}},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_Root','MAD_TextDisplay_OtherRulesLink']}

## インタラクション召喚
summon minecraft:interaction ~0.7625 ~ ~0.6875 {width:1.375,height:0.25,response:true,Tags:['MAD_Interaction','MAD_Interaction_Setting_Root','MAD_Interaction_OtherRulesLink']}