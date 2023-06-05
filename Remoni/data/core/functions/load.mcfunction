#> core:load
#
# ロード処理
#
# @within tag/function minecraft:load

# リリース時のみtrue
    data modify storage global IsProduction set value false

# リリースチェック
    execute if data storage global {IsProduction:1b} unless data storage global DataVersion run function core:load_once
    execute if data storage global {IsProduction:0b} run function core:load_once

# マイグレーション
    function core:migration/
