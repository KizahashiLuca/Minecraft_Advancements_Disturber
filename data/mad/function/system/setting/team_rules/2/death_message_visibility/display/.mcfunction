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
summon minecraft:text_display ~0.6125 ~1.50 ~ {text:{text:'死亡メッセージ',color:'black',bold:true},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_deathMessageVisibility','MAD_TextDisplay_deathMessageVisibilityTitle']}
#### 死亡メッセージあり
execute if predicate mad:gamerule/team_rules/2/death_message_visibility/true run execute positioned ~ ~1.00 ~ run function mad:system/setting/team_rules/2/death_message_visibility/display/true {color1:'dark_green',color2:'white',underlined:'false',text:'選択中です',background:'-16733696'}
execute if predicate mad:gamerule/team_rules/2/death_message_visibility/false run execute positioned ~ ~1.00 ~ run function mad:system/setting/team_rules/2/death_message_visibility/display/true {color1:'gray',color2:'dark_green',underlined:'true',text:'クリックして変更',background:'-1'}
#### 死亡メッセージなし
execute if predicate mad:gamerule/team_rules/2/death_message_visibility/true run execute positioned ~ ~0.50 ~ run function mad:system/setting/team_rules/2/death_message_visibility/display/false {color1:'gray',color2:'dark_red',underlined:'true',text:'クリックして変更',background:'-1'}
execute if predicate mad:gamerule/team_rules/2/death_message_visibility/false run execute positioned ~ ~0.50 ~ run function mad:system/setting/team_rules/2/death_message_visibility/display/false {color1:'dark_red',color2:'white',underlined:'false',text:'選択中です',background:'-5636096'}
#### 戻る
execute positioned ~ ~-0.75 ~ run function mad:system/setting/team_rules/2/death_message_visibility/display/return