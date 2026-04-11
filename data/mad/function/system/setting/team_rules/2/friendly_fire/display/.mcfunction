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
summon minecraft:text_display ~0.2625 ~1.50 ~ {text:{text:'フレンドリーファイア',color:'black',bold:true},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_friendlyFire','MAD_TextDisplay_friendlyFireTitle']}
#### フレンドリーファイアあり
execute if predicate mad:gamerule/team_rules/2/friendly_fire/true run execute positioned ~ ~1.00 ~ run function mad:system/setting/team_rules/2/friendly_fire/display/true {color1:'dark_green',color2:'white',underlined:'false',text:'選択中です',background:'-16733696'}
execute if predicate mad:gamerule/team_rules/2/friendly_fire/false run execute positioned ~ ~1.00 ~ run function mad:system/setting/team_rules/2/friendly_fire/display/true {color1:'gray',color2:'dark_green',underlined:'true',text:'クリックして変更',background:'0'}
#### フレンドリーファイアなし
execute if predicate mad:gamerule/team_rules/2/friendly_fire/true run execute positioned ~ ~0.50 ~ run function mad:system/setting/team_rules/2/friendly_fire/display/false {color1:'gray',color2:'dark_red',underlined:'true',text:'クリックして変更',background:'0'}
execute if predicate mad:gamerule/team_rules/2/friendly_fire/false run execute positioned ~ ~0.50 ~ run function mad:system/setting/team_rules/2/friendly_fire/display/false {color1:'dark_red',color2:'white',underlined:'false',text:'選択中です',background:'-5636096'}
#### 戻る
execute positioned ~ ~-0.75 ~ run function mad:system/setting/team_rules/2/friendly_fire/display/return