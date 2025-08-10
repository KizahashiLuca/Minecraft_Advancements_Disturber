#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 死亡地点通知
$tellraw @a ['',{translate:'%s が %s にて死亡しました。',with:[{selector:'@s',color:'$(victim_color)',bold:true},{translate:'%s [$(x), $(y), $(z)]',with:[{storage:'mad:',nbt:'dimension.\'$(dimension)\''}],color:'green'}]}]