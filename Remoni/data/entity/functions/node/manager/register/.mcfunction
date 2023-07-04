#> entity:node/manager/register/
#
#
#
# @within function entity:node/asset/common/register/

# ノード本体
    summon armor_stand ~ ~ ~ {Tags:["Object","Node","NodeInit","Uninterferable"],Marker:1b,Invisible:1b}
# データの適用
    execute as @e[type=armor_stand,tag=NodeInit,distance=..0.01,limit=1] run function entity:node/manager/register/set_data