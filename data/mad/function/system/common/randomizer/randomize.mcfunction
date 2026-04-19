#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 乱数生成カウントを1減らす
scoreboard players remove @s RandomizerCount 1

## 乱数生成
#### 乱数生成器のシード値を更新
scoreboard players operation #mad RandomizerSeed *= #mad RandomizerMultiplier
#### 乱数生成器のシード値をModderで割った余りを新しいシード値とする
scoreboard players operation #mad RandomizerSeed %= #mad RandomizerModder
#### 乱数生成器のシード値をプレイヤーのRandomizerResultにコピー
scoreboard players operation @s RandomizerResult = #mad RandomizerSeed
#### 乱数生成器のシード値を100で割った余りをプレイヤーのRandomizerResultとする
scoreboard players operation @s RandomizerResult %= #mad 100

## 乱数生成カウントが1以上のプレイヤーは再度乱数生成を行う
execute as @s[scores={RandomizerCount=1..}] run \
  function mad:system/common/randomizer/randomize
