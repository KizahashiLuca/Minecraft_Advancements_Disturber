#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 29 Sep 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @a[predicate=mad:player/team/b] AD_Originals_obtain_creeper_banner_pattern 1
scoreboard players set #mad_team_b AD_Originals_obtain_creeper_banner_pattern 1
scoreboard players add #mad_team_b HasAdvancements 1
scoreboard players operation #mad_team_b TimeLimit += #mad AddingTime
scoreboard players operation #mad_team_b Second += #mad AddingTime
advancement grant @a[predicate=mad:player/team/b] only mad:originals/obtain_creeper_banner_pattern
tellraw @a[predicate=mad:player/team/b] ["",{"translate":"chat.type.advancement.task","with":[{"text":"青チーム","color":"blue","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"どこかで見たような顔……","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"どこかで見たような顔……"},{"translate":"クリーパーの頭を手に入れて、クリーパー模様の旗の模様を作成する"}]}]}}]}]}]
