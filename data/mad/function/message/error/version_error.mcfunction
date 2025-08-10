#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## バージョンエラーメッセージ表示
tellraw @a ['',{text:'  バージョンエラー',color:'yellow',bold:true}]
tellraw @a ['',{text:'    対応バージョン   : '},{text:'JE 1.21.7 Release 以降',color:'green'}]
execute if score #mad SnapshotVersion matches 1 run tellraw @a ['',{text:'    現在のバージョン : '},{translate:'1.%s.%s Snapshot',with:[{score:{name:'#mad',objective:'MajorVersion'}},{score:{name:'#mad',objective:'MinorVersion'}}],color:'red',bold:true}]
execute if score #mad PreReleaseVersion matches 1 run tellraw @a ['',{text:'    現在のバージョン : '},{translate:'1.%s.%s Pre-Release',with:[{score:{name:'#mad',objective:'MajorVersion'}},{score:{name:'#mad',objective:'MinorVersion'}}],color:'red',bold:true}]
execute if score #mad ReleaseCandidateVersion matches 1 run tellraw @a ['',{text:'    現在のバージョン : '},{translate:'1.%s.%s Release Candidate',with:[{score:{name:'#mad',objective:'MajorVersion'}},{score:{name:'#mad',objective:'MinorVersion'}}],color:'red',bold:true}]
execute if score #mad ReleaseVersion matches 1 run tellraw @a ['',{text:'    現在のバージョン : '},{translate:'1.%s.%s Release',with:[{score:{name:'#mad',objective:'MajorVersion'}},{score:{name:'#mad',objective:'MinorVersion'}}],color:'red',bold:true}]