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
execute as @s[predicate=mad:ongame/player/participant_alive,scores={AD_hb_bred_anima=0}] run function mad:system/ongame/advancements/husbandry/breed_an_animal_branch
