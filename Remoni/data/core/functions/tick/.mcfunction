#> core:tick/
#
# 毎tick処理
#
# @within tag/function minecraft:tick

# tickrate操作
    execute if data storage global {IsProduction:0b} if score $AwaitTime Global matches -2147483648..2147483647 run function debug:tps/watch

# 時刻設定
    execute store result storage global Time int 1 run time query gametime
# プレイヤー数取得
    execute store result score $PlayerCount Global if entity @a

# Mob処理
    # データ初期化
        execute as @e[type=#lib:living,type=!player,tag=AlreadyInitMob] run function entity:mob/init/