#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## サウンド
execute at @s run playsound minecraft:ui.button.click master @a ~ ~ ~ 1.0 1.0 1.0

## エンティティ削除
#### テキストディスプレイ
kill @e[tag=MAD_TextDisplay_Setting_NumberOfTeams]
#### インタラクション
kill @e[tag=MAD_Interaction,tag=!MAD_Interaction_Setting_ChangeSpectator]

## チーム数変更
$scoreboard players $(operator) #mad NumberOfTeams 1
execute if score #mad NumberOfTeams matches ..1 run scoreboard players set #mad NumberOfTeams 4
execute if score #mad NumberOfTeams matches 5.. run scoreboard players set #mad NumberOfTeams 2

## テキストディスプレイ召喚
execute at @e[predicate=mad:marker/respawn_beacon,limit=1] positioned ~ ~1 ~6.45 run function mad:system/setting/team_rules/1/number_of_teams/display/

## フェーズ設定
function mad:phase/setting/team_rules/1/number_of_teams

## インタラクション検知削除
execute as @e[tag=MAD_Interaction] run data remove entity @s interaction