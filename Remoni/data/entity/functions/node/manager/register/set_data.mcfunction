#> asset_manager:node/register/set_data
#
#
#
# @within function asset_manager:node/register/

# EntityStorage呼び出し
    function oh_my_dat:please
# EntityStorageに保存するもの
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NodeData.ID set from storage asset:node ID
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NodeData.Type set from storage asset:node Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NodeData.Amount set from storage asset:node Amount
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NodeData.Element set from storage asset:node Element
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NodeData.Relative set from storage asset:node Relative
# リセット
    tag @s remove NodeInit