#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18
## Author    : @aotage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Actionbar
title @a[distance=..2] title [""]
#execute as @s[scores={Second=20}] run title @a[distance=..2] subtitle ["",{"text":"","color":"red"},{"text":"■■■■■■■■■■■■■■■■■■■■","color":"gray"}]
execute as @s[scores={Second=19}] run title @a[distance=..2] subtitle ["",{"text":"■","color":"red"},{"text":"■■■■■■■■■■■■■■■■■■■","color":"gray"}]
execute as @s[scores={Second=18}] run title @a[distance=..2] subtitle ["",{"text":"■■","color":"red"},{"text":"■■■■■■■■■■■■■■■■■■","color":"gray"}]
execute as @s[scores={Second=17}] run title @a[distance=..2] subtitle ["",{"text":"■■■","color":"red"},{"text":"■■■■■■■■■■■■■■■■■","color":"gray"}]
execute as @s[scores={Second=16}] run title @a[distance=..2] subtitle ["",{"text":"■■■■","color":"red"},{"text":"■■■■■■■■■■■■■■■■","color":"gray"}]
execute as @s[scores={Second=15}] run title @a[distance=..2] subtitle ["",{"text":"■■■■■","color":"red"},{"text":"■■■■■■■■■■■■■■■","color":"gray"}]
execute as @s[scores={Second=14}] run title @a[distance=..2] subtitle ["",{"text":"■■■■■■","color":"red"},{"text":"■■■■■■■■■■■■■■","color":"gray"}]
execute as @s[scores={Second=13}] run title @a[distance=..2] subtitle ["",{"text":"■■■■■■■","color":"yellow"},{"text":"■■■■■■■■■■■■■","color":"gray"}]
execute as @s[scores={Second=12}] run title @a[distance=..2] subtitle ["",{"text":"■■■■■■■■","color":"yellow"},{"text":"■■■■■■■■■■■■","color":"gray"}]
execute as @s[scores={Second=11}] run title @a[distance=..2] subtitle ["",{"text":"■■■■■■■■■","color":"yellow"},{"text":"■■■■■■■■■■■","color":"gray"}]
execute as @s[scores={Second=10}] run title @a[distance=..2] subtitle ["",{"text":"■■■■■■■■■■","color":"yellow"},{"text":"■■■■■■■■■■","color":"gray"}]
execute as @s[scores={Second=9}] run title @a[distance=..2] subtitle ["",{"text":"■■■■■■■■■■■","color":"yellow"},{"text":"■■■■■■■■■","color":"gray"}]
execute as @s[scores={Second=8}] run title @a[distance=..2] subtitle ["",{"text":"■■■■■■■■■■■■","color":"yellow"},{"text":"■■■■■■■■","color":"gray"}]
execute as @s[scores={Second=7}] run title @a[distance=..2] subtitle ["",{"text":"■■■■■■■■■■■■■","color":"green"},{"text":"■■■■■■■","color":"gray"}]
execute as @s[scores={Second=6}] run title @a[distance=..2] subtitle ["",{"text":"■■■■■■■■■■■■■■","color":"green"},{"text":"■■■■■■","color":"gray"}]
execute as @s[scores={Second=5}] run title @a[distance=..2] subtitle ["",{"text":"■■■■■■■■■■■■■■■","color":"green"},{"text":"■■■■■","color":"gray"}]
execute as @s[scores={Second=4}] run title @a[distance=..2] subtitle ["",{"text":"■■■■■■■■■■■■■■■■","color":"green"},{"text":"■■■■","color":"gray"}]
execute as @s[scores={Second=3}] run title @a[distance=..2] subtitle ["",{"text":"■■■■■■■■■■■■■■■■■","color":"green"},{"text":"■■■","color":"gray"}]
execute as @s[scores={Second=2}] run title @a[distance=..2] subtitle ["",{"text":"■■■■■■■■■■■■■■■■■■","color":"green"},{"text":"■■","color":"gray"}]
execute as @s[scores={Second=1}] run title @a[distance=..2] subtitle ["",{"text":"■■■■■■■■■■■■■■■■■■■","color":"green"},{"text":"■","color":"gray"}]
execute as @s[scores={Second=0}] run title @a[distance=..2] subtitle ["",{"text":"■■■■■■■■■■■■■■■■■■■■","color":"green"},{"text":"","color":"gray"}]
title @a[distance=..2] times 0 20 0