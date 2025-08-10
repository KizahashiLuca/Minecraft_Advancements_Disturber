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
$execute store result storage mad: team.a.x int 1 run function mad:system/fall/initialize/random_spawn/get_random_value {min:'$(x)',max:'$(x4)'}
$execute store result storage mad: team.a.z int 1 run function mad:system/fall/initialize/random_spawn/get_random_value {min:'$(z)',max:'$(z4)'}
#### 青チーム
$execute store result storage mad: team.b.x int 1 run function mad:system/fall/initialize/random_spawn/get_random_value {min:'$(x2)',max:'$(x)'}
$execute store result storage mad: team.b.z int 1 run function mad:system/fall/initialize/random_spawn/get_random_value {min:'$(z2)',max:'$(z)'}
#### 黄チーム
$execute store result storage mad: team.c.x int 1 run function mad:system/fall/initialize/random_spawn/get_random_value {min:'$(x)',max:'$(x1)'}
$execute store result storage mad: team.c.z int 1 run function mad:system/fall/initialize/random_spawn/get_random_value {min:'$(z1)',max:'$(z)'}
#### 緑チーム
$execute store result storage mad: team.d.x int 1 run function mad:system/fall/initialize/random_spawn/get_random_value {min:'$(x3)',max:'$(x)'}
$execute store result storage mad: team.d.z int 1 run function mad:system/fall/initialize/random_spawn/get_random_value {min:'$(z)',max:'$(z3)'}

## テレポート
execute as @s[predicate=mad:player/team/a] run function mad:system/game/respawn/random_respawn/teleport with storage mad: team.a
execute as @s[predicate=mad:player/team/b] run function mad:system/game/respawn/random_respawn/teleport with storage mad: team.b
execute as @s[predicate=mad:player/team/c] run function mad:system/game/respawn/random_respawn/teleport with storage mad: team.c
execute as @s[predicate=mad:player/team/d] run function mad:system/game/respawn/random_respawn/teleport with storage mad: team.d