#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## テキストディスプレイ召喚
#### タイトル
summon minecraft:text_display ~0.6125 ~1.50 ~ {text:{text:'支援物資投下数',color:'black',bold:true},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_NumberOfCarePackages','MAD_TextDisplay_NumberOfCarePackagesTitle']}
#### 上矢印
execute positioned ~0.00 ~1.00 ~ run function mad:system/setting/other_rules/number_of_care_packages/display/arrow {text:'ᐱ',color:'dark_green',direction:'Up'}
#### 数字
execute positioned ~0.00 ~0.55 ~ run function mad:system/setting/other_rules/number_of_care_packages/display/number
#### 箱
execute positioned ~-0.75 ~0.525 ~ run function mad:system/setting/other_rules/number_of_care_packages/display/box
#### 下矢印
execute positioned ~0.00 ~0.20 ~ run function mad:system/setting/other_rules/number_of_care_packages/display/arrow {text:'ᐯ',color:'dark_red',direction:'Down'}
#### リセットボタン
execute positioned ~ ~-0.25 ~ run function mad:system/setting/other_rules/number_of_care_packages/display/reset
#### 戻る
execute positioned ~ ~-0.75 ~ run function mad:system/setting/other_rules/number_of_care_packages/display/return