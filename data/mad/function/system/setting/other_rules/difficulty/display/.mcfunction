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
summon minecraft:text_display ~1.0875 ~1.50 ~ {text:{text:'難易度',color:'black',bold:true},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_Difficulty','MAD_TextDisplay_DifficultyTitle']}
#### ピースフル
execute if predicate mad:gamerule/difficulty/peaceful run execute positioned ~ ~1.00 ~ run function mad:system/setting/other_rules/difficulty/display/peaceful {color1:'dark_purple',color2:'white',underlined:'false',text:'選択中です',background:'-5635926'}
execute unless predicate mad:gamerule/difficulty/peaceful run execute positioned ~ ~1.00 ~ run function mad:system/setting/other_rules/difficulty/display/peaceful {color1:'gray',color2:'dark_purple',underlined:'true',text:'クリックして変更',background:'-1'}
#### イージー
execute if predicate mad:gamerule/difficulty/easy run execute positioned ~ ~0.75 ~ run function mad:system/setting/other_rules/difficulty/display/easy {color1:'dark_blue',color2:'white',underlined:'false',text:'選択中です',background:'-16777046'}
execute unless predicate mad:gamerule/difficulty/easy run execute positioned ~ ~0.75 ~ run function mad:system/setting/other_rules/difficulty/display/easy {color1:'gray',color2:'dark_blue',underlined:'true',text:'クリックして変更',background:'-1'}
#### ノーマル
execute if predicate mad:gamerule/difficulty/normal run execute positioned ~ ~0.50 ~ run function mad:system/setting/other_rules/difficulty/display/normal {color1:'dark_green',color2:'white',underlined:'false',text:'選択中です',background:'-16733696'}
execute unless predicate mad:gamerule/difficulty/normal run execute positioned ~ ~0.50 ~ run function mad:system/setting/other_rules/difficulty/display/normal {color1:'gray',color2:'dark_green',underlined:'true',text:'クリックして変更',background:'-1'}
#### ハード
execute if predicate mad:gamerule/difficulty/hard run execute positioned ~ ~0.25 ~ run function mad:system/setting/other_rules/difficulty/display/hard {color1:'dark_red',color2:'white',underlined:'false',text:'選択中です',background:'-5636096'}
execute unless predicate mad:gamerule/difficulty/hard run execute positioned ~ ~0.25 ~ run function mad:system/setting/other_rules/difficulty/display/hard {color1:'gray',color2:'dark_red',underlined:'true',text:'クリックして変更',background:'-1'}
#### ハードコア
execute if predicate mad:gamerule/difficulty/hardcore run execute positioned ~ ~0.00 ~ run function mad:system/setting/other_rules/difficulty/display/hardcore {color1:'black',color2:'white',underlined:'false',text:'選択中です',background:'-16777216'}
execute unless predicate mad:gamerule/difficulty/hardcore run execute positioned ~ ~0.00 ~ run function mad:system/setting/other_rules/difficulty/display/hardcore {color1:'gray',color2:'black',underlined:'true',text:'クリックして変更',background:'-1'}
#### 戻る
execute positioned ~ ~-0.75 ~ run function mad:system/setting/other_rules/difficulty/display/return