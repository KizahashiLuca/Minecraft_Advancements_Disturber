#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Add a tag
execute as @s[tag=DetectThief,team=TeamA] run tag @a[team=TeamA] add NotStealPlayer
execute as @s[tag=DetectThief,team=TeamB] run tag @a[team=TeamB] add NotStealPlayer
execute as @s[tag=DetectThief,team=TeamC] run tag @a[team=TeamC] add NotStealPlayer
execute as @s[tag=DetectThief,team=TeamD] run tag @a[team=TeamD] add NotStealPlayer
execute as @s[tag=DetectThief,team=TeamE] run tag @a[team=TeamE] add NotStealPlayer