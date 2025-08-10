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
#### アイテムディスプレイ
$summon minecraft:item_display ~ ~ ~0.06 {item:{id:'minecraft:player_head',components:{profile:{name:'$(name)'}}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25,0.25,0.25]},teleport_duration:5,Glowing:true,Tags:['MAD_ItemDisplay','MAD_ItemDisplay_Setting_TeamMember','MAD_ItemDisplay_PlayerHead','MAD_DisplayGroup_Player$(number)']}
#### テキストディスプレイ
$summon minecraft:text_display ~ ~0.030 ~ {text:{text:'$(name)',color:'black'},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2,0.2,1.0]},teleport_duration:5,line_width:50,background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_TeamMember','MAD_TextDisplay_PlayerHead','MAD_DisplayGroup_Player$(number)']}
#### インタラクション
$summon minecraft:interaction ~ ~-0.125 ~0.06 {width:0.125,height:0.125,response:true,Tags:['MAD_Interaction','MAD_Interaction_Setting_TeamMember','MAD_Interaction_PlayerHead','MAD_DisplayGroup_Player$(number)']}
$scoreboard players set @e[tag=MAD_DisplayGroup_Player$(number)] PlayerHeadNumber $(number)