#> entity:mob/init/
#
# Mob初期化処理
#
# @within function core:tick/

# 識別用フラグ設定
    function entity:mob/init/set_uuid
# 初期化済みフラグ追加
    tag @s add AlreadyInitMob