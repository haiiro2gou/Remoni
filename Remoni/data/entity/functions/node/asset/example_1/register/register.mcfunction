#> entity:node/asset/example_1/register/register
#
#
#
# @within function entity:node/asset/example_1/register/

# ID (int)
    data modify storage entity:node ID set value 2147483647
# Type (string)
    data modify storage entity:node Type set value "supply"
# Amount (double) (optional)
    data modify storage entity:node Amount.Base set value 100.0
# Element (optional)
    # None (double)
        data modify storage entity:node Element.None set value 1.3
    # Fire (double)
        data modify storage entity:node Element.Fire set value 0.5
    # Water (double)
        #data modify storage entity:node Element.Water set value 0.0
    # Wind (double)
        #data modify storage entity:node Element.Wind set value 0.0
    # Earth (double)
        data modify storage entity:node Element.Earth set value 0.2
    # Light (double)
        #data modify storage entity:node Element,Light set value 0.0
    # Dark (double)
        #data modify storage entity:node Element.Dark set value 0.0

# Relative (IntList) (optional)
    #data modify storage entity:node Relative set value [1]

function entity:node/asset/common/register/