#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## チーム個人統計メッセージ表示
$tellraw @a ['',{translate:'        %s : %s個',with:[{selector:'@s',color:'$(color)'},{score:{name:'@s',objective:'HasAdvancements'},color:'red',bold:true}]}]