#> entity:node/manager/register/
#
# データ設定
#
# @within entity:node/asset/*/register
# validate
    execute unless data storage entity:node ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ID","color":"red"}]
    execute unless data storage entity:node Type run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Type","color":"red"}]
    execute unless data storage entity:node Value run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Value","color":"red"}]
    execute unless data storage entity:node Element run data modify storage entity:node Element set value []
    execute unless data storage entity:node Relative run data modify storage entity:node Relative set value []

# データ適用
    summon marker ~ ~ ~ {Tags:["Object","Node","NodeInit","Uninterferable"]}
    execute as @e[type=marker,tag=NodeInit,distance=..0.01,limit=1] run function entity:node/manager/register/set_data

# storage削除
    data remove storage entity:node ID
    data remove storage entity:node Type
    data remove storage entity:node Value
    data remove storage entity:node Element
    data remove storage entity:node Relative