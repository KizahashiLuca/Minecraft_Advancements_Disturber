#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## チーム統計メッセージ表示
$tellraw @a ['',{translate:'    %s',with:[{text:'$(text)チーム',color:'$(color)',bold:true}]}]
$tellraw @a ['',{translate:'      達成進捗個数 : %s個',with:[{score:{name:'#mad_team_$(team)',objective:'HasAdvancements'},color:'red',bold:true}]}]
$tellraw @a ['',{translate:'      物資獲得回数 : %s回',with:[{score:{name:'#mad_team_$(team)',objective:'GetCarePackageCount'},color:'red',bold:true}]}]
$tellraw @a ['',{translate:'      獲得生存時間 : %s秒',with:[{score:{name:'#mad_team_$(team)',objective:'TimeLimit'},color:'red',bold:true}]}]
$tellraw @a ['',{translate:'        内,プレイヤー撃破ボーナス : %s秒',with:[{score:{name:'#mad_team_$(team)',objective:'GetBonusTime'},color:'red',bold:true}]}]