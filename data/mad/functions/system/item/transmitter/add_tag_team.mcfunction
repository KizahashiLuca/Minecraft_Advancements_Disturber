#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Add a tag
execute as @s[predicate=mad:player/team/a] run tag @a[predicate=mad:player/team/a] remove MAD_DetectTransmitter
execute as @s[predicate=mad:player/team/b] run tag @a[predicate=mad:player/team/b] remove MAD_DetectTransmitter
execute as @s[predicate=mad:player/team/c] run tag @a[predicate=mad:player/team/c] remove MAD_DetectTransmitter
execute as @s[predicate=mad:player/team/d] run tag @a[predicate=mad:player/team/d] remove MAD_DetectTransmitter
execute as @s[predicate=mad:player/team/e] run tag @a[predicate=mad:player/team/e] remove MAD_DetectTransmitter