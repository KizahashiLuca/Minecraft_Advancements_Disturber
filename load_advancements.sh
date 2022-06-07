#!/bin/bash

## file comment
function filecomment() {
  cat <<EOF > $1
#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

EOF
}

## team text list
team_text=(
  "\"text\":\"赤チーム\",\"color\":\"red\""
  "\"text\":\"青チーム\",\"color\":\"blue\""
  "\"text\":\"黄チーム\",\"color\":\"yellow\""
  "\"text\":\"緑チーム\",\"color\":\"green\""
  "\"text\":\"紫チーム\",\"color\":\"dark_purple\""
);

## objectives list
declare -a objectives=()
## json list
declare -a jsons=()

## detect installed
if ! type "jq" > /dev/null 2>&1 ; then
  echo;
  echo "[ERROR] Command 'jq' not found, but can be installed with:"
  echo;
  echo "sudo apt install jq"
  echo;

  exit 1
fi

## directory path
BASE_DIR=$(cd $(dirname $0); pwd)
MINECRAFT_DIR=${BASE_DIR}/data/minecraft/advancements/
ONGAME_DIR=${BASE_DIR}/data/mad/functions/system/ongame/advancements/
ONGAME_INDIV_DIR=${BASE_DIR}/data/mad/functions/system/ongame_individual/advancements/
ONGAME_TEAM_DIR=${BASE_DIR}/data/mad/functions/system/ongame_team/advancements/

## set rewards
i=1
cd "${MINECRAFT_DIR}"
for FILE in `find ${MINECRAFT_DIR} -maxdepth 2 -type f -name *.json`; do
  ## file name
  DIR=`echo "${FILE%/*}" | sed -e "s@${MINECRAFT_DIR}@@"`
  STEM=`echo "${FILE##*/}" | sed -e "s@\.json@@"`
  TMP=tmp_${DIR}_${STEM}.json
  echo ${i} ${DIR} - ${STEM}
  ## set value
  ADV_OBJECTIVE=AD_${DIR^}_${STEM}
  FRAME=`cat "${FILE}" | jq '.display.frame' | sed -e "s/\"//g"`
  if [ ${FRAME} == "challenge" ]; then
    COLOR=dark_purple
  else
    COLOR=green
  fi
  cat "${FILE}" | jq ".rewards |= .+ {\"function\":\"mad:system/ongame/advancements/${DIR}/${STEM}\"}" > "${TMP}"
  cat "${TMP}" > "${FILE}"
  ## detect function
  FUNC1=${ONGAME_DIR}/${DIR}/${STEM}.mcfunction
  FUNC2=${ONGAME_DIR}/${DIR}/${STEM}_branch.mcfunction
  FUNC3=${ONGAME_INDIV_DIR}/${DIR}/${STEM}.mcfunction
  ## make file - detect
  filecomment "${FUNC1}"
  cat << EOF >> ${FUNC1}
## Detect advancement
execute as @s[predicate=mad:ongame/player/participant_alive,scores={${ADV_OBJECTIVE}=0}] run function mad:system/ongame/advancements/${DIR}/${STEM}_branch
EOF
  ## make file - branch
  filecomment "${FUNC2}"
  cat << EOF >> ${FUNC2}
## Branch team
execute if score #mad IsTeam matches 0 as @s run function mad:system/ongame_individual/advancements/${DIR}/${STEM}
execute if score #mad IsTeam matches 1 as @s[team=TeamA] run function mad:system/ongame_team/advancements/${DIR}/${STEM}_team_a
execute if score #mad IsTeam matches 1 as @s[team=TeamB] run function mad:system/ongame_team/advancements/${DIR}/${STEM}_team_b
execute if score #mad IsTeam matches 1 as @s[team=TeamC] run function mad:system/ongame_team/advancements/${DIR}/${STEM}_team_c
execute if score #mad IsTeam matches 1 as @s[team=TeamD] run function mad:system/ongame_team/advancements/${DIR}/${STEM}_team_d
execute if score #mad IsTeam matches 1 as @s[team=TeamE] run function mad:system/ongame_team/advancements/${DIR}/${STEM}_team_e
EOF
  ## make file - individual
  filecomment "${FUNC3}"
  cat << EOF >> ${FUNC3}
## Set scoreboard
scoreboard players set @s ${ADV_OBJECTIVE} 1
scoreboard players add @s HasAdvancements 1
scoreboard players operation @s TimeLimit += #mad AddingTime
scoreboard players operation @s Second += #mad AddingTime
tellraw @s ["",{"translate":"chat.type.advancement.${FRAME}","with":[{"selector":"@s"},{"translate":"[%s]","color":"${COLOR}","with":[{"translate":"advancements.${DIR}.${STEM}.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"${COLOR}","with":[{"translate":"advancements.${DIR}.${STEM}.title"},{"translate":"advancements.${DIR}.${STEM}.description"}]}]}}]}]}]
EOF
  ## make file - team
  j=0
  for team in {A..E}; do
    team_text=${team_text[j]}
    FUNC4=${ONGAME_TEAM_DIR}/${DIR}/${STEM}_team_${team,,}.mcfunction
    filecomment "${FUNC4}"
    cat << EOF >> ${FUNC4}
## Set scoreboard
scoreboard players set @a[team=Team${team}] ${ADV_OBJECTIVE} 1
scoreboard players add @a[team=Team${team}] HasAdvancements 1
scoreboard players operation @p[team=Team${team},tag=Leader] TimeLimit += #mad AddingTime
scoreboard players operation @p[team=Team${team},tag=Leader] Second += #mad AddingTime
advancement grant @a[team=Team${team}] only minecraft:${DIR}/${STEM}
tellraw @a[team=Team${team}] ["",{"translate":"chat.type.advancement.${FRAME}","with":[{${team_text},"bold":true},{"translate":"[%s]","color":"${COLOR}","with":[{"translate":"advancements.${DIR}.${STEM}.title","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"${COLOR}","with":[{"translate":"advancements.${DIR}.${STEM}.title"},{"translate":"advancements.${DIR}.${STEM}.description"}]}]}}]}]}]
EOF
    j=$((j+1))
  done
  ## add objectives
  objectives=("${objectives[@]}" ${ADV_OBJECTIVE})
  ## remove tmp json
  jsons=("${jsons[@]}" ${TMP})
  ## increment
  i=$((i+1))
done

## remove jsons
for json in ${jsons[@]}; do
  rm ${json}
done

## show adding objectives list
i=0
echo;
echo "#### advancements"
for objective in ${objectives[@]}; do
  ## add objective
  echo "scoreboard objectives add ${objective} dummy"
  ## increment
  i=$((i+1))
done

## show setting objectives list
i=0
echo;
echo "#### advancements"
for objective in ${objectives[@]}; do
  ## add objective
  echo "scoreboard players set @a ${objective} 0"
  ## increment
  i=$((i+1))
done

## show removing objectives list
i=0
echo;
echo "#### advancements"
for objective in ${objectives[@]}; do
  ## remove objective
  echo "scoreboard objectives remove ${objective}"
  ## increment
  i=$((i+1))
done