#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 29 Sep 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Death message
execute as @s[predicate=mad:system/game/detect_death/dimension/overworld] run tellraw @a[predicate=mad:player/team/a] ["",{"translate":"%sは %s にて死亡したため、 %s%s 失いました。","with":[{"selector":"@s"},{"translate":"%s [%s, %s, %s]","with":[{"text":"オーバーワールド"},{"nbt":"LastDeathLocation.pos[0]","entity":"@s"},{"nbt":"LastDeathLocation.pos[1]","entity":"@s"},{"nbt":"LastDeathLocation.pos[2]","entity":"@s"}],"color":"green"},{"score":{"name":"#mad","objective":"DeathPenaltyTime"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true}],"color":"white","bold":false,"italic":false}]
execute as @s[predicate=mad:system/game/detect_death/dimension/the_nether] run tellraw @a[predicate=mad:player/team/a] ["",{"translate":"%sは %s にて死亡したため、 %s%s 失いました。","with":[{"selector":"@s"},{"translate":"%s [%s, %s, %s]","with":[{"text":"ネザー"},{"nbt":"LastDeathLocation.pos[0]","entity":"@s"},{"nbt":"LastDeathLocation.pos[1]","entity":"@s"},{"nbt":"LastDeathLocation.pos[2]","entity":"@s"}],"color":"green"},{"score":{"name":"#mad","objective":"DeathPenaltyTime"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true}],"color":"white","bold":false,"italic":false}]
execute as @s[predicate=mad:system/game/detect_death/dimension/the_end] run tellraw @a[predicate=mad:player/team/a] ["",{"translate":"%sは %s にて死亡したため、 %s%s 失いました。","with":[{"selector":"@s"},{"translate":"%s [%s, %s, %s]","with":[{"text":"エンド"},{"nbt":"LastDeathLocation.pos[0]","entity":"@s"},{"nbt":"LastDeathLocation.pos[1]","entity":"@s"},{"nbt":"LastDeathLocation.pos[2]","entity":"@s"}],"color":"green"},{"score":{"name":"#mad","objective":"DeathPenaltyTime"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true}],"color":"white","bold":false,"italic":false}]

## Death penalty
scoreboard players operation #mad_team_a Second -= #mad DeathPenaltyTime