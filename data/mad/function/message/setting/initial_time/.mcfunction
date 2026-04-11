#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 初期時間変更メッセージ表示
tellraw @a ['',{translate:'[初期設定] 初期時間 : %s%s',with:[{score:{name:'#mad',objective:'InitialTime'},bold:true},{text:'秒',bold:true}],color:'green'}]