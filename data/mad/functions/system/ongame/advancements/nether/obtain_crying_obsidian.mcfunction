#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Branch team
execute as @s[predicate=mad:ongame/player/participant_alive,scores={AD_nt_cry_obsidn=0}] run function mad:system/ongame/advancements/nether/obtain_crying_obsidian_branch
