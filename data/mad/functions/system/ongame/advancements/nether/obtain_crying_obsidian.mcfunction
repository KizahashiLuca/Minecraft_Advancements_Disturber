#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Branch team
execute as @s[predicate=mad:ongame/player/participant_alive,scores={AD_nt_cry_obsidn=0}] run function mad:system/ongame/advancements/nether/obtain_crying_obsidian_branch
