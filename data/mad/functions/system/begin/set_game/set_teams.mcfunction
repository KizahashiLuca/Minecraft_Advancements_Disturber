#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Add teams
team add Participant {"text":"参加者"}
team modify Participant color white
team modify Participant friendlyFire true
team modify Participant collisionRule always
team modify Participant nametagVisibility always
team modify Participant seeFriendlyInvisibles false
team modify Participant deathMessageVisibility never
team join Participant @a[gamemode=adventure]

## Add team a
team add TeamA {"text":"赤チーム"}
team modify TeamA color red
team modify TeamA friendlyFire true
team modify TeamA collisionRule always
team modify TeamA nametagVisibility always
team modify TeamA seeFriendlyInvisibles false
team modify TeamA deathMessageVisibility never

## Add team b
team add TeamB {"text":"青チーム"}
team modify TeamB color blue
team modify TeamB friendlyFire true
team modify TeamB collisionRule always
team modify TeamB nametagVisibility always
team modify TeamB seeFriendlyInvisibles false
team modify TeamB deathMessageVisibility never

## Add team c
team add TeamC {"text":"黄チーム"}
team modify TeamC color yellow
team modify TeamC friendlyFire true
team modify TeamC collisionRule always
team modify TeamC nametagVisibility always
team modify TeamC seeFriendlyInvisibles false
team modify TeamC deathMessageVisibility never

## Add team d
team add TeamD {"text":"緑チーム"}
team modify TeamD color green
team modify TeamD friendlyFire true
team modify TeamD collisionRule always
team modify TeamD nametagVisibility always
team modify TeamD seeFriendlyInvisibles false
team modify TeamD deathMessageVisibility never

## Add team e
team add TeamE {"text":"紫チーム"}
team modify TeamE color dark_purple
team modify TeamE friendlyFire true
team modify TeamE collisionRule always
team modify TeamE nametagVisibility always
team modify TeamE seeFriendlyInvisibles false
team modify TeamE deathMessageVisibility never

## Add team - never collision
team add NeverCollision
team modify NeverCollision color white
team modify NeverCollision friendlyFire false
team modify NeverCollision collisionRule never
team modify NeverCollision nametagVisibility never
team modify NeverCollision seeFriendlyInvisibles false
team modify NeverCollision deathMessageVisibility never