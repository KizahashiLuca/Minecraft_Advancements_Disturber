#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 13 Sep 2022
## Version   : β-2.0.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Add a tag
execute as @s[predicate=mad:system/item/notice_of_thief/detect_thief/a] run tag @a[predicate=mad:player/team/a] add MAD_NotStealPlayer
execute as @s[predicate=mad:system/item/notice_of_thief/detect_thief/b] run tag @a[predicate=mad:player/team/b] add MAD_NotStealPlayer
execute as @s[predicate=mad:system/item/notice_of_thief/detect_thief/c] run tag @a[predicate=mad:player/team/c] add MAD_NotStealPlayer
execute as @s[predicate=mad:system/item/notice_of_thief/detect_thief/d] run tag @a[predicate=mad:player/team/d] add MAD_NotStealPlayer
execute as @s[predicate=mad:system/item/notice_of_thief/detect_thief/e] run tag @a[predicate=mad:player/team/e] add MAD_NotStealPlayer