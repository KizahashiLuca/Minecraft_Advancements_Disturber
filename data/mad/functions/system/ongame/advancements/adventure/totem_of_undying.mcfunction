#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Branch team
execute as @s[predicate=mad:ongame/player/participant_alive,scores={AD_ad_totem=0}] run function mad:system/ongame/advancements/adventure/totem_of_undying_branch
