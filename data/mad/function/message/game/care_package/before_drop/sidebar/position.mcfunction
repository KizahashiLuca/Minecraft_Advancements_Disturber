#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボード設定
$scoreboard players set #mad TmpX $(x)
scoreboard players operation #mad TmpX -= #mad PosX
$scoreboard players set #mad TmpZ $(z)
scoreboard players operation #mad TmpZ -= #mad PosZ

## サイドバー表示設定
#### サイドバー - 全員用
$scoreboard players display numberformat 支援物資$(number)-投下場所 Sidebar fixed ['',{translate:'[%s, %s]',with:[{score:{name:'#mad',objective:'TmpX'},color:'green'},{score:{name:'#mad',objective:'TmpZ'},color:'green'}]}]
#### サイドバー - 赤チーム用
$scoreboard players display numberformat 支援物資$(number)-投下場所 SidebarA fixed ['',{translate:'[%s, %s]',with:[{score:{name:'#mad',objective:'TmpX'},color:'green'},{score:{name:'#mad',objective:'TmpZ'},color:'green'}]}]
#### サイドバー - 青チーム用
$scoreboard players display numberformat 支援物資$(number)-投下場所 SidebarB fixed ['',{translate:'[%s, %s]',with:[{score:{name:'#mad',objective:'TmpX'},color:'green'},{score:{name:'#mad',objective:'TmpZ'},color:'green'}]}]
#### サイドバー - 黄チーム用
$scoreboard players display numberformat 支援物資$(number)-投下場所 SidebarC fixed ['',{translate:'[%s, %s]',with:[{score:{name:'#mad',objective:'TmpX'},color:'green'},{score:{name:'#mad',objective:'TmpZ'},color:'green'}]}]
#### サイドバー - 緑チーム用
$scoreboard players display numberformat 支援物資$(number)-投下場所 SidebarD fixed ['',{translate:'[%s, %s]',with:[{score:{name:'#mad',objective:'TmpX'},color:'green'},{score:{name:'#mad',objective:'TmpZ'},color:'green'}]}]