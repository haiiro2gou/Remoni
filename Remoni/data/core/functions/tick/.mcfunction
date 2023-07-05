#> core:tick/
#
# 毎tick処理
#
# @within tag/function minecraft:tick

# Mob処理
    # データ初期化
        execute as @e[type=#lib:living,type=!player,tag=AlreadyInitMob] run function entity:mob/init/