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
summon minecraft:text_display ~0.975 ~1.50 ~ {text:{text:'初期時間',color:'black',bold:true},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_InitialTime','MAD_TextDisplay_InitialTimeTitle']}
#### 3桁目 上矢印
execute positioned ~0.40 ~1.00 ~ run function mad:system/setting/initial_time/display/arrow {text:'ᐱ',color:'dark_green',direction:'Up',digit:'3'}
#### 2桁目 上矢印
execute positioned ~0.00 ~1.00 ~ run function mad:system/setting/initial_time/display/arrow {text:'ᐱ',color:'dark_green',direction:'Up',digit:'2'}
#### 1桁目 上矢印
execute positioned ~-0.40 ~1.00 ~ run function mad:system/setting/initial_time/display/arrow {text:'ᐱ',color:'dark_green',direction:'Up',digit:'1'}
#### 4桁目 数字
execute positioned ~0.80 ~0.55 ~ run function mad:system/setting/initial_time/display/number {digit:'01000'}
#### 3桁目 数字
execute positioned ~0.40 ~0.55 ~ run function mad:system/setting/initial_time/display/number {digit:'00100'}
#### 2桁目 数字
execute positioned ~0.00 ~0.55 ~ run function mad:system/setting/initial_time/display/number {digit:'00010'}
#### 1桁目 数字
execute positioned ~-0.40 ~0.55 ~ run function mad:system/setting/initial_time/display/number {digit:'00001'}
#### 秒
execute positioned ~-0.75 ~0.525 ~ run function mad:system/setting/initial_time/display/second
#### 3桁目 下矢印
execute positioned ~0.40 ~0.20 ~ run function mad:system/setting/initial_time/display/arrow {text:'ᐯ',color:'dark_red',direction:'Down',digit:'3'}
#### 2桁目 下矢印
execute positioned ~0.00 ~0.20 ~ run function mad:system/setting/initial_time/display/arrow {text:'ᐯ',color:'dark_red',direction:'Down',digit:'2'}
#### 1桁目 下矢印
execute positioned ~-0.40 ~0.20 ~ run function mad:system/setting/initial_time/display/arrow {text:'ᐯ',color:'dark_red',direction:'Down',digit:'1'}
#### リセットボタン
execute positioned ~ ~-0.25 ~ run function mad:system/setting/initial_time/display/reset
#### 戻る
execute positioned ~ ~-0.75 ~ run function mad:system/setting/initial_time/display/return