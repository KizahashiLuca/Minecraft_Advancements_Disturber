#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 死亡地点通知
$tellraw @a ['',{translate:'%s が %s にて死亡しました。',with:[{selector:'@s',color:'$(victim_color)',bold:true},{translate:'%s [$(x), $(y), $(z)]',with:[{storage:'mad:',nbt:'dimension.\'$(dimension)\''}],color:'green'}]}]