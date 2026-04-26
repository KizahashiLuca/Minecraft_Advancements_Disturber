#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.21
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## アップグレードキット用 - 防具
#### 頭部
data modify storage mad: item.armor_upgrader.head \
  set value \
  {\
    'minecraft:air': {\
      id: 'leather_helmet',\
    },\
    'minecraft:leather_helmet': {\
      id: 'copper_helmet',\
    },\
    'minecraft:copper_helmet': {\
      id: 'golden_helmet',\
    },\
    'minecraft:golden_helmet': {\
      id: 'chainmail_helmet',\
    },\
    'minecraft:chainmail_helmet': {\
      id: 'iron_helmet',\
    },\
    'minecraft:iron_helmet': {\
      id: 'diamond_helmet',\
    },\
    'minecraft:diamond_helmet': {\
      id: 'netherite_helmet',\
    },\
    'minecraft:netherite_helmet': {\
      id: 'netherite_helmet',\
    },\
    'minecraft:turtle_helmet': {\
      id: 'turtle_helmet',\
    },\
    'minecraft:dragon_head': {\
      id: 'dragon_head',\
    },\
    'minecraft:piglin_head': {\
      id: 'piglin_head',\
    },\
    'minecraft:zombie_head': {\
      id: 'zombie_head',\
    },\
    'minecraft:player_head': {\
      id: 'player_head',\
    },\
    'minecraft:creeper_head': {\
      id: 'creeper_head',\
    },\
    'minecraft:skeleton_skull': {\
      id: 'skeleton_skull',\
    },\
    'minecraft:wither_skeleton_skull': {\
      id: 'wither_skeleton_skull',\
    },\
    'minecraft:carved_pumpkin': {\
      id: 'carved_pumpkin',\
    },\
  }
#### 胸部
data modify storage mad: item.armor_upgrader.chest \
  set value \
  {\
    'minecraft:air': {\
      id: 'leather_chestplate',\
    },\
    'minecraft:leather_chestplate': {\
      id: 'copper_chestplate',\
    },\
    'minecraft:copper_chestplate': {\
      id: 'golden_chestplate',\
    },\
    'minecraft:golden_chestplate': {\
      id: 'chainmail_chestplate',\
    },\
    'minecraft:chainmail_chestplate': {\
      id: 'iron_chestplate',\
    },\
    'minecraft:iron_chestplate': {\
      id: 'diamond_chestplate',\
    },\
    'minecraft:diamond_chestplate': {\
      id: 'netherite_chestplate',\
    },\
    'minecraft:netherite_chestplate': {\
      id: 'netherite_chestplate',\
    },\
    'minecraft:elytra': {\
      id: 'elytra',\
    },\
  }
#### 脚部
data modify storage mad: item.armor_upgrader.legs \
  set value \
  {\
    'minecraft:air': {\
      id: 'leather_leggings',\
    },\
    'minecraft:leather_leggings': {\
      id: 'copper_leggings',\
    },\
    'minecraft:copper_leggings': {\
      id: 'golden_leggings',\
    },\
    'minecraft:golden_leggings': {\
      id: 'chainmail_leggings',\
    },\
    'minecraft:chainmail_leggings': {\
      id: 'iron_leggings',\
    },\
    'minecraft:iron_leggings': {\
      id: 'diamond_leggings',\
    },\
    'minecraft:diamond_leggings': {\
      id: 'netherite_leggings',\
    },\
    'minecraft:netherite_leggings': {\
      id: 'netherite_leggings',\
    },\
  }
#### 足部
data modify storage mad: item.armor_upgrader.feet \
  set value \
  {\
    'minecraft:air': {\
      id: 'leather_boots',\
    },\
    'minecraft:leather_boots': {\
      id: 'copper_boots',\
    },\
    'minecraft:copper_boots': {\
      id: 'golden_boots',\
    },\
    'minecraft:golden_boots': {\
      id: 'chainmail_boots',\
    },\
    'minecraft:chainmail_boots': {\
      id: 'iron_boots',\
    },\
    'minecraft:iron_boots': {\
      id: 'diamond_boots',\
    },\
    'minecraft:diamond_boots': {\
      id: 'netherite_boots',\
    },\
    'minecraft:netherite_boots': {\
      id: 'netherite_boots',\
    },\
  }

## アップグレードキット用 - ツール/武器
data modify storage mad: item.tool_upgrader \
  set value \
  {\
    'minecraft:wooden_axe': {\
      id: 'stone_axe'\
    },\
    'minecraft:stone_axe': {\
      id: 'copper_axe'\
    },\
    'minecraft:copper_axe': {\
      id: 'golden_axe'\
    },\
    'minecraft:golden_axe': {\
      id: 'iron_axe'\
    },\
    'minecraft:iron_axe': {\
      id: 'diamond_axe'\
    },\
    'minecraft:diamond_axe': {\
      id: 'netherite_axe'\
    },\
    'minecraft:netherite_axe': {\
      id: 'netherite_axe'\
    },\
    'minecraft:wooden_hoe': {\
      id: 'stone_hoe'\
    },\
    'minecraft:stone_hoe': {\
      id: 'copper_hoe'\
    },\
    'minecraft:copper_hoe': {\
      id: 'golden_hoe'\
    },\
    'minecraft:golden_hoe': {\
      id: 'iron_hoe'\
    },\
    'minecraft:iron_hoe': {\
      id: 'diamond_hoe'\
    },\
    'minecraft:diamond_hoe': {\
      id: 'netherite_hoe'\
    },\
    'minecraft:netherite_hoe': {\
      id: 'netherite_hoe'\
    },\
    'minecraft:wooden_pickaxe': {\
      id: 'stone_pickaxe'\
    },\
    'minecraft:stone_pickaxe': {\
      id: 'copper_pickaxe'\
    },\
    'minecraft:copper_pickaxe': {\
      id: 'golden_pickaxe'\
    },\
    'minecraft:golden_pickaxe': {\
      id: 'iron_pickaxe'\
    },\
    'minecraft:iron_pickaxe': {\
      id: 'diamond_pickaxe'\
    },\
    'minecraft:diamond_pickaxe': {\
      id: 'netherite_pickaxe'\
    },\
    'minecraft:netherite_pickaxe': {\
      id: 'netherite_pickaxe'\
    },\
    'minecraft:wooden_shovel': {\
      id: 'stone_shovel'\
    },\
    'minecraft:stone_shovel': {\
      id: 'copper_shovel'\
    },\
    'minecraft:copper_shovel': {\
      id: 'golden_shovel'\
    },\
    'minecraft:golden_shovel': {\
      id: 'iron_shovel'\
    },\
    'minecraft:iron_shovel': {\
      id: 'diamond_shovel'\
    },\
    'minecraft:diamond_shovel': {\
      id: 'netherite_shovel'\
    },\
    'minecraft:netherite_shovel': {\
      id: 'netherite_shovel'\
    },\
    'minecraft:wooden_sword': {\
      id: 'stone_sword'\
    },\
    'minecraft:stone_sword': {\
      id: 'copper_sword'\
    },\
    'minecraft:copper_sword': {\
      id: 'golden_sword'\
    },\
    'minecraft:golden_sword': {\
      id: 'iron_sword'\
    },\
    'minecraft:iron_sword': {\
      id: 'diamond_sword'\
    },\
    'minecraft:diamond_sword': {\
      id: 'netherite_sword'\
    },\
    'minecraft:netherite_sword': {\
      id: 'netherite_sword'\
    },\
    'minecraft:wooden_spear': {\
      id: 'stone_spear'\
    },\
    'minecraft:stone_spear': {\
      id: 'copper_spear'\
    },\
    'minecraft:copper_spear': {\
      id: 'golden_spear'\
    },\
    'minecraft:golden_spear': {\
      id: 'iron_spear'\
    },\
    'minecraft:iron_spear': {\
      id: 'diamond_spear'\
    },\
    'minecraft:diamond_spear': {\
      id: 'netherite_spear'\
    },\
    'minecraft:netherite_spear': {\
      id: 'netherite_spear'\
    },\
  }
