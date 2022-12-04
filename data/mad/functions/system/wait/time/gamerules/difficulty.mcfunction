#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 04 Dec 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Send match mode
execute if predicate mad:gamerules/daylight_cycle/false run scoreboard players reset 昼夜サイクル：なし Sidebar
execute if predicate mad:gamerules/daylight_cycle/true run scoreboard players reset 昼夜サイクル：あり Sidebar
execute if predicate mad:gamerules/difficulty/peaceful run scoreboard players set 難易度：ピースフル Sidebar 0
execute if predicate mad:gamerules/difficulty/easy run scoreboard players set 難易度：イージー Sidebar 1
execute if predicate mad:gamerules/difficulty/normal run scoreboard players set 難易度：ノーマル Sidebar 2
execute if predicate mad:gamerules/difficulty/hard run scoreboard players set 難易度：ハード Sidebar 3
execute if predicate mad:gamerules/difficulty/hardcore run scoreboard players set 難易度：ハードコア Sidebar 4