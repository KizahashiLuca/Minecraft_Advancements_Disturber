#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Send match mode
execute if predicate mad:gamerules/difficulty/peaceful run scoreboard players reset 難易度：ピースフル Sidebar
execute if predicate mad:gamerules/difficulty/easy run scoreboard players reset 難易度：イージー Sidebar
execute if predicate mad:gamerules/difficulty/normal run scoreboard players reset 難易度：ノーマル Sidebar
execute if predicate mad:gamerules/difficulty/hard run scoreboard players reset 難易度：ハード Sidebar
execute if predicate mad:gamerules/difficulty/hardcore run scoreboard players reset 難易度：ハードコア Sidebar