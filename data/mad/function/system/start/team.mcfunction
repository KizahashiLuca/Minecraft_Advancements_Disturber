#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ゲーム開始 - チーム戦
#### エンティティ召喚 - タイトル
execute unless entity @e[tag=MAD_TextDisplay_Setting_Title] at @e[predicate=mad:marker/respawn_beacon,limit=1] positioned ~ ~1 ~6.45 run summon minecraft:text_display ~ ~2.00 ~ {text:{text:'Minecraft\nAdvancements\nDisturber\nゲーム設定',color:'black',bold:true},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_Title']}
#### チーム編成ランダム設定
function mad:system/setting/root/detect/ok/