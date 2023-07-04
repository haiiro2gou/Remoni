#> asset:node/common/register/
#
# 登録処理
#
# @within function asset:node/*/register/register

# パラメータチェック
    execute unless data storage asset:node ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ID","color":"red"}]
    execute unless data storage asset:node Type run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Type","color":"red"}]
    execute unless data storage asset:node Amount.Base run data modify storage asset:node Amount.Base set value 0.0
    execute unless data storage asset:node Element.None run data modify storage asset:node Element.None set value 0.0
    execute unless data storage asset:node Element.Fire run data modify storage asset:node Element.Fire set value 0.0
    execute unless data storage asset:node Element.Water run data modify storage asset:node Element.Water set value 0.0
    execute unless data storage asset:node Element.Wind run data modify storage asset:node Element.Wind set value 0.0
    execute unless data storage asset:node Element.Earth run data modify storage asset:node Element.Earth set value 0.0
    execute unless data storage asset:node Element.Light run data modify storage asset:node Element.Light set value 0.0
    execute unless data storage asset:node Element.Dark run data modify storage asset:node Element.Dark set value 0.0
    execute unless data storage asset:node Relative run data modify storage asset:node Relative set value []
# 形質決定
    function asset:node/common/register/define_element
# 登録
    function asset_manager:node/register/
# リセット
    data remove storage asset:node ID
    data remove storage asset:node Type
    data remove storage asset:node Amount
    data remove storage asset:node Element
    data remove storage asset:node Relative