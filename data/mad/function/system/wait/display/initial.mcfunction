#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## エンティティ削除
#### テキストディスプレイ
kill @e[tag=MAD_TextDisplay_TeamMemberTitle]
kill @e[tag=MAD_TextDisplay_ReturnLink]
kill @e[tag=MAD_TextDisplay_OKLink]
#### インタラクション
kill @e[tag=MAD_Interaction]

## エンティティ召喚
#### タイトル
summon minecraft:text_display ~0.7375 ~1.50 ~ {text:{text:'設定事項確認',color:'black',bold:true},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Wait','MAD_TextDisplay_WaitTitle']}

## タイトルメッセージ表示
function mad:message/wait/title/