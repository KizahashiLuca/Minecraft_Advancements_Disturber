#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 28 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Add tags
execute as @s[predicate=mad:system/item/notice_of_thief/detect_thief/a] run tag @a[predicate=mad:player/team/a] add MAD_DetectThiefTeam
execute as @s[predicate=mad:system/item/notice_of_thief/detect_thief/b] run tag @a[predicate=mad:player/team/b] add MAD_DetectThiefTeam
execute as @s[predicate=mad:system/item/notice_of_thief/detect_thief/c] run tag @a[predicate=mad:player/team/c] add MAD_DetectThiefTeam
execute as @s[predicate=mad:system/item/notice_of_thief/detect_thief/d] run tag @a[predicate=mad:player/team/d] add MAD_DetectThiefTeam
execute as @s[predicate=mad:system/item/notice_of_thief/detect_thief/e] run tag @a[predicate=mad:player/team/e] add MAD_DetectThiefTeam

## Send message
tellraw @a[predicate=mad:system/item/notice_of_thief/detect_thief_team] ["",{"translate":"[怪盗予告] %sが怪盗予告しました。 ","with":[{"selector":"@s"}],"color":"green","bold":false,"italic":false},{"translate":"%s秒後に誰かからアイテムを盗みます。","with":[{"score":{"name":"#mad","objective":"ThiefSecond"}}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=mad:system/item/notice_of_thief/detect_not_thief_team] ["",{"text":"[怪盗予告] 怪盗予告が誰かから出されました。","color":"green","bold":false,"italic":false}]