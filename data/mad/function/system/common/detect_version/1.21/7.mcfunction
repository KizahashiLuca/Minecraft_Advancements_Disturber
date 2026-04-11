#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## MCVersion   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## マインクラフトバージョン検出
scoreboard players set #mad MinorVersion 7
scoreboard players set #mad SnapshotVersion 0
scoreboard players set #mad PreReleaseVersion 0
scoreboard players set #mad ReleaseCandidateVersion 0
scoreboard players set #mad ReleaseVersion 0
execute if predicate mad:version/1.21/7/release-candidate run scoreboard players set #mad ReleaseCandidateVersion 1
execute if predicate mad:version/1.21/7/release run scoreboard players set #mad ReleaseVersion 1