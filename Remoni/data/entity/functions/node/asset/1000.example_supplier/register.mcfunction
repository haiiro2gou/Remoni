#> entity:node/asset/1000.example_supplier/register
#
#
#
# @within function entity:node/asset/1000.example_supplier/

# ID (double)
    data modify storage entity:node ID set value 0.1
# Type (string)
    data modify storage entity:node Type set value "supply"
# Value (double)
    data modify storage entity:node Value set value 100.0
# Element (component) (optional)
    data modify storage entity:node Element set value []

# Relative (IntList) (optional)
    data modify storage entity:node Relative set value [1]

function entity:node/manager/register/