#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## サウンド
execute at @s run playsound minecraft:ui.button.click ui @a

## エンティティ削除
#### テキストディスプレイ
kill @e[tag=MAD_TextDisplay_Setting_NumberOfCarePackages]
#### インタラクション
kill @e[tag=MAD_Interaction,tag=!MAD_Interaction_Setting_ChangeSpectator]

## 支援物資投下数変更
$scoreboard players $(operator) #mad NumberOfCarePackages 1
execute if score #mad NumberOfCarePackages matches ..0 run scoreboard players set #mad NumberOfCarePackages 5
execute if score #mad NumberOfCarePackages matches 6.. run scoreboard players set #mad NumberOfCarePackages 1

## テキストディスプレイ召喚
execute at @e[predicate=mad:marker/respawn_beacon,limit=1] positioned ~ ~1 ~6.45 run function mad:system/setting/other_rules/number_of_care_packages/display/

## フェーズ設定
function mad:phase/setting/other_rules/number_of_care_packages

## インタラクション検知削除
execute as @e[tag=MAD_Interaction] run data remove entity @s interaction