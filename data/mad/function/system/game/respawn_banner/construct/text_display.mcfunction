#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## リスポーンバナー矢印
$execute as @e[type=minecraft:marker,tag=MAD_Player$(victim_number),limit=1] at @s run summon minecraft:text_display ~ ~1 ~ {Tags:['MAD_RespawnBannerPoint','MAD_Player$(victim_number)'],alignment:'center',billboard:'center',text:[[{translate:'%sのリスポーンバナー\n',with:[{text:'$(victim_id)',color:'$(victim_color)'}]}],[{text:'（プレイヤーの頭を取得）\n'}],[{text:'↓'}]],background:0}