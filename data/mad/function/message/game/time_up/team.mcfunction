#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## タイトルメッセージ表示
$title @a[predicate=mad:player/alive/$(team)] title ['',{text:'死んでしまった！',color:'red',bold:true}]
$title @a[predicate=mad:player/alive/$(team)] subtitle ['',{text:'死因：時間切れ'}]
$title @a[predicate=mad:player/alive/$(team)] times 20 80 20