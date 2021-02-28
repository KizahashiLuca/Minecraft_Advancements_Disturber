#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Mar 2021
## Version   : β-1.2.3
#####################################

## Branch team
execute as @s[predicate=mad:ongame/player/participant_alive,scores={AD_ad_honey_slid=0}] run function mad:system/ongame/advancements/adventure/honey_block_slide_branch
