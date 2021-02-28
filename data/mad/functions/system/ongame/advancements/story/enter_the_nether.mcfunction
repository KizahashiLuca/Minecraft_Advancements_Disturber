#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Mar 2021
## Version   : β-1.2.3
#####################################

## Branch team
execute as @s[predicate=mad:ongame/player/participant_alive,scores={AD_mc_enter_hell=0}] run function mad:system/ongame/advancements/story/enter_the_nether_branch
