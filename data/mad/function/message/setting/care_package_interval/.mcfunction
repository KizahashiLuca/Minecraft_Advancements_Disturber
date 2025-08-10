#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 支援物資間隔変更メッセージ表示
tellraw @a ['',{translate:'[初期設定] 支援物資間隔 : %s%s',with:[{score:{name:'#mad',objective:'CarePackageInterval'},bold:true},{text:'秒',bold:true}],color:'green'}]