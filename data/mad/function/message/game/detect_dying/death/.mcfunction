#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## メッセージ表示
$tellraw @a$(address) ['',{translate:'%s が %s にて死亡し$(message)ました',with:[{selector:'@s',bold:true},{translate:'%s [$(x), $(y), $(z)]',with:[{storage:'mad:',nbt:'dimension.$(dimension)'}],color:'green'},{score:{name:'#mad',objective:'DeathPenaltyTime'},color:'green',bold:true},{text:'秒',color:'green',bold:true}]}]