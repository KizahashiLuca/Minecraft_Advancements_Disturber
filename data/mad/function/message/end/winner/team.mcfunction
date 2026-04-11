#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## タイトル表示
$title @a title ['',{text:'$(text)チーム',color:'$(color)',bold:true}]
$title @a subtitle ['',{text:'WIN',color:'$(color)',bold:true}]
title @a times 20 80 20

## 試合終了メッセージ表示
tellraw @a ['',{translate:'  試合が終了しました。'}]
$tellraw @a ['',{translate:'  勝者は %s です！',with: [{text:'$(text)チーム',color:'$(color)',bold:true}]}]