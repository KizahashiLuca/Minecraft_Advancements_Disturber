#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Set scoreboard
execute as @s[scores={AD_pg_treasure_e=0},advancements={mad:treasure_hunt_emerald=true}] run function mad:system/ongame/advancements/potage00/treasure_hunt_emerald
execute as @s[scores={AD_pg_treasure_d=0},advancements={mad:treasure_hunt_diamond=true}] run function mad:system/ongame/advancements/potage00/treasure_hunt_diamond
execute as @s[scores={AD_pg_treasure_g=0},advancements={mad:treasure_hunt_gold=true}] run function mad:system/ongame/advancements/potage00/treasure_hunt_gold
execute as @s[scores={AD_pg_treasure_i=0},advancements={mad:treasure_hunt_iron=true}] run function mad:system/ongame/advancements/potage00/treasure_hunt_iron
execute as @s[scores={AD_pg_treasure_l=0},advancements={mad:treasure_hunt_lapis_lazuli=true}] run function mad:system/ongame/advancements/potage00/treasure_hunt_lapis_lazuli
execute as @s[scores={AD_pg_treasure_r=0},advancements={mad:treasure_hunt_redstone=true}] run function mad:system/ongame/advancements/potage00/treasure_hunt_redstone
execute as @s[scores={AD_pg_treasure_q=0},advancements={mad:treasure_hunt_quartz=true}] run function mad:system/ongame/advancements/potage00/treasure_hunt_quartz
execute as @s[scores={AD_pg_treasure_t=1}] run advancement grant @s only mad:treasure_hunt treasure01
execute as @s[scores={AD_pg_treasure_t=2}] run advancement grant @s only mad:treasure_hunt treasure02
execute as @s[scores={AD_pg_treasure_t=3}] run advancement grant @s only mad:treasure_hunt treasure03
execute as @s[scores={AD_pg_treasure_t=4}] run advancement grant @s only mad:treasure_hunt treasure04
execute as @s[scores={AD_pg_treasure_t=5..}] run advancement grant @s only mad:treasure_hunt treasure05