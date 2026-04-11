#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## エンティティ召喚
#### タイトル
summon minecraft:text_display ~0.7375 ~1.50 ~ {text:{text:'その他ルール',color:'black',bold:true},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_OtherRules','MAD_TextDisplay_OtherRulesTitle']}
#### 難易度変更
execute if predicate mad:gamerule/difficulty/peaceful positioned ~ ~1.00 ~ run function mad:system/setting/other_rules/root/display/difficulty {text:'ピースフル',color:'dark_purple'}
execute if predicate mad:gamerule/difficulty/easy positioned ~ ~1.00 ~ run function mad:system/setting/other_rules/root/display/difficulty {text:'イージー',color:'dark_blue'}
execute if predicate mad:gamerule/difficulty/normal positioned ~ ~1.00 ~ run function mad:system/setting/other_rules/root/display/difficulty {text:'ノーマル',color:'dark_green'}
execute if predicate mad:gamerule/difficulty/hard positioned ~ ~1.00 ~ run function mad:system/setting/other_rules/root/display/difficulty {text:'ハード',color:'dark_red'}
execute if predicate mad:gamerule/difficulty/hardcore positioned ~ ~1.00 ~ run function mad:system/setting/other_rules/root/display/difficulty {text:'ハードコア',color:'black'}
#### 天気サイクル変更
execute if predicate mad:gamerule/weather_cycle/true positioned ~ ~0.75 ~ run function mad:system/setting/other_rules/root/display/weather_cycle {text:'あり',color:'dark_green'}
execute if predicate mad:gamerule/weather_cycle/false positioned ~ ~0.75 ~ run function mad:system/setting/other_rules/root/display/weather_cycle {text:'なし',color:'dark_red'}
#### 昼夜サイクル変更
execute if predicate mad:gamerule/daylight_cycle/true positioned ~ ~0.50 ~ run function mad:system/setting/other_rules/root/display/daylight_cycle {text:'あり',color:'dark_green'}
execute if predicate mad:gamerule/daylight_cycle/false positioned ~ ~0.50 ~ run function mad:system/setting/other_rules/root/display/daylight_cycle {text:'なし',color:'dark_red'}
#### 支援物資投下数変更
execute positioned ~ ~0.00 ~ run function mad:system/setting/other_rules/root/display/number_of_care_packages
#### 撃破ボーナス変更
execute positioned ~ ~-0.25 ~ run function mad:system/setting/other_rules/root/display/bonus_time_of_kill
#### 戻る
execute positioned ~ ~-0.75 ~ run function mad:system/setting/other_rules/root/display/return