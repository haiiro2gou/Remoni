#> core:tick/
#
# 毎tick実行する処理
#
# @within tag/function minecraft:tick

# デバッグ用TickRate操作システム
    execute if data storage global {IsProduction:0b} if score $AwaitTime Global matches -2147483648..2147483647 run function debug:tps/watch

# 現在の時間をglobalに代入する
    execute store result storage global Time int 1 run time query gametime
# プレイヤー数をGlobalオブジェクトに設定する
    execute store result score $PlayerCount Global if entity @a

# プレイヤー事前処理
    execute as @a at @s run function core:tick/player/pre

# プレイヤー処理部
    execute as @a at @s run function core:tick/player/

# tick処理後のプレイヤー処理部
    execute as @a at @s run function core:tick/player/post

# 0-0-0-0-0消失警告
    execute if entity @p[predicate=api:is_completed_player_chunk_load_waiting_time,distance=..80] unless entity 0-0-0-0-0 run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"0-0-0-0-0が参照できません。システム内で重大な問題が発生する可能性があります。"}]