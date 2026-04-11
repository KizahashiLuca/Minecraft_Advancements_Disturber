#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## チーム離脱メッセージ表示
$tellraw @s ['',{translate:'[チーム編成設定] あなたは%sから離脱しました',with:[{text:'$(text)チーム',bold:true,color:'$(color)'}],color:'green'}]