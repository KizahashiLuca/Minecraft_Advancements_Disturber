#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Death message
execute as @s[predicate=mad:system/game/detect_death/dimension/overworld] run tellraw @a[predicate=mad:player/team/b] ["",{"translate":"%s が %s にて死亡しました。","with":[{"selector":"@s","bold":true},{"translate":"%s [%s, %s, %s]","with":[{"text":"オーバーワールド"},{"nbt":"LastDeathLocation.pos[0]","entity":"@s"},{"nbt":"LastDeathLocation.pos[1]","entity":"@s"},{"nbt":"LastDeathLocation.pos[2]","entity":"@s"}],"color":"green"}],"color":"white","bold":false,"italic":false}]
execute as @s[predicate=mad:system/game/detect_death/dimension/the_nether] run tellraw @a[predicate=mad:player/team/b] ["",{"translate":"%s が %s にて死亡しました。","with":[{"selector":"@s","bold":true},{"translate":"%s [%s, %s, %s]","with":[{"text":"ネザー"},{"nbt":"LastDeathLocation.pos[0]","entity":"@s"},{"nbt":"LastDeathLocation.pos[1]","entity":"@s"},{"nbt":"LastDeathLocation.pos[2]","entity":"@s"}],"color":"green"}],"color":"white","bold":false,"italic":false}]
execute as @s[predicate=mad:system/game/detect_death/dimension/the_end] run tellraw @a[predicate=mad:player/team/b] ["",{"translate":"%s が %s にて死亡しました。","with":[{"selector":"@s","bold":true},{"translate":"%s [%s, %s, %s]","with":[{"text":"エンド"},{"nbt":"LastDeathLocation.pos[0]","entity":"@s"},{"nbt":"LastDeathLocation.pos[1]","entity":"@s"},{"nbt":"LastDeathLocation.pos[2]","entity":"@s"}],"color":"green"}],"color":"white","bold":false,"italic":false}]