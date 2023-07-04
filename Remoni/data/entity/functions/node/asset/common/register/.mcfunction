#> entity:node/asset/common/register/
#
# 登録処理
#
# @within function entity:node/asset/*/register/register

# パラメータチェック
    execute unless data storage entity:node ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ID","color":"red"}]
    execute unless data storage entity:node Type run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Type","color":"red"}]
    execute unless data storage entity:node Amount.Base run data modify storage entity:node Amount.Base set value 0.0
    execute unless data storage entity:node Element.None run data modify storage entity:node Element.None set value 0.0
    execute unless data storage entity:node Element.Fire run data modify storage entity:node Element.Fire set value 0.0
    execute unless data storage entity:node Element.Water run data modify storage entity:node Element.Water set value 0.0
    execute unless data storage entity:node Element.Wind run data modify storage entity:node Element.Wind set value 0.0
    execute unless data storage entity:node Element.Earth run data modify storage entity:node Element.Earth set value 0.0
    execute unless data storage entity:node Element.Light run data modify storage entity:node Element.Light set value 0.0
    execute unless data storage entity:node Element.Dark run data modify storage entity:node Element.Dark set value 0.0
    execute unless data storage entity:node Relative run data modify storage entity:node Relative set value []
# 形質決定
    function entity:node/asset/common/register/define_element
# 登録
    function entity:node/manager/register/
# リセット
    data remove storage entity:node ID
    data remove storage entity:node Type
    data remove storage entity:node Amount
    data remove storage entity:node Element
    data remove storage entity:node Relative