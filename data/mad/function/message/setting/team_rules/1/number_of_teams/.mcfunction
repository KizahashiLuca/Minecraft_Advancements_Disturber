#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## チーム数変更メッセージ表示
tellraw @a ['',{translate:'[初期設定] チーム数 : %s%s',with:[{score:{name:'#mad',objective:'NumberOfTeams'},bold:true},{text:'チーム',bold:true}],color:'green'}]