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
summon minecraft:text_display ~0.7375 ~1.50 ~ {text:{text:'透明化の視認',color:'black',bold:true},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_seeFriendlyInvisibles','MAD_TextDisplay_seeFriendlyInvisiblesTitle']}
#### 透明化の視認あり
execute if predicate mad:gamerule/team_rules/2/see_friendly_invisibles/true run execute positioned ~ ~1.00 ~ run function mad:system/setting/team_rules/2/see_friendly_invisibles/display/true {color1:'dark_green',color2:'white',underlined:'false',text:'選択中です',background:'-16733696'}
execute if predicate mad:gamerule/team_rules/2/see_friendly_invisibles/false run execute positioned ~ ~1.00 ~ run function mad:system/setting/team_rules/2/see_friendly_invisibles/display/true {color1:'gray',color2:'dark_green',underlined:'true',text:'クリックして変更',background:'0'}
#### 透明化の視認なし
execute if predicate mad:gamerule/team_rules/2/see_friendly_invisibles/true run execute positioned ~ ~0.50 ~ run function mad:system/setting/team_rules/2/see_friendly_invisibles/display/false {color1:'gray',color2:'dark_red',underlined:'true',text:'クリックして変更',background:'0'}
execute if predicate mad:gamerule/team_rules/2/see_friendly_invisibles/false run execute positioned ~ ~0.50 ~ run function mad:system/setting/team_rules/2/see_friendly_invisibles/display/false {color1:'dark_red',color2:'white',underlined:'false',text:'選択中です',background:'-5636096'}
#### 戻る
execute positioned ~ ~-0.75 ~ run function mad:system/setting/team_rules/2/see_friendly_invisibles/display/return