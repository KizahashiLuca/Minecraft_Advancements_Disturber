#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 14 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Send match mode
execute if predicate mad:gamerules/daylight_cycle/false run scoreboard players reset 昼夜サイクル：なし Sidebar
execute if predicate mad:gamerules/daylight_cycle/true run scoreboard players reset 昼夜サイクル：あり Sidebar
execute if predicate mad:gamerules/difficulty/peaceful run scoreboard players set 難易度：ピースフル Sidebar 0
execute if predicate mad:gamerules/difficulty/easy run scoreboard players set 難易度：イージー Sidebar 0
execute if predicate mad:gamerules/difficulty/normal run scoreboard players set 難易度：ノーマル Sidebar 0
execute if predicate mad:gamerules/difficulty/hard run scoreboard players set 難易度：ハード Sidebar 0
execute if predicate mad:gamerules/difficulty/hardcore run scoreboard players set 難易度：ハードコア Sidebar 0