#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Send member setting messages
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
execute if score #mad NumberOfTeams matches 1.. run tellraw @a ["",{"text":"赤チーム","color":"red","bold":true},{"text":" メンバー : ","color":"white"}]
execute if score #mad NumberOfTeams matches 1.. run tellraw @a ["",{"selector":"@a[team=TeamA]"}]
execute if score #mad NumberOfTeams matches 2.. run tellraw @a ["",{"text":"\n青チーム","color":"blue","bold":true},{"text":" メンバー : ","color":"white"}]
execute if score #mad NumberOfTeams matches 2.. run tellraw @a ["",{"selector":"@a[team=TeamB]"}]
execute if score #mad NumberOfTeams matches 3.. run tellraw @a ["",{"text":"\n黄チーム","color":"yellow","bold":true},{"text":" メンバー : ","color":"white"}]
execute if score #mad NumberOfTeams matches 3.. run tellraw @a ["",{"selector":"@a[team=TeamC]"}]
execute if score #mad NumberOfTeams matches 4.. run tellraw @a ["",{"text":"\n緑チーム","color":"green","bold":true},{"text":" メンバー : ","color":"white"}]
execute if score #mad NumberOfTeams matches 4.. run tellraw @a ["",{"selector":"@a[team=TeamD]"}]
execute if score #mad NumberOfTeams matches 5.. run tellraw @a ["",{"text":"\n紫チーム","color":"dark_purple","bold":true},{"text":" メンバー : ","color":"white"}]
execute if score #mad NumberOfTeams matches 5.. run tellraw @a ["",{"selector":"@a[team=TeamE]"}]