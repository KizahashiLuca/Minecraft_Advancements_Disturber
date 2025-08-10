#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## タイトル表示
title @a title ['',{selector:'@a[predicate=mad:player/alive/]',color:'red',bold:true}]
title @a subtitle ['',{text:'WIN',color:'red',bold:true}]
title @a times 20 80 20

## 試合終了メッセージ表示
tellraw @a ['',{translate:'  試合が終了しました。'}]
tellraw @a ['',{translate:'  勝者は %s です！',with: [{selector:'@a[predicate=mad:player/alive/]',color:'red',bold:true}]}]