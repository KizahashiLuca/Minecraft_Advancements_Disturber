#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## メッセージ表示
execute if predicate mad:dimension/overworld run tellraw @a[distance=..5] ['',{text:'[帰還装置] オーバーワールドには帰還ポータルを設置できません。',color:'green'}]
execute if predicate mad:dimension/the_nether run tellraw @a[distance=..5] ['',{text:'[帰還装置] ネザーには帰還ポータルを設置できません。',color:'green'}]