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
execute as @s[scores={Second=7}] run title @a[distance=..2] subtitle ['',{text:'■■■■■■■■■■■■■',color:'green'},{text:'■■■■■■■',color:'gray'}]
execute as @s[scores={Second=6}] run title @a[distance=..2] subtitle ['',{text:'■■■■■■■■■■■■■■',color:'green'},{text:'■■■■■■',color:'gray'}]
execute as @s[scores={Second=5}] run title @a[distance=..2] subtitle ['',{text:'■■■■■■■■■■■■■■■',color:'green'},{text:'■■■■■',color:'gray'}]
execute as @s[scores={Second=4}] run title @a[distance=..2] subtitle ['',{text:'■■■■■■■■■■■■■■■■',color:'green'},{text:'■■■■',color:'gray'}]
execute as @s[scores={Second=3}] run title @a[distance=..2] subtitle ['',{text:'■■■■■■■■■■■■■■■■■',color:'green'},{text:'■■■',color:'gray'}]
execute as @s[scores={Second=2}] run title @a[distance=..2] subtitle ['',{text:'■■■■■■■■■■■■■■■■■■',color:'green'},{text:'■■',color:'gray'}]
execute as @s[scores={Second=1}] run title @a[distance=..2] subtitle ['',{text:'■■■■■■■■■■■■■■■■■■■',color:'green'},{text:'■',color:'gray'}]
execute as @s[scores={Second=..0}] run title @a[distance=..2] subtitle ['',{text:'■■■■■■■■■■■■■■■■■■■■',color:'green'},{text:'',color:'gray'}]
title @a[distance=..2] times 0 20 0