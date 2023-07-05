#> entity:node/manager/register/set_data
#
# Nodeのデータ設定
#
# @within function entity:node/manager/register/

# EntityStorage呼び出し
    function oh_my_dat:please

# データ適用
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NodeData.ID set from storage entity:node ID
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NodeData.Type set from storage entity:node Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NodeData.Value set from storage entity:node Value
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NodeData.Element set from storage entity:node Element
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NodeData.Relative set from storage entity:node Relative

# リセット
    tag @s remove NodeInit