#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## リスポーンバナー矢印
$execute as @e[type=minecraft:marker,tag=MAD_Player$(victim_number),limit=1] at @s run summon minecraft:text_display ~ ~1 ~ {Tags:['MAD_RespawnBannerPoint','MAD_Player$(victim_number)'],alignment:'center',billboard:'center',text:[[{translate:'%sのリスポーンバナー\n',with:[{text:'$(victim_id)',color:'$(victim_color)'}]}],[{text:'（プレイヤーの頭を取得）\n'}],[{text:'↓'}]],background:0}