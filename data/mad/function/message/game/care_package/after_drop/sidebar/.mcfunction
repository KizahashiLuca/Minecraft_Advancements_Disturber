#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボード設定
$scoreboard players set #mad TmpX $(x)
scoreboard players operation #mad TmpX -= #mad PosX
$scoreboard players set #mad TmpZ $(z)
scoreboard players operation #mad TmpZ -= #mad PosZ

## サイドバー表示設定
#### サイドバー - 全員用
$scoreboard players display numberformat 支援物資$(number)-投下時間 Sidebar fixed ['',{translate:'%s',with:[{text:'投下済み',color:'red'}]}]
$scoreboard players display numberformat 支援物資$(number)-投下場所 Sidebar fixed ['',{translate:'[%s, %s]',with:[{score:{name:'#mad',objective:'TmpX'},color:'green'},{score:{name:'#mad',objective:'TmpZ'},color:'green'}]}]
#### サイドバー - 赤チーム用
$scoreboard players display numberformat 支援物資$(number)-投下時間 SidebarA fixed ['',{translate:'%s',with:[{text:'投下済み',color:'red'}]}]
$scoreboard players display numberformat 支援物資$(number)-投下場所 SidebarA fixed ['',{translate:'[%s, %s]',with:[{score:{name:'#mad',objective:'TmpX'},color:'green'},{score:{name:'#mad',objective:'TmpZ'},color:'green'}]}]
#### サイドバー - 青チーム用
$scoreboard players display numberformat 支援物資$(number)-投下時間 SidebarB fixed ['',{translate:'%s',with:[{text:'投下済み',color:'red'}]}]
$scoreboard players display numberformat 支援物資$(number)-投下場所 SidebarB fixed ['',{translate:'[%s, %s]',with:[{score:{name:'#mad',objective:'TmpX'},color:'green'},{score:{name:'#mad',objective:'TmpZ'},color:'green'}]}]
#### サイドバー - 黄チーム用
$scoreboard players display numberformat 支援物資$(number)-投下時間 SidebarC fixed ['',{translate:'%s',with:[{text:'投下済み',color:'red'}]}]
$scoreboard players display numberformat 支援物資$(number)-投下場所 SidebarC fixed ['',{translate:'[%s, %s]',with:[{score:{name:'#mad',objective:'TmpX'},color:'green'},{score:{name:'#mad',objective:'TmpZ'},color:'green'}]}]
#### サイドバー - 緑チーム用
$scoreboard players display numberformat 支援物資$(number)-投下時間 SidebarD fixed ['',{translate:'%s',with:[{text:'投下済み',color:'red'}]}]
$scoreboard players display numberformat 支援物資$(number)-投下場所 SidebarD fixed ['',{translate:'[%s, %s]',with:[{score:{name:'#mad',objective:'TmpX'},color:'green'},{score:{name:'#mad',objective:'TmpZ'},color:'green'}]}]