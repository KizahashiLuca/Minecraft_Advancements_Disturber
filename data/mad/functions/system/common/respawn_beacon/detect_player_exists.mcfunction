#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect team player exists
execute as @s[predicate=mad:player/team/a] unless entity @p[predicate=mad:player/alive/a,distance=..2] run scoreboard players set #mad DetectTeamExists 0
execute as @s[predicate=mad:player/team/b] unless entity @p[predicate=mad:player/alive/b,distance=..2] run scoreboard players set #mad DetectTeamExists 0
execute as @s[predicate=mad:player/team/c] unless entity @p[predicate=mad:player/alive/c,distance=..2] run scoreboard players set #mad DetectTeamExists 0
execute as @s[predicate=mad:player/team/d] unless entity @p[predicate=mad:player/alive/d,distance=..2] run scoreboard players set #mad DetectTeamExists 0
execute as @s[predicate=mad:player/team/e] unless entity @p[predicate=mad:player/alive/e,distance=..2] run scoreboard players set #mad DetectTeamExists 0