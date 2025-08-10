#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## ワールド範囲変更メッセージ表示
tellraw @a ['',{translate:'[初期設定] ワールド範囲 : %s%s',with:[{score:{name:'#mad',objective:'WorldBorder'},bold:true},{text:'m',bold:true}],color:'green'}]