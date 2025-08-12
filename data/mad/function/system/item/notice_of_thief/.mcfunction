#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボードリセット
scoreboard players set @s UseNoticeOfThief 0

## ストレージ削除
data remove storage mad: item.notice_of_thief.tmp

## サウンドイベント
playsound minecraft:entity.allay.death block @a ~ ~ ~ 1.0 1.0 1.0
 
## ストレージ格納 - 怪盗予告発信者プレイヤー番号
execute store result storage mad: item.notice_of_thief.tmp.thief_number int 1.0 run scoreboard players get @s PlayerNumber
execute as @s[predicate=mad:player/team/a] run data modify storage mad: item.notice_of_thief.tmp.thief_team set value 'a'
execute as @s[predicate=mad:player/team/b] run data modify storage mad: item.notice_of_thief.tmp.thief_team set value 'b'
execute as @s[predicate=mad:player/team/c] run data modify storage mad: item.notice_of_thief.tmp.thief_team set value 'c'
execute as @s[predicate=mad:player/team/d] run data modify storage mad: item.notice_of_thief.tmp.thief_team set value 'd'
data modify storage mad: item.notice_of_thief.thieves append from storage mad: item.notice_of_thief.tmp

## メッセージ表示
$function mad:message/item/notice_of_thief/send_notice/$(type) with storage mad: item.notice_of_thief.tmp

## ストレージ削除
data remove storage mad: item.notice_of_thief.tmp

## 関数スケジュール
schedule function mad:system/item/notice_of_thief/steal/ 5s append

## マーカーキル
kill @e[type=minecraft:marker,tag=MAD_MinecartItem,tag=MAD_NoticeOfThief,sort=nearest,limit=1]