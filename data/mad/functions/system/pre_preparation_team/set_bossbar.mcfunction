#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 03 Jan 2021
## Version   : β-1.2
#####################################

## Set bossbar - team red
bossbar add minecraft:bossbar_red ["",{"text":"赤チーム ","color":"red","bold":true},{"text":"制限時間  残り "},{"score":{"name":"@p[team=TeamA,tag=Leader]","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]
bossbar set minecraft:bossbar_red players @a[team=TeamA]
bossbar set minecraft:bossbar_red name ["",{"text":"赤チーム ","color":"red","bold":true},{"text":"制限時間  残り "},{"score":{"name":"@p[team=TeamA,tag=Leader]","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]
execute store result bossbar minecraft:bossbar_red max run scoreboard players get @p[team=TeamA,tag=Leader] TimeLimit
execute store result bossbar minecraft:bossbar_red value run scoreboard players get @p[team=TeamA,tag=Leader] Second

## Set bossbar - team blue
bossbar add minecraft:bossbar_blue ["",{"text":"青チーム ","color":"blue","bold":true},{"text":"制限時間  残り "},{"score":{"name":"@p[team=TeamB,tag=Leader]","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]
bossbar set minecraft:bossbar_blue players @a[team=TeamB]
bossbar set minecraft:bossbar_blue name ["",{"text":"青チーム ","color":"blue","bold":true},{"text":"制限時間  残り "},{"score":{"name":"@p[team=TeamB,tag=Leader]","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]
execute store result bossbar minecraft:bossbar_blue max run scoreboard players get @p[team=TeamB,tag=Leader] TimeLimit
execute store result bossbar minecraft:bossbar_blue value run scoreboard players get @p[team=TeamB,tag=Leader] Second

## Set bossbar - team yellow
bossbar add minecraft:bossbar_yellow ["",{"text":"黄チーム ","color":"yellow","bold":true},{"text":"制限時間  残り "},{"score":{"name":"@p[team=TeamC,tag=Leader]","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]
bossbar set minecraft:bossbar_yellow players @a[team=TeamC]
bossbar set minecraft:bossbar_yellow name ["",{"text":"黄チーム ","color":"yellow","bold":true},{"text":"制限時間  残り "},{"score":{"name":"@p[team=TeamC,tag=Leader]","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]
execute store result bossbar minecraft:bossbar_yellow max run scoreboard players get @p[team=TeamC,tag=Leader] TimeLimit
execute store result bossbar minecraft:bossbar_yellow value run scoreboard players get @p[team=TeamC,tag=Leader] Second

## Set bossbar - team green
bossbar add minecraft:bossbar_green ["",{"text":"緑チーム ","color":"green","bold":true},{"text":"制限時間  残り "},{"score":{"name":"@p[team=TeamD,tag=Leader]","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]
bossbar set minecraft:bossbar_green players @a[team=TeamD]
bossbar set minecraft:bossbar_green name ["",{"text":"緑チーム ","color":"green","bold":true},{"text":"制限時間  残り "},{"score":{"name":"@p[team=TeamD,tag=Leader]","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]
execute store result bossbar minecraft:bossbar_green max run scoreboard players get @p[team=TeamD,tag=Leader] TimeLimit
execute store result bossbar minecraft:bossbar_green value run scoreboard players get @p[team=TeamD,tag=Leader] Second

## Set bossbar - team purple
bossbar add minecraft:bossbar_purple ["",{"text":"紫チーム ","color":"dark_purple","bold":true},{"text":"制限時間  残り "},{"score":{"name":"@p[team=TeamE,tag=Leader]","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]
bossbar set minecraft:bossbar_purple players @a[team=TeamE]
bossbar set minecraft:bossbar_purple name ["",{"text":"紫チーム ","color":"dark_purple","bold":true},{"text":"制限時間  残り "},{"score":{"name":"@p[team=TeamE,tag=Leader]","objective":"Second"},"color":"green","bold":true},{"text":" 秒"}]
execute store result bossbar minecraft:bossbar_purple max run scoreboard players get @p[team=TeamE,tag=Leader] TimeLimit
execute store result bossbar minecraft:bossbar_purple value run scoreboard players get @p[team=TeamE,tag=Leader] Second