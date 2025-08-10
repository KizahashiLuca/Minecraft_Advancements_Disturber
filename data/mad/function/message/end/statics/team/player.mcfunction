#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## チーム個人統計メッセージ表示
$tellraw @a ['',{translate:'        %s : %s個',with:[{selector:'@s',color:'$(color)'},{score:{name:'@s',objective:'HasAdvancements'},color:'red',bold:true}]}]