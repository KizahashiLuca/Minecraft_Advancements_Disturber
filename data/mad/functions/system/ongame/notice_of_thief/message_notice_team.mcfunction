#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Add tags
execute as @s[team=TeamA,tag=DetectThief] run tag @a[team=TeamA] add ThiefTeam
execute as @s[team=TeamB,tag=DetectThief] run tag @a[team=TeamB] add ThiefTeam
execute as @s[team=TeamC,tag=DetectThief] run tag @a[team=TeamC] add ThiefTeam
execute as @s[team=TeamD,tag=DetectThief] run tag @a[team=TeamD] add ThiefTeam
execute as @s[team=TeamE,tag=DetectThief] run tag @a[team=TeamE] add ThiefTeam

## Send message
tellraw @a[tag=ThiefTeam] ["",{"text":"[怪盗予告] ","color":"green"},{"selector":"@s"},{"text":"が怪盗予告しました。5秒後に誰かからアイテムを盗みます。","color":"green"}]
tellraw @a[tag=!ThiefTeam] ["",{"text":"[怪盗予告] 怪盗予告が誰かから出されました。","color":"green"}]

## Remove a tag
tag @a remove ThiefTeam