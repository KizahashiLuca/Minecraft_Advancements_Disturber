#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 支援物資投下数変更メッセージ表示
tellraw @a ['',{translate:'[初期設定] 支援物資投下数 : %s%s',with:[{score:{name:'#mad',objective:'NumberOfCarePackages'},bold:true},{text:'個',bold:true}],color:'green'}]