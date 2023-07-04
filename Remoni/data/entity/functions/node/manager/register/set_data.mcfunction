#> entity:node/manager/register/set_data
#
#
#
# @within function entity:node/manager/register/

# EntityStorage呼び出し
    function oh_my_dat:please
# EntityStorageに保存するもの
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NodeData.ID set from storage entity:node ID
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NodeData.Type set from storage entity:node Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NodeData.Amount set from storage entity:node Amount
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NodeData.Element set from storage entity:node Element
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NodeData.Relative set from storage entity:node Relative
# リセット
    tag @s remove NodeInit