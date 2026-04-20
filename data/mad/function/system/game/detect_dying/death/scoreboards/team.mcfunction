#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボード設定
#### 死亡ペナルティ
execute as @s[predicate=mad:player/dying/a] run \
  scoreboard players operation #mad_team_a Second -= #mad DeathPenaltyTime
execute as @s[predicate=mad:player/dying/b] run \
  scoreboard players operation #mad_team_a Second -= #mad DeathPenaltyTime
execute as @s[predicate=mad:player/dying/c] run \
  scoreboard players operation #mad_team_a Second -= #mad DeathPenaltyTime
execute as @s[predicate=mad:player/dying/d] run \
  scoreboard players operation #mad_team_a Second -= #mad DeathPenaltyTime
