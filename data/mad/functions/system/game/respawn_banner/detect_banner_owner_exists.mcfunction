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
tag @s add MAD_DetectBannerOwner

## Set scoreboard
scoreboard players set @s OwnerExists 0

## Detect banner owner exists
execute as @a[predicate=mad:player/dead] if score @s UUID0 = @e[predicate=mad:armor_stand/respawn_banner/detect_banner_owner,limit=1] UUID0 if score @s UUID1 = @e[predicate=mad:armor_stand/respawn_banner/detect_banner_owner,limit=1] UUID1 if score @s UUID2 = @e[predicate=mad:armor_stand/respawn_banner/detect_banner_owner,limit=1] UUID2 if score @s UUID3 = @e[predicate=mad:armor_stand/respawn_banner/detect_banner_owner,limit=1] UUID3 run scoreboard players set @e[predicate=mad:armor_stand/respawn_banner/detect_banner_owner,limit=1] OwnerExists 1
execute as @s[scores={OwnerExists=0}] run data remove block ~ ~ ~ Items[{Slot:13b}]

## Remove a tag
tag @s remove MAD_DetectBannerOwner