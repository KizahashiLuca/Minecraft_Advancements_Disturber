#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Set scoreboard
scoreboard players set @a[team=TeamB] AD_hb_glow_sign 1
scoreboard players add @a[team=TeamB] HasAdvancements 1
scoreboard players operation @p[team=TeamB,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @p[team=TeamB,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamB] only minecraft:husbandry/make_a_sign_glow
tellraw @a[team=TeamB] ["",{"translate":"chat.type.advancement.task","with":[{"text":"青チーム","color":"blue","bold":true},{"translate":"[%s]","color":"green","with":[{"translate":"advancements.husbandry.make_a_sign_glow.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"translate":"advancements.husbandry.make_a_sign_glow.title"},{"translate":"advancements.husbandry.make_a_sign_glow.description"}]}]}}]}]}]