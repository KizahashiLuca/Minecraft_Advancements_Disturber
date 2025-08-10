#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## エンティティ削除
#### テキストディスプレイ
kill @e[tag=MAD_TextDisplay_Wait_CheckList]

## エンティティ召喚
#### 確認事項
summon minecraft:text_display ~ ~ ~ {text:{text:'支援物資投下数',color:'black',bold:true},background:16777215,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Wait','MAD_TextDisplay_Wait_CheckList']}
summon minecraft:text_display ~ ~-0.3 ~ {text:{translate:'%s個',with:[{score:{name:'#mad',objective:'NumberOfCarePackages'}}],color:'white'},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.25,1.25,0.1]},background:-16733696,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Wait','MAD_TextDisplay_Wait_CheckList']}