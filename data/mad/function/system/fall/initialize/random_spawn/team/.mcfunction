#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## ランダムスポーン地点設定
#### 赤チーム
$tellraw @a [{text:'x=$(x),z=$(z)  x1=$(x1),z1=$(z1)  x2=$(x2),z2=$(z2)  x3=$(x3),z3=$(z3)  x4=$(x4),z4=$(z4)'}]
$execute store result storage mad: team.a.x int 1 run function mad:system/fall/initialize/random_spawn/get_random_value {min:'$(x)',max:'$(x4)',axis:'X'}
$execute store result storage mad: team.a.z int 1 run function mad:system/fall/initialize/random_spawn/get_random_value {min:'$(z)',max:'$(z4)',axis:'Z'}
#### 青チーム
$execute store result storage mad: team.b.x int 1 run function mad:system/fall/initialize/random_spawn/get_random_value {min:'$(x2)',max:'$(x)',axis:'X'}
$execute store result storage mad: team.b.z int 1 run function mad:system/fall/initialize/random_spawn/get_random_value {min:'$(z2)',max:'$(z)',axis:'Z'}
#### 黄チーム
$execute store result storage mad: team.c.x int 1 run function mad:system/fall/initialize/random_spawn/get_random_value {min:'$(x)',max:'$(x1)',axis:'X'}
$execute store result storage mad: team.c.z int 1 run function mad:system/fall/initialize/random_spawn/get_random_value {min:'$(z1)',max:'$(z)',axis:'Z'}
#### 緑チーム
$execute store result storage mad: team.d.x int 1 run function mad:system/fall/initialize/random_spawn/get_random_value {min:'$(x3)',max:'$(x)',axis:'X'}
$execute store result storage mad: team.d.z int 1 run function mad:system/fall/initialize/random_spawn/get_random_value {min:'$(z)',max:'$(z3)',axis:'Z'}

## テレポート
function mad:system/fall/initialize/random_spawn/team/teleport with storage mad: team.a
function mad:system/fall/initialize/random_spawn/team/teleport with storage mad: team.b
function mad:system/fall/initialize/random_spawn/team/teleport with storage mad: team.c
function mad:system/fall/initialize/random_spawn/team/teleport with storage mad: team.d