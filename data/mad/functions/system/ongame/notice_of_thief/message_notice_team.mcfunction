#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Send message
execute as @s[team=TeamA,tag=DetectThief] run tellraw @a[team=TeamA] ["",{"text":"[怪盗予告] ","color":"green"},{"selector":"@s[team=TeamA,tag=DetectThief]"},{"text":"が怪盗予告しました。5秒後に誰かからアイテムを盗みます。","color":"green"}]
execute as @s[team=TeamA,tag=DetectThief] run tellraw @a[team=!TeamA] ["",{"text":"[怪盗予告] 怪盗予告が誰かから出されました。","color":"green"}]

execute as @s[team=TeamB,tag=DetectThief] run tellraw @a[team=TeamB] ["",{"text":"[怪盗予告] ","color":"green"},{"selector":"@s[team=TeamB,tag=DetectThief]"},{"text":"が怪盗予告しました。5秒後に誰かからアイテムを盗みます。","color":"green"}]
execute as @s[team=TeamB,tag=DetectThief] run tellraw @a[team=!TeamB] ["",{"text":"[怪盗予告] 怪盗予告が誰かから出されました。","color":"green"}]

execute as @s[team=TeamC,tag=DetectThief] run tellraw @a[team=TeamC] ["",{"text":"[怪盗予告] ","color":"green"},{"selector":"@s[team=TeamC,tag=DetectThief]"},{"text":"が怪盗予告しました。5秒後に誰かからアイテムを盗みます。","color":"green"}]
execute as @s[team=TeamC,tag=DetectThief] run tellraw @a[team=!TeamC] ["",{"text":"[怪盗予告] 怪盗予告が誰かから出されました。","color":"green"}]

execute as @s[team=TeamD,tag=DetectThief] run tellraw @a[team=TeamD] ["",{"text":"[怪盗予告] ","color":"green"},{"selector":"@s[team=TeamD,tag=DetectThief]"},{"text":"が怪盗予告しました。5秒後に誰かからアイテムを盗みます。","color":"green"}]
execute as @s[team=TeamD,tag=DetectThief] run tellraw @a[team=!TeamD] ["",{"text":"[怪盗予告] 怪盗予告が誰かから出されました。","color":"green"}]

execute as @s[team=TeamE,tag=DetectThief] run tellraw @a[team=TeamE] ["",{"text":"[怪盗予告] ","color":"green"},{"selector":"@s[team=TeamE,tag=DetectThief]"},{"text":"が怪盗予告しました。5秒後に誰かからアイテムを盗みます。","color":"green"}]
execute as @s[team=TeamE,tag=DetectThief] run tellraw @a[team=!TeamE] ["",{"text":"[怪盗予告] 怪盗予告が誰かから出されました。","color":"green"}]