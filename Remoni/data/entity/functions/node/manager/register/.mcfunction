#> asset_manager:node/register/
#
#
#
# @within function asset:node/common/register/

# ノード本体
    summon armor_stand ~ ~ ~ {Tags:["Object","Node","NodeInit","Uninterferable"],Marker:1b,Invisible:1b}
# データの適用
    execute as @e[type=armor_stand,tag=NodeInit,distance=..0.01,limit=1] run function asset_manager:node/register/set_data