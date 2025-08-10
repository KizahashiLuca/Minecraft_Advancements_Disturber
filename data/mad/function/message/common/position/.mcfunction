#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## ポジション表示
$title @s actionbar ['',{translate:'現在の座標 : (%s, %s, %s)    方角 : %s',with:[{score:{name:'@s',objective:'PosX'}},{score:{name:'@s',objective:'PosY'}},{score:{name:'@s',objective:'PosZ'}},{nbt:'position.$(angle)',storage:'mad:'}],color:'light_purple'}]