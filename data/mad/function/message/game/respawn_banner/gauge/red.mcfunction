#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## アクションバー
title @a[distance=..2] title ['']
execute as @s[scores={Second=19}] run title @a[distance=..2] subtitle ['',{text:'■',color:'red'},{text:'■■■■■■■■■■■■■■■■■■■',color:'gray'}]
execute as @s[scores={Second=18}] run title @a[distance=..2] subtitle ['',{text:'■■',color:'red'},{text:'■■■■■■■■■■■■■■■■■■',color:'gray'}]
execute as @s[scores={Second=17}] run title @a[distance=..2] subtitle ['',{text:'■■■',color:'red'},{text:'■■■■■■■■■■■■■■■■■',color:'gray'}]
execute as @s[scores={Second=16}] run title @a[distance=..2] subtitle ['',{text:'■■■■',color:'red'},{text:'■■■■■■■■■■■■■■■■',color:'gray'}]
execute as @s[scores={Second=15}] run title @a[distance=..2] subtitle ['',{text:'■■■■■',color:'red'},{text:'■■■■■■■■■■■■■■■',color:'gray'}]
execute as @s[scores={Second=14}] run title @a[distance=..2] subtitle ['',{text:'■■■■■■',color:'red'},{text:'■■■■■■■■■■■■■■',color:'gray'}]
title @a[distance=..2] times 0 20 0