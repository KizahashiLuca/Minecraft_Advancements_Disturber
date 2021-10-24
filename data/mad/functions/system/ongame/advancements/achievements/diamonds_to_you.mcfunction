#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Branch team
execute as @s[predicate=mad:ongame/player/participant_alive,scores={AD_ac_diamonds2u=0}] run function mad:system/ongame/advancements/achievements/diamonds_to_you_branch
