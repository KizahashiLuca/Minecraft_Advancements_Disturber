#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
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
