#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 人数エラーメッセージ表示
tellraw @a ['',{text:'  人数エラー',color:'yellow',bold:true}]
tellraw @a ['',{text:'    対応人数   : '},{translate:'%s人',with:[{text:' 1 - 20 ',color:'green'}]}]
tellraw @a ['',{text:'    現在の人数 : '},{translate:'%s人',with:[{score:{name:'#mad',objective:'NumberOfPlayers'},color:'red',bold:true}]}]
tellraw @a ['',{translate:'    参加者以外は %s に\n  なってください。',with:[{text:'スペクテイターモード',color:'red',bold:true}]}]