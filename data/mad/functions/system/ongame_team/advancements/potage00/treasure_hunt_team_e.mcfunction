#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Set scoreboard
scoreboard players set @a[team=TeamE] AD_pg_treasure 1
scoreboard players add @a[team=TeamE] HasAdvancements 1
scoreboard players operation @p[team=TeamE,tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @p[team=TeamE,tag=Leader] Second += #mad AddingTime
advancement grant @a[team=TeamE] only mad:treasure_hunt
tellraw @a[team=TeamE] ["",{"translate":"chat.type.advancement.task","with":[{"text":"紫チーム","color":"dark_purple","bold":true},{"translate":"[%s]","color":"green","with":[{"text":"宝探し","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"green","with":[{"text":"宝探し"},{"text":"エメラルド, ダイヤモンド, 金, 鉄, ラピスラズリ, レッドストーン, ネザークォーツ\n7種類のアイテムを全て手に入れる。"}]}]}}]}]}]
