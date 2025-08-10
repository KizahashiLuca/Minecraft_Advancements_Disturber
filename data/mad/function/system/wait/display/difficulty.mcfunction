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
summon minecraft:text_display ~ ~ ~ {text:{text:'難易度',color:'black',bold:true},background:16777215,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Wait','MAD_TextDisplay_Wait_CheckList']}
execute if predicate mad:gamerule/difficulty/peaceful run summon minecraft:text_display ~ ~-0.3 ~ {text:{text:'ピースフル',color:'white'},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.25,1.25,0.1]},background:-5635926,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Wait','MAD_TextDisplay_Wait_CheckList']}
execute if predicate mad:gamerule/difficulty/easy run summon minecraft:text_display ~ ~-0.3 ~ {text:{text:'イージー',color:'white'},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.25,1.25,0.1]},background:-16777046,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Wait','MAD_TextDisplay_Wait_CheckList']}
execute if predicate mad:gamerule/difficulty/normal run summon minecraft:text_display ~ ~-0.3 ~ {text:{text:'ノーマル',color:'white'},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.25,1.25,0.1]},background:-16733696,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Wait','MAD_TextDisplay_Wait_CheckList']}
execute if predicate mad:gamerule/difficulty/hard run summon minecraft:text_display ~ ~-0.3 ~ {text:{text:'ハード',color:'white'},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.25,1.25,0.1]},background:-5636096,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Wait','MAD_TextDisplay_Wait_CheckList']}
execute if predicate mad:gamerule/difficulty/hardcore run summon minecraft:text_display ~ ~-0.3 ~ {text:{text:'ハードコア',color:'white'},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.25,1.25,0.1]},background:-16777216,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Wait','MAD_TextDisplay_Wait_CheckList']}