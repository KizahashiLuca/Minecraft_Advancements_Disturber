#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 撃破ボーナス変更メッセージ表示
tellraw @a ['',{translate:'[初期設定] 撃破ボーナス : %s%s',with:[{score:{name:'#mad',objective:'BonusTimeOfKill'},bold:true},{text:'秒',bold:true}],color:'green'}]