#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 14 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Send messages
tellraw @a[predicate=mad:gamerules/team_match/friendly_fire/false] ["",{"text":"[フレンドリーファイア] ","color":"green"},{"text":"なし","color":"green","bold":true}]
tellraw @a[predicate=mad:gamerules/team_match/friendly_fire/true] ["",{"text":"[フレンドリーファイア] ","color":"green"},{"text":"あり","color":"green","bold":true}]

tellraw @a[predicate=mad:gamerules/team_match/collision_rule/false] ["",{"text":"[当たり判定] ","color":"green"},{"text":"なし","color":"green","bold":true}]
tellraw @a[predicate=mad:gamerules/team_match/collision_rule/true] ["",{"text":"[当たり判定] ","color":"green"},{"text":"あり","color":"green","bold":true}]

tellraw @a[predicate=mad:gamerules/team_match/nametag_visibility/false] ["",{"text":"[ネームタグ表示] ","color":"green"},{"text":"なし","color":"green","bold":true}]
tellraw @a[predicate=mad:gamerules/team_match/nametag_visibility/true] ["",{"text":"[ネームタグ表示] ","color":"green"},{"text":"あり","color":"green","bold":true}]

tellraw @a[predicate=mad:gamerules/team_match/see_friendly_invisibles/false] ["",{"text":"[透明可視化] ","color":"green"},{"text":"なし","color":"green","bold":true}]
tellraw @a[predicate=mad:gamerules/team_match/see_friendly_invisibles/true] ["",{"text":"[透明可視化] ","color":"green"},{"text":"あり","color":"green","bold":true}]

tellraw @a[predicate=mad:gamerules/team_match/death_message_visibility/false] ["",{"text":"[死亡メッセージ] ","color":"green"},{"text":"なし","color":"green","bold":true}]
tellraw @a[predicate=mad:gamerules/team_match/death_message_visibility/true] ["",{"text":"[死亡メッセージ] ","color":"green"},{"text":"あり","color":"green","bold":true}]

tellraw @a[predicate=mad:gamerules/team_match/team_member/random] ["",{"text":"[チームメンバー選択] ","color":"green"},{"text":"自動(ランダム)","color":"green","bold":true}]
tellraw @a[predicate=mad:gamerules/team_match/team_member/manual] ["",{"text":"[チームメンバー選択] ","color":"green"},{"text":"手動","color":"green","bold":true}]

tellraw @a ["",{"text":"[チーム数] ","color":"green"},{"score":{"name":"#mad","objective":"NumberOfTeams"},"color":"green","bold":true},{"text":"チーム","color":"green","bold":true}]

tellraw @a ["",{"text":"[リスポーンビーコン数] ","color":"green"},{"score":{"name":"#mad","objective":"NumberOfBeacons"},"color":"green","bold":true},{"text":"ヶ所","color":"green","bold":true}]

tellraw @a[predicate=mad:gamerules/team_match/respawn_banner_time/limited] ["",{"text":"[リスポーンバナー残存時間] ","color":"green"},{"score":{"name":"#mad","objective":"RespawnBannerTime"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true}]
tellraw @a[predicate=mad:gamerules/team_match/respawn_banner_time/unlimited] ["",{"text":"[リスポーンバナー残存時間] ","color":"green"},{"text":"無制限","color":"green","bold":true}]

## Change to choose setting
function mad:system/begin/gui/root/change_to