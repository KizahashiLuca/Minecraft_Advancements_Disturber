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
execute as @s[scores={Second=13}] run title @a[distance=..2] subtitle ['',{text:'■■■■■■■',color:'yellow'},{text:'■■■■■■■■■■■■■',color:'gray'}]
execute as @s[scores={Second=12}] run title @a[distance=..2] subtitle ['',{text:'■■■■■■■■',color:'yellow'},{text:'■■■■■■■■■■■■',color:'gray'}]
execute as @s[scores={Second=11}] run title @a[distance=..2] subtitle ['',{text:'■■■■■■■■■',color:'yellow'},{text:'■■■■■■■■■■■',color:'gray'}]
execute as @s[scores={Second=10}] run title @a[distance=..2] subtitle ['',{text:'■■■■■■■■■■',color:'yellow'},{text:'■■■■■■■■■■',color:'gray'}]
execute as @s[scores={Second=9}] run title @a[distance=..2] subtitle ['',{text:'■■■■■■■■■■■',color:'yellow'},{text:'■■■■■■■■■',color:'gray'}]
execute as @s[scores={Second=8}] run title @a[distance=..2] subtitle ['',{text:'■■■■■■■■■■■■',color:'yellow'},{text:'■■■■■■■■',color:'gray'}]
title @a[distance=..2] times 0 20 0