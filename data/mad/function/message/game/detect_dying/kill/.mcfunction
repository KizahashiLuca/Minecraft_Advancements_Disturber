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
tellraw @a [{text:'test game/detect_dying/kill/'}]
$tellraw $(victim_target_selector) ['',{translate:'%s が %s によって倒され %s にて死亡し$(message)ました',with:[{selector:'$(victim)',color:'$(victim_color)',bold:true},{selector:'$(killer)',color:'$(killer_color)',bold:true},{translate:'%s [$(x), $(y), $(z)]',with:[{storage:'mad:',nbt:'dimension.$(dimension)'}],color:'green'},{$(message_selector):'$(killer_name)',color:'$(killer_color)',bold:true},{score:{name:'#mad',objective:'BonusTimeOfKill'},color:'green',bold:true},{text:'秒',color:'green',bold:true}]}]
$tellraw $(killer_target_selector) ['',{translate:'%s が %s によって倒され %s にて死亡し$(message)ました',with:[{selector:'$(victim)',color:'$(victim_color)',bold:true},{selector:'$(killer)',color:'$(killer_color)',bold:true},{translate:'%s [$(x), $(y), $(z)]',with:[{storage:'mad:',nbt:'dimension.$(dimension)'}],color:'green'},{$(message_selector):'$(killer_name)',color:'$(killer_color)',bold:true},{score:{name:'#mad',objective:'BonusTimeOfKill'},color:'green',bold:true},{text:'秒',color:'green',bold:true}]}]