#!/bin/bash

## file comment
function filecomment() {
  cat <<EOF > $1
#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
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
AD_NAME=("minecraft" "mad")
GAME_DIR=${BASE_DIR}/data/mad/functions/system/game/advancements/
if [ ! -e "${GAME_DIR}" ]; then
  mkdir "${GAME_DIR}"
fi

## set rewards
i=1
for AD in "${AD_NAME[@]}"; do
  AD_DIR=${BASE_DIR}/data/${AD}/advancements/
  cd "${AD_DIR}"
  for FILE in `find ${AD_DIR} -maxdepth 2 -type f -name *.json`; do
    ## file name
    DIR=`echo "${FILE%/*}" | sed -e "s@${AD_DIR}@@"`
    STEM=`echo "${FILE##*/}" | sed -e "s@\.json@@"`
    TMP=tmp_${DIR}_${STEM}.json
    echo ${i} ${DIR} - ${STEM}
    ## create directory
    if [ ! -e "${GAME_DIR}/${DIR}" ]; then
      mkdir "${GAME_DIR}/${DIR}"
    fi
    if [ ! -e "${GAME_DIR}/${DIR}/${STEM}" ]; then
      mkdir "${GAME_DIR}/${DIR}/${STEM}"
    fi
    if [ ! -e "${GAME_DIR}/${DIR}/${STEM}/team" ]; then
      mkdir "${GAME_DIR}/${DIR}/${STEM}/team"
    fi
    ## set value
    ADV_OBJECTIVE=AD_${DIR^}_${STEM}
    TITLE=`cat "${FILE}" | jq '.display.title.translate' | sed -e "s/\"//g"`
    DESCRIPTION=`cat "${FILE}" | jq '.display.description.translate' | sed -e "s/\"//g"`
    FRAME=`cat "${FILE}" | jq '.display.frame' | sed -e "s/\"//g"`
    COLOR=green
    if [ ${FRAME} == "null" ]; then
      FRAME=task
    fi
    if [ ${FRAME} == "challenge" ]; then
      COLOR=dark_purple
    fi
    cat "${FILE}" | jq ".rewards |= .+ {\"function\":\"mad:system/game/advancements/${DIR}/${STEM}/main\"}" > "${TMP}"
    cat "${TMP}" > "${FILE}"
    sed -i -e 's/$/\r/g' "${FILE}"
    ## detect function
    FUNC1=${GAME_DIR}/${DIR}/${STEM}/main.mcfunction
    FUNC2=${GAME_DIR}/${DIR}/${STEM}/branch.mcfunction
    FUNC3=${GAME_DIR}/${DIR}/${STEM}/individual.mcfunction
    ## make file - detect
    filecomment "${FUNC1}"
    cat << EOF >> "${FUNC1}"
## Detect advancement
execute as @s[predicate=mad:player/alive,scores={${ADV_OBJECTIVE}=0}] run function mad:system/game/advancements/${DIR}/${STEM}/branch
EOF
    sed -i -e 's/$/\r/g' "${FUNC1}"
    ## make file - branch
    filecomment "${FUNC2}"
    cat << EOF >> "${FUNC2}"
## Branch team
execute if predicate mad:gamerules/match_mode/individual as @s run function mad:system/game/advancements/${DIR}/${STEM}/individual
execute if predicate mad:gamerules/match_mode/team if score #mad_team_a ${ADV_OBJECTIVE} matches 0 as @s[predicate=mad:player/team/a] run function mad:system/game/advancements/${DIR}/${STEM}/team/a
execute if predicate mad:gamerules/match_mode/team if score #mad_team_b ${ADV_OBJECTIVE} matches 0 as @s[predicate=mad:player/team/b] run function mad:system/game/advancements/${DIR}/${STEM}/team/b
execute if predicate mad:gamerules/match_mode/team if score #mad_team_c ${ADV_OBJECTIVE} matches 0 as @s[predicate=mad:player/team/c] run function mad:system/game/advancements/${DIR}/${STEM}/team/c
execute if predicate mad:gamerules/match_mode/team if score #mad_team_d ${ADV_OBJECTIVE} matches 0 as @s[predicate=mad:player/team/d] run function mad:system/game/advancements/${DIR}/${STEM}/team/d
execute if predicate mad:gamerules/match_mode/team if score #mad_team_e ${ADV_OBJECTIVE} matches 0 as @s[predicate=mad:player/team/e] run function mad:system/game/advancements/${DIR}/${STEM}/team/e

## Set scoreboard
scoreboard players set @s[scores={${ADV_OBJECTIVE}=0}] ${ADV_OBJECTIVE} 1
EOF
    sed -i -e 's/$/\r/g' "${FUNC2}"
    ## make file - individual
    filecomment "${FUNC3}"
    cat << EOF >> "${FUNC3}"
## Set scoreboard
scoreboard players set @s ${ADV_OBJECTIVE} 1
scoreboard players add @s HasAdvancements 1
scoreboard players operation @s TimeLimit += #mad AddingTime
scoreboard players operation @s Second += #mad AddingTime
tellraw @s ["",{"translate":"chat.type.advancement.${FRAME}","with":[{"selector":"@s"},{"translate":"[%s]","color":"${COLOR}","with":[{"translate":"${TITLE}","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"${COLOR}","with":[{"translate":"${TITLE}"},{"translate":"${DESCRIPTION}"}]}]}}]}]}]
EOF
    sed -i -e 's/$/\r/g' "${FUNC3}"
    ## make file - team
    j=0
    for team in {A..E}; do
      text=${team_text[j]}
      FUNC4=${GAME_DIR}/${DIR}/${STEM}/team/${team,,}.mcfunction
      filecomment "${FUNC4}"
      cat << EOF >> "${FUNC4}"
## Set scoreboard
scoreboard players set @a[predicate=mad:player/team/${team,,}] ${ADV_OBJECTIVE} 1
scoreboard players add @s HasAdvancements 1
scoreboard players set #mad_team_${team,,} ${ADV_OBJECTIVE} 1
scoreboard players add #mad_team_${team,,} HasAdvancements 1
scoreboard players operation #mad_team_${team,,} TimeLimit += #mad AddingTime
scoreboard players operation #mad_team_${team,,} Second += #mad AddingTime
advancement grant @a[predicate=mad:player/team/${team,,}] only ${AD}:${DIR}/${STEM}
tellraw @a[predicate=mad:player/team/${team,,}] ["",{"translate":"chat.type.advancement.${FRAME}","with":[{${text},"bold":true},{"translate":"[%s]","color":"${COLOR}","with":[{"translate":"${TITLE}","hoverEvent":{"action":"show_text","value":[{"translate":"%s\n%s","color":"${COLOR}","with":[{"translate":"${TITLE}"},{"translate":"${DESCRIPTION}"}]}]}}]}]}]
EOF
      sed -i -e 's/$/\r/g' "${FUNC4}"
      j=$((j+1))
    done
    ## add objectives
    objectives=("${objectives[@]}" ${ADV_OBJECTIVE})
    ## remove tmp json
    jsons+=(${TMP})
    ## increment
    i=$((i+1))
  done
done

## remove jsons
for AD in "${AD_NAME[@]}"; do
  AD_DIR=${BASE_DIR}/data/${AD}/advancements/
  cd "${AD_DIR}"
  for json in ${jsons[@]}; do
    if [ -e "${json}" ]; then
      rm "${json}"
    fi
  done
done

## show adding objectives list
ADD_SCORE=${BASE_DIR}/data/mad/functions/system/begin/set_game/add_advancements_scoreboards.mcfunction
filecomment "${ADD_SCORE}"
echo "## Add scoreboards" >> "${ADD_SCORE}"
i=0
for objective in ${objectives[@]}; do
  ## add objective
  echo "scoreboard objectives add ${objective} dummy" >> "${ADD_SCORE}"
  ## increment
  i=$((i+1))
done
sed -i -e 's/$/\r/g' "${ADD_SCORE}"

## show setting objectives list
SET_SCORE=${BASE_DIR}/data/mad/functions/system/begin/set_game/set_advancements_scoreboards.mcfunction
filecomment "${SET_SCORE}"
echo "## Set scoreboards" >> "${SET_SCORE}"
i=0
for objective in ${objectives[@]}; do
  ## add objective
  cat << EOF >> "${SET_SCORE}"
scoreboard players set @a ${objective} 0
scoreboard players set #mad_team_a ${objective} 0
scoreboard players set #mad_team_b ${objective} 0
scoreboard players set #mad_team_c ${objective} 0
scoreboard players set #mad_team_d ${objective} 0
scoreboard players set #mad_team_e ${objective} 0
EOF
  ## increment
  i=$((i+1))
done
sed -i -e 's/$/\r/g' "${SET_SCORE}"

## show removing objectives list
REM_SCORE=${BASE_DIR}/data/mad/functions/system/finish/reset_game/reset_advancements_scoreboards.mcfunction
filecomment "${REM_SCORE}"
echo "## Remove scoreboards" >> "${REM_SCORE}"
i=0
for objective in ${objectives[@]}; do
  ## remove objective
  echo "scoreboard objectives remove ${objective}" >> "${REM_SCORE}"
  ## increment
  i=$((i+1))
done
sed -i -e 's/$/\r/g' "${REM_SCORE}"