#> bucchi:8factory/standby
#
# 工場ステージ
# 試合準備
#
# @private

# ベルトコンベア稼働
    setblock 100 66 85 minecraft:redstone_block

# 荷物召喚用エンティティ
    summon minecraft:marker 88 66 105 {Tags: ["Trap1"]}
    summon minecraft:marker 88 66 106 {Tags: ["Trap1"]}
    summon minecraft:marker 112 66 105 {Tags: ["Trap2"]}
    summon minecraft:marker 112 66 106 {Tags: ["Trap2"]}

# 金床
    summon minecraft:block_display 107.0 72 94.0 {Tags: ["Anvil"], teleport_duration: 2, block_state: {Name: "minecraft:anvil", Properties: {"facing": "south"}}}
    summon minecraft:block_display 108.0 72 94.0 {Tags: ["Anvil"], teleport_duration: 2, block_state: {Name: "minecraft:anvil", Properties: {"facing": "south"}}}
    summon minecraft:block_display 109.0 72 94.0 {Tags: ["Anvil"], teleport_duration: 2, block_state: {Name: "minecraft:anvil", Properties: {"facing": "south"}}}
    summon minecraft:block_display 110.0 72 94.0 {Tags: ["Anvil"], teleport_duration: 2, block_state: {Name: "minecraft:anvil", Properties: {"facing": "south"}}}
    summon minecraft:block_display 111.0 72 94.0 {Tags: ["Anvil"], teleport_duration: 2, block_state: {Name: "minecraft:anvil", Properties: {"facing": "south"}}}

# アーム
    # 本体
        summon minecraft:block_display 94 71 94 {Tags: ["Arm", "X", "Z"], teleport_duration: 1, block_state: {Name: "minecraft:yellow_terracotta"}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.7f, 0.5f], left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [-0.25f, -0.3f, -0.25f]}}
        summon minecraft:block_display 94 70.7 94 {Tags: ["Arm", "X", "Z", "Hang"], teleport_duration: 1, block_state: {Name: "minecraft:gray_concrete"}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.1f, 3.2f, 0.1f], left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [-0.05f, -3.2f, -0.05f]}}
        summon minecraft:block_display 94 67.3 94 {Tags: ["Arm", "X", "Z", "Grab", "Core"], teleport_duration: 1, block_state: {Name: "minecraft:netherite_block"}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.4f, 0.2f, 0.4f], left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [-0.2f, 0.0f, -0.2f]}}
        summon minecraft:block_display 94 67.3 94 {Tags: ["Arm", "X", "Z", "Grab"], teleport_duration: 1, block_state: {Name: "minecraft:netherite_block"}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.06f, 0.1f, 0.4f], left_rotation: {axis: [1.0f, 0.0f, 0.0f], angle: 0.7853981634f}, translation: [-0.03f, 0.084f, 0.129f]}, Rotation: [0.0f, 0.0f]}
        summon minecraft:block_display 94 67.3 94 {Tags: ["Arm", "X", "Z", "Grab"], teleport_duration: 1, block_state: {Name: "minecraft:netherite_block"}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.06f, 0.1f, 0.4f], left_rotation: {axis: [1.0f, 0.0f, 0.0f], angle: 0.7853981634f}, translation: [-0.03f, 0.084f, 0.129f]}, Rotation: [90.0f, 0.0f]}
        summon minecraft:block_display 94 67.3 94 {Tags: ["Arm", "X", "Z", "Grab"], teleport_duration: 1, block_state: {Name: "minecraft:netherite_block"}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.06f, 0.1f, 0.4f], left_rotation: {axis: [1.0f, 0.0f, 0.0f], angle: 0.7853981634f}, translation: [-0.03f, 0.084f, 0.129f]}, Rotation: [180.0f, 0.0f]}
        summon minecraft:block_display 94 67.3 94 {Tags: ["Arm", "X", "Z", "Grab"], teleport_duration: 1, block_state: {Name: "minecraft:netherite_block"}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.06f, 0.1f, 0.4f], left_rotation: {axis: [1.0f, 0.0f, 0.0f], angle: 0.7853981634f}, translation: [-0.03f, 0.084f, 0.129f]}, Rotation: [-90.0f, 0.0f]}
        summon minecraft:block_display 94 67.3 94 {Tags: ["Arm", "X", "Z", "Grab"], teleport_duration: 1, block_state: {Name: "minecraft:netherite_block"}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.06f, 0.1f, 0.4f], left_rotation: {axis: [1.0f, 0.0f, 0.0f], angle: 1.9634954085f}, translation: [-0.03f, -0.09f, 0.39f]}, Rotation: [0.0f, 0.0f]}
        summon minecraft:block_display 94 67.3 94 {Tags: ["Arm", "X", "Z", "Grab"], teleport_duration: 1, block_state: {Name: "minecraft:netherite_block"}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.06f, 0.1f, 0.4f], left_rotation: {axis: [1.0f, 0.0f, 0.0f], angle: 1.9634954085f}, translation: [-0.03f, -0.09f, 0.39f]}, Rotation: [90.0f, 0.0f]}
        summon minecraft:block_display 94 67.3 94 {Tags: ["Arm", "X", "Z", "Grab"], teleport_duration: 1, block_state: {Name: "minecraft:netherite_block"}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.06f, 0.1f, 0.4f], left_rotation: {axis: [1.0f, 0.0f, 0.0f], angle: 1.9634954085f}, translation: [-0.03f, -0.09f, 0.39f]}, Rotation: [180.0f, 0.0f]}
        summon minecraft:block_display 94 67.3 94 {Tags: ["Arm", "X", "Z", "Grab"], teleport_duration: 1, block_state: {Name: "minecraft:netherite_block"}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.06f, 0.1f, 0.4f], left_rotation: {axis: [1.0f, 0.0f, 0.0f], angle: 1.9634954085f}, translation: [-0.03f, -0.09f, 0.39f]}, Rotation: [-90.0f, 0.0f]}
    # 上部
        summon minecraft:block_display 94 71 92.0 {Tags: ["Arm", "X"], teleport_duration: 1, block_state: {Name: "minecraft:chain", Properties: {"axis": "z"}}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
        summon minecraft:block_display 94 71 93.0 {Tags: ["Arm", "X"], teleport_duration: 1, block_state: {Name: "minecraft:chain", Properties: {"axis": "z"}}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
        summon minecraft:block_display 94 71 94.0 {Tags: ["Arm", "X"], teleport_duration: 1, block_state: {Name: "minecraft:chain", Properties: {"axis": "z"}}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
        summon minecraft:block_display 94 71 95.0 {Tags: ["Arm", "X"], teleport_duration: 1, block_state: {Name: "minecraft:chain", Properties: {"axis": "z"}}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
        summon minecraft:block_display 94 71 96.0 {Tags: ["Arm", "X"], teleport_duration: 1, block_state: {Name: "minecraft:chain", Properties: {"axis": "z"}}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
        summon minecraft:block_display 94 71 97.0 {Tags: ["Arm", "X"], teleport_duration: 1, block_state: {Name: "minecraft:chain", Properties: {"axis": "z"}}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
        summon minecraft:block_display 92.0 71 94 {Tags: ["Arm", "Z"], teleport_duration: 1, block_state: {Name: "minecraft:chain", Properties: {"axis": "x"}}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
        summon minecraft:block_display 93.0 71 94 {Tags: ["Arm", "Z"], teleport_duration: 1, block_state: {Name: "minecraft:chain", Properties: {"axis": "x"}}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
        summon minecraft:block_display 94.0 71 94 {Tags: ["Arm", "Z"], teleport_duration: 1, block_state: {Name: "minecraft:chain", Properties: {"axis": "x"}}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
        summon minecraft:block_display 95.0 71 94 {Tags: ["Arm", "Z"], teleport_duration: 1, block_state: {Name: "minecraft:chain", Properties: {"axis": "x"}}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
        summon minecraft:block_display 96.0 71 94 {Tags: ["Arm", "Z"], teleport_duration: 1, block_state: {Name: "minecraft:chain", Properties: {"axis": "x"}}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
        summon minecraft:block_display 97.0 71 94 {Tags: ["Arm", "Z"], teleport_duration: 1, block_state: {Name: "minecraft:chain", Properties: {"axis": "x"}}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

# 切断機
    summon minecraft:block_display 93 65 111 {Tags: ["Cutter"], block_state: {Name: "minecraft:stonecutter", Properties: {"facing": "east"}}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 2.0f, 2.0f], left_rotation: {axis: [-1.0f, 0.0f, 0.0f], angle: 1.570796327f}, translation: [-0.5f, 0.0f, 1.5f]}}
    summon minecraft:block_display 94 65 111 {Tags: ["Cutter"], block_state: {Name: "minecraft:stonecutter", Properties: {"facing": "east"}}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 2.0f, 2.0f], left_rotation: {axis: [-1.0f, 0.0f, 0.0f], angle: 1.570796327f}, translation: [-0.5f, 0.0f, 1.5f]}}
    summon minecraft:block_display 95 65 111 {Tags: ["Cutter"], block_state: {Name: "minecraft:stonecutter", Properties: {"facing": "east"}}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 2.0f, 2.0f], left_rotation: {axis: [-1.0f, 0.0f, 0.0f], angle: 1.570796327f}, translation: [-0.5f, 0.0f, 1.5f]}}
    summon minecraft:block_display 96 65 111 {Tags: ["Cutter"], block_state: {Name: "minecraft:stonecutter", Properties: {"facing": "east"}}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 2.0f, 2.0f], left_rotation: {axis: [-1.0f, 0.0f, 0.0f], angle: 1.570796327f}, translation: [-0.5f, 0.0f, 1.5f]}}
    summon minecraft:block_display 97 65 111 {Tags: ["Cutter"], block_state: {Name: "minecraft:stonecutter", Properties: {"facing": "east"}}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 2.0f, 2.0f], left_rotation: {axis: [-1.0f, 0.0f, 0.0f], angle: 1.570796327f}, translation: [-0.5f, 0.0f, 1.5f]}}
    summon minecraft:block_display 103 65 111 {Tags: ["Cutter"], block_state: {Name: "minecraft:stonecutter", Properties: {"facing": "east"}}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 2.0f, 2.0f], left_rotation: {axis: [-1.0f, 0.0f, 0.0f], angle: 1.570796327f}, translation: [-0.5f, 0.0f, 1.5f]}}
    summon minecraft:block_display 104 65 111 {Tags: ["Cutter"], block_state: {Name: "minecraft:stonecutter", Properties: {"facing": "east"}}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 2.0f, 2.0f], left_rotation: {axis: [-1.0f, 0.0f, 0.0f], angle: 1.570796327f}, translation: [-0.5f, 0.0f, 1.5f]}}
    summon minecraft:block_display 105 65 111 {Tags: ["Cutter"], block_state: {Name: "minecraft:stonecutter", Properties: {"facing": "east"}}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 2.0f, 2.0f], left_rotation: {axis: [-1.0f, 0.0f, 0.0f], angle: 1.570796327f}, translation: [-0.5f, 0.0f, 1.5f]}}
    summon minecraft:block_display 106 65 111 {Tags: ["Cutter"], block_state: {Name: "minecraft:stonecutter", Properties: {"facing": "east"}}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 2.0f, 2.0f], left_rotation: {axis: [-1.0f, 0.0f, 0.0f], angle: 1.570796327f}, translation: [-0.5f, 0.0f, 1.5f]}}
    summon minecraft:block_display 107 65 111 {Tags: ["Cutter"], block_state: {Name: "minecraft:stonecutter", Properties: {"facing": "east"}}, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 2.0f, 2.0f], left_rotation: {axis: [-1.0f, 0.0f, 0.0f], angle: 1.570796327f}, translation: [-0.5f, 0.0f, 1.5f]}}


# 召喚
    # ゾンビと村人の召喚数を設定
        scoreboard players set $Standby Global 20
    # 召喚場所用マーカー
        summon minecraft:marker 118 68 98 {Tags: ["Standby", "Zombie"]}
        summon minecraft:marker 82 68 98 {Tags: ["Standby", "Villager"]}
    # 召喚開始
        function bucchi:8factory/summon