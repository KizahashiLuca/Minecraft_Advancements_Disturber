#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## テキストディスプレイ召喚
#### タイトル
summon minecraft:text_display ~0.7375 ~1.50 ~ {text:{text:'ワールド範囲',color:'black',bold:true},background:0,alignment:'center',Rotation:[180.0f, 0.0f],Tags:['MAD_TextDisplay','MAD_TextDisplay_Setting_WorldBorder','MAD_TextDisplay_WorldBorderTitle']}
#### 4桁目 上矢印
execute positioned ~0.60 ~1.00 ~ run function mad:system/setting/world_border/display/arrow {text:'ᐱ',color:'dark_green',direction:'Up',digit:'4'}
#### 3桁目 上矢印
execute positioned ~0.20 ~1.00 ~ run function mad:system/setting/world_border/display/arrow {text:'ᐱ',color:'dark_green',direction:'Up',digit:'3'}
#### 2桁目 上矢印
execute positioned ~-0.20 ~1.00 ~ run function mad:system/setting/world_border/display/arrow {text:'ᐱ',color:'dark_green',direction:'Up',digit:'2'}
#### 1桁目 上矢印
execute positioned ~-0.60 ~1.00 ~ run function mad:system/setting/world_border/display/arrow {text:'ᐱ',color:'dark_green',direction:'Up',digit:'1'}
#### 5桁目 数字
execute positioned ~1.00 ~0.55 ~ run function mad:system/setting/world_border/display/number {digit:'10000'}
#### 4桁目 数字
execute positioned ~0.60 ~0.55 ~ run function mad:system/setting/world_border/display/number {digit:'01000'}
#### 3桁目 数字
execute positioned ~0.20 ~0.55 ~ run function mad:system/setting/world_border/display/number {digit:'00100'}
#### 2桁目 数字
execute positioned ~-0.20 ~0.55 ~ run function mad:system/setting/world_border/display/number {digit:'00010'}
#### 1桁目 数字
execute positioned ~-0.60 ~0.55 ~ run function mad:system/setting/world_border/display/number {digit:'00001'}
#### 秒
execute positioned ~-0.95 ~0.525 ~ run function mad:system/setting/world_border/display/meter
#### 4桁目 下矢印
execute positioned ~0.60 ~0.20 ~ run function mad:system/setting/world_border/display/arrow {text:'ᐯ',color:'dark_red',direction:'Down',digit:'4'}
#### 3桁目 下矢印
execute positioned ~0.20 ~0.20 ~ run function mad:system/setting/world_border/display/arrow {text:'ᐯ',color:'dark_red',direction:'Down',digit:'3'}
#### 2桁目 下矢印
execute positioned ~-0.20 ~0.20 ~ run function mad:system/setting/world_border/display/arrow {text:'ᐯ',color:'dark_red',direction:'Down',digit:'2'}
#### 1桁目 下矢印
execute positioned ~-0.60 ~0.20 ~ run function mad:system/setting/world_border/display/arrow {text:'ᐯ',color:'dark_red',direction:'Down',digit:'1'}
#### リセットボタン
execute positioned ~ ~-0.25 ~ run function mad:system/setting/world_border/display/reset
#### 戻る
execute positioned ~ ~-0.75 ~ run function mad:system/setting/world_border/display/return