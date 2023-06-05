#> core:handler/respawn
#
# リスポーン時に実行される
#
# @within function core:tick/player/

# 死亡時タグを削除
    tag @s remove Death
# 体力を戻すためにSTMHBackUpを戻す
    scoreboard players set @s STMHBackup 200000
