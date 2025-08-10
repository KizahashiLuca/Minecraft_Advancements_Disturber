#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## NBTストレージの値でテレポート
$tp @s ~$(x) ~$(y) ~$(z)

## ディスプレイ
#### アイテムディスプレイ
execute as @s[tag=MAD_ItemDisplay_PlayerHead] at @s run tp ~ ~ ~0.06
#### テキストディスプレイ
execute as @s[tag=MAD_TextDisplay_PlayerHead] at @s run tp ~ ~0.030 ~
#### インタラクション
execute as @s[tag=MAD_Interaction_PlayerHead] at @s run tp ~ ~-0.125 ~0.06
