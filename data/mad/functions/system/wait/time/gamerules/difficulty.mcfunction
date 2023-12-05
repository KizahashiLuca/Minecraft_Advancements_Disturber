#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset scoreboard sidebar display
scoreboard players reset 昼夜サイクル:

## Set sidebar display
scoreboard objectives setdisplay sidebar Sidebar
scoreboard objectives modify Sidebar numberformat blank

## Difficulty
execute if predicate mad:gamerules/difficulty/peaceful run scoreboard players set 難易度: Sidebar 0
execute if predicate mad:gamerules/difficulty/peaceful run scoreboard players display numberformat 難易度: Sidebar fixed [{"text":"ピースフル","color":"green"}]
execute if predicate mad:gamerules/difficulty/easy run scoreboard players set 難易度: Sidebar 1
execute if predicate mad:gamerules/difficulty/easy run scoreboard players display numberformat 難易度: Sidebar fixed [{"text":"イージー","color":"blue"}]
execute if predicate mad:gamerules/difficulty/normal run scoreboard players set 難易度: Sidebar 2
execute if predicate mad:gamerules/difficulty/normal run scoreboard players display numberformat 難易度: Sidebar fixed [{"text":"ノーマル","color":"yellow"}]
execute if predicate mad:gamerules/difficulty/hard run scoreboard players set 難易度: Sidebar 3
execute if predicate mad:gamerules/difficulty/hard run scoreboard players display numberformat 難易度: Sidebar fixed [{"text":"ハード","color":"red"}]
execute if predicate mad:gamerules/difficulty/hardcore run scoreboard players set 難易度: Sidebar 4
execute if predicate mad:gamerules/difficulty/hardcore run scoreboard players display numberformat 難易度: Sidebar fixed [{"text":"ハードコア","color":"dark_red"}]